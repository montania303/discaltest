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
        fields = ["id", "id_usuario", 
                  "tipo_entidad", "nro_documento", "nombre", "apellido", "telefono", "direccion"]

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

class QuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Question
        fields = ["id", "descripcion"]        

class AluQuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = AluQuestion
        fields = ["id", "id_alumno", "id_question"]        

class ProfeQuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = ProfesorQuestion
        fields = ["id", "id_profesor", "id_question"]       

class EjercitarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ejercitario
        fields = ["id", "descripcion", "area"] 

class ItemQuestionSerializer(serializers.ModelSerializer):
    class Meta:
        model = ItemQuestion
        fields = ["id", "id_question", "id_ejercitario", "puntuacion"]                   