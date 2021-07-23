from django.db import models
from django.contrib.auth.models import AbstractBaseUser
from django.contrib.auth.models import PermissionsMixin
from django.contrib.auth.models import BaseUserManager
from django.db.models.fields import CharField


tipo_entidad_choices = [
    ('Ad', 'Administrador'),
    ('Al', 'Alumno'),
    ('Pr', 'Profesor')
]


class UserProfileManager(BaseUserManager):
    '''Manager para Perfil de Usuario'''

    def create_user(self, loggin, password=None):
        '''Crear un Usuario'''
        if not loggin:
            raise ValueError('Es necesario que el usuario tenga un nombre de usuario')

        user = self.model(loggin=loggin)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, loggin, password):
        user = self.create_user(loggin, password)
        user.is_superuser = True
        user.save(using=self._db)
        return user


class UserProfile(AbstractBaseUser, PermissionsMixin):
    """Modelo  de Perfil de usuario para el sistema"""

    id = models.AutoField(primary_key=True, unique=True) 
    loggin = models.CharField(max_length=255)
    is_active = models.BooleanField(default=True)

    object = UserProfileManager()
    USERNAME_FIELD = 'id'
    REQUIRED_FIELDS = ['loggin']

    def __Str__(self):
        return self.loggin


class Entidad(models.Model):
    """Modelo Generico para Entidad """
    
    id = models.AutoField(primary_key=True, unique=True) 
    id_usuario = models.ForeignKey(UserProfile, on_delete=models.CASCADE)
    tipo_entidad = models.CharField(choices=tipo_entidad_choices, null=False, max_length=2)
    nro_documento = models.CharField(max_length=60, null=False)
    nombre = models.CharField(max_length=60, null=False)
    apellido = models.CharField(max_length=60, null=False)    
    telefono = models.CharField(max_length=20)
    direccion = models.CharField(max_length=20)

    def __Str__(self):
        return self.nombre

class Profesor(models.Model):
    """Modelo para Entidad Profesor"""
    id = models.AutoField (primary_key = True, unique=True) 
    id_entidad = models.ForeignKey(Entidad, on_delete=models.CASCADE)
    curso =  models.IntegerField(default=3)

    def __Str__(self):
        return self.curso


class Alumnos(models.Model):
    """Modelo para Entidad alumnos"""
    id = models.AutoField (primary_key = True, unique=True) 
    id_entidad = models.ForeignKey(Entidad, on_delete=models.CASCADE)

    def __Str__(self):
        return self.id


class AluProfe(models.Model):
    """Modelo para Entidad AlumnoProfesor"""
    id = models.AutoField (primary_key = True, unique=True) 
    id_alumno = models.ForeignKey(Alumnos, on_delete=models.CASCADE)
    id_profesor = models.ForeignKey(Profesor, on_delete=models.CASCADE)

    def __Str__(self):
        return self.descripcion


class Question(models.Model):
    """Modelo para Entidad Question"""
    id = models.AutoField (primary_key = True, unique=True) 
    descripcion = models.CharField(max_length=120, null=False)

    def __Str__(self):
        return self.descripcion


class AluQuestion(models.Model):
    """Modelo para Entidad AlumnoQuestion"""
    id = models.AutoField (primary_key = True, unique=True) 
    id_alumno = models.ForeignKey(Alumnos, on_delete=models.CASCADE)
    id_question = models.ForeignKey(Question, on_delete=models.CASCADE)

    def __Str__(self):
        return self.descripcion

class ProfesorQuestion(models.Model):
    """Modelo para Entidad ProfesorQuestion"""
    id = models.AutoField (primary_key = True, unique=True) 
    id_profesor = models.ForeignKey(Profesor, on_delete=models.CASCADE)
    id_question = models.ForeignKey(Question, on_delete=models.CASCADE)

    def __Str__(self):
        return self.descripcion


class Ejercitario(models.Model):
    """Modelo para Entidad Ejercitario"""
    id = models.AutoField (primary_key = True, unique=True) 
    descripcion = models.CharField(max_length=120, null=False)
    area = models.CharField(max_length=50, null=False)

    def __Str__(self):
        return self.descripcion


class ItemQuestion(models.Model):
    """Modelo para Entidad ItemQuestion"""
    id = models.AutoField (primary_key=True, unique=True) 
    id_question = models.ForeignKey(Question, on_delete=models.CASCADE) 
    id_ejercitario = models.ForeignKey(Ejercitario, on_delete=models.CASCADE) 
    puntuacion = models.FloatField(max_length=5, null=False)

    def __Str__(self):
        return self.descripcion        
