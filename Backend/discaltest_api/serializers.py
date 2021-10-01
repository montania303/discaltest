#from django.contrib.auth.models import PermissionsMixin
from rest_framework import serializers
from .models import *

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
        fields = ["id_resultadoTest","id", "id_area", "pObtenido", "indicador", "observacion"]      


class RItemListSerializer(serializers.ListSerializer):
    def update(self, instance, validated_data):
        # Maps for id->instance and id->data item.
        rItem_mapping = {ResultadoItem.id: ResultadoItem for ResultadoItem in instance}
        area_mapping = {Area['id']: Area for Area in validated_data}

        # Perform creations and updates.
        ret = []
        for ResultadoItem_id, data in area_mapping.items():
            resultadoItem = rItem_mapping.get(ResultadoItem_id, None)
            if resultadoItem is None:
                ret.append(self.child.create(data))
            else:
                ret.append(self.child.update(resultadoItem, data))

        # Perform deletions.
        for ResultadoItem_id, ResultadoItem in rItem_mapping.items():
            if ResultadoItem_id not in area_mapping:
                ResultadoItem.delete()

        return ret

class rITemSerializer(serializers.Serializer):
    # We need to identify elements in the list using their primary key,
    # so use a writable field here, rather than the default which would be read-only.
    #id = serializers.IntegerField()

    class Meta:
        list_serializer_class = RItemListSerializer         


        