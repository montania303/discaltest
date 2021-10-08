from rest_framework import serializers
from rest_framework.authtoken.models import Token

from django.contrib.auth.hashers import check_password

from .models import *

class UserLoginSerializer(serializers.Serializer):

    loggin = serializers.CharField()
    password = serializers.CharField(min_length=6, max_length=64)

    def validate(self, data):
        try:
          user = UserProfile.object.get(loggin=data['loggin'])
        except UserProfile.DoesNotExist:
          raise serializers.ValidationError('Usuario inválido')
        pwd_valid = check_password(data['password'], user.password)
        if not pwd_valid:
            raise serializers.ValidationError("Contraseña no válida")

        self.context['user'] = user
        return data

    def create(self, data):
        """Generar o recuperar token."""
        token, created = Token.objects.get_or_create(user=self.context['user'])
        return self.context['user'], token.key

class UserProfileSerializer(serializers.ModelSerializer):
    class Meta:
        model = UserProfile
        fields = ["id", "loggin", "is_active", "password"]
    
    def create(self, validated_data):
        userProfile =  UserProfile(**validated_data)
        userProfile.set_password(validated_data['password'])
        userProfile.save()
        return userProfile

    def update(self, instance, validated_data):
        updated_userProfile =  super().update(instance, validated_data)
        updated_userProfile.set_password(validated_data['password'])
        updated_userProfile.save()
        return updated_userProfile

class EntidadSerializer(serializers.ModelSerializer):
    class Meta:
        model = Entidad
        fields = ["id", "tipo_entidad", "nombre", "apellido", "telefono", "direccion", "id_usuario", "nro_documento"]

class ProfesorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Profesor
        fields = ["id", "id_entidad", "curso"]

class AlumnosSerializer(serializers.ModelSerializer):
    class Meta:
        model = Alumnos
        fields = ["id", "id_entidad"]

class AluProfeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Alumnos
        fields = ["id", "id_alumno", "id_profesor"]

class ResultadoTestSerializer(serializers.ModelSerializer):
    class Meta:
        model = ResultadoTest
        fields = ["id", "id_alumno", "id_profesor", "indicador", "observacion"]      

class AreaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Area
        fields = ["id", "descripcion", "pEsperado"]   

class ResultadoItemSerializer(serializers.ModelSerializer):
    class Meta:
        model = ResultadoItem
        fields = ["id_resultadoTest", "id", "id_area", "pObtenido", "indicador", "observacion"]      

class RItemSerializer(serializers.ListSerializer):
    id_area = AreaSerializer()

    class Meta:
        model = ResultadoItem
        fields = '__all__'

#Abm Métodos Serializer
class RItemUpdateListSerializer(serializers.ListSerializer):
    """ Recibe dos listas para comparar los datos """
    class Meta:
        model = ResultadoItem
        fields = '__all__'


    def update(self, instance, validated_data):      
        mapping = {ritem.id_area: ritem for ritem in instance}
        #resultadoTest_mapping = {item['id_resultadoTest']: item for item in validated_data}
        ritemArea_mapping = {item['id_area']: item for item in validated_data}

        #area_mapping = Area.objects.all().order_by("id")


        ret = []
        #for _id, data in resultadoTest_mapping.items():
        for _id, data in ritemArea_mapping.items():
           ritem = mapping.get(_id, None)    
           if not ritem is None:                

              ret.append(self.child.update(ritem, data)) 

        return ret

class RItemCreateListSerializer(serializers.ListSerializer):
    """ Recibe dos listas para comparar los datos """

    class Meta:
        model = ResultadoItem
        fields = '__all__'

    def update(self, instance, validated_data):        

        mapping = {ritem.id_area: ritem for ritem in instance}
        resultadoTest_mapping = {item['id_resultadoTest']: item for item in validated_data}
        #area_mapping = {item['id_area']: item for item in validated_data}
        
        ret = []
        for _id, data in resultadoTest_mapping.items():
            #for _id, data in area_mapping.items():
            ritem = mapping.get(_id, None)    
            if ritem is None:                 
               ret.append(self.child.create(data))
            else:
               print('El registro ya existe en la base de datos')     

        return ret        

class RItemDeleteListSerializer(serializers.ListSerializer):
    """ Recibe dos listas para comparar los datos """

    class Meta:
        model = ResultadoItem
        fields = '__all__'        

    def update(self, instance, validated_data):        

        mapping = {ritem.id_area: ritem for ritem in instance}
        data_mapping = {item['id_area']: item for item in validated_data}
        
        # Realizamos las creaciones si no se encuentran en data_mapping,
        # y las actualizaciones si se encuentran keys en data_mapping
        ret = []
        # Realizamos las eliminaciones, si no se encuentra en data_mapping
        for _id, data in mapping.items():
            if _id in data_mapping:
                data.delete()

        return ret              


#ABM Class Serialializer
class AddRItemListSerializer(serializers.ModelSerializer):
    # id_area = serializers.IntegerField()
    # id_resultadoTest = serializers.IntegerField()

    class Meta:
        #list_serializer_class , nos sirve para trabajar con varios objetos
        #en forma de listas, util para Insert, Update, Delete
        list_serializer_class = RItemCreateListSerializer  
        model = ResultadoItem
        fields = '__all__'  

class UpdateRItemListSerializer(serializers.ModelSerializer):
    # id_area = serializers.IntegerField()
    # id_resultadoTest = serializers.IntegerField()

    class Meta:
        #list_serializer_class , nos sirve para trabajar con varios objetos
        #en forma de listas, util para Insert, Update, Delete
        list_serializer_class = RItemUpdateListSerializer  
        model = ResultadoItem
        fields = '__all__'         

class DeleteRItemListSerializer(serializers.ModelSerializer):

    class Meta:
        list_serializer_class = RItemDeleteListSerializer  
        model = ResultadoItem
        fields = '__all__'               
