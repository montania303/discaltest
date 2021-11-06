from django.db import models
from django.contrib.auth.models import AbstractBaseUser
from django.contrib.auth.models import PermissionsMixin
from django.contrib.auth.models import BaseUserManager

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
    id_usuario = models.ForeignKey(UserProfile, on_delete=models.CASCADE, null=True)
    tipo_entidad = models.CharField(choices=tipo_entidad_choices, null=False, max_length=2)
    nro_documento = models.CharField(max_length=60, null=False, unique=True)
    nombre = models.CharField(max_length=60, null=False)
    apellido = models.CharField(max_length=60, null=False)    
    telefono = models.CharField(max_length=20)
    direccion = models.CharField(max_length=20)
   
   
    def __Str__(self):
        return self.id

class Profesor(models.Model):
    """Modelo para Entidad Profesor"""
    id = models.AutoField (primary_key = True, unique=True) 
    id_entidad = models.ForeignKey(Entidad, on_delete=models.CASCADE, null=False, blank=False)
    curso =  models.IntegerField(default=3)

    def __Str__(self):
        return self.curso

class Alumnos(models.Model):
    """Modelo para Entidad alumnos"""
    id = models.AutoField (primary_key = True, unique=True) 
    id_entidad = models.ForeignKey(Entidad, on_delete=models.CASCADE, null=False, blank=False)

    def __Str__(self):
        return self.id

class AluProfe(models.Model):
    """Modelo para Entidad AlumnoProfesor"""
    id = models.AutoField (primary_key = True, unique=True) 
    id_alumno = models.ForeignKey(Alumnos, on_delete=models.CASCADE, null=False, blank=False)
    id_profesor = models.ForeignKey(Profesor, on_delete=models.CASCADE, null=False, blank=False)

    def __Str__(self):
        return self.descripcion

class Area(models.Model):
    """Modelo para Entidad Area"""
    id = models.AutoField (primary_key = True, unique=True) 
    descripcion = models.CharField(max_length=120, null=False)
    pEsperado =  models.IntegerField(default=3)

    def __Str__(self):
        return self.descripcion

class ResultadoTest(models.Model):
    """Modelo para Entidad ResultadoTest"""
    id            = models.AutoField (primary_key = True, unique=True) 
    id_alumno     = models.ForeignKey(Alumnos, on_delete=models.CASCADE, null=False, blank=False)
    id_profesor   = models.ForeignKey(Profesor, on_delete=models.CASCADE, null=False, blank=False)
    indicador     = models.CharField(max_length=1, null=True)
    observacion   = models.CharField(max_length=250, null=True)

    def __Str__(self):
        return self.observacion
    
class ResultadoItem(models.Model):
    """"Modelo para Entidad ResultadoItems"""
    id               = models.AutoField(primary_key=True, unique=True)
    id_resultadoTest = models.ForeignKey(ResultadoTest, on_delete=models.CASCADE, null=False, blank=False)
    id_area          = models.ForeignKey(Area, on_delete=models.CASCADE, null=False,  blank=False)
    pObtenido        = models.IntegerField(null=False)
    indicador        = models.CharField(null=True, max_length=1)
    observacion      = models.CharField(null=True, max_length=500)
    
    def __Str__(self):
       return self.observacion       

class Resultados(models.Model):
    id_resultadotest = models.IntegerField()
    id_alumno        = models.IntegerField()
    nombre_alumno    = models.CharField(max_length=120)
    nro_documento    = models.CharField(max_length=20)
    c_id             = models.IntegerField()
    c_pobtenido      = models.IntegerField()
    c_pesperado      = models.IntegerField()
    c_indicador      = models.CharField(max_length=1) 
    c_observacion    = models.CharField(max_length=500)
    n_id             = models.IntegerField()
    n_pobtenido      = models.IntegerField()
    n_pesperado      = models.IntegerField()
    n_indicador      = models.CharField(max_length=1) 
    n_observacion    = models.CharField(max_length=500)
    sn_id            = models.IntegerField()
    sn_pobtenido     = models.IntegerField()
    sn_pesperado     = models.IntegerField()
    sn_indicador     = models.CharField(max_length=1) 
    sn_observacion   = models.CharField(max_length=500)    
    opl_id           = models.IntegerField()
    opl_pobtenido    = models.IntegerField()
    opl_pesperado    = models.IntegerField()
    opl_indicador    = models.CharField(max_length=1) 
    opl_observacion  = models.CharField(max_length=500)
    op_id            = models.IntegerField()
    op_pobtenido     = models.IntegerField()
    op_pesperado     = models.IntegerField()
    op_indicador     = models.CharField(max_length=1) 
    op_observacion   = models.CharField(max_length=500)
    et_id            = models.IntegerField()
    et_pobtenido     = models.IntegerField()
    et_pesperado     = models.IntegerField()
    et_indicador     = models.CharField(max_length=1) 
    et_observacion   = models.CharField(max_length=500)    
    indicador        = models.CharField(max_length=1) 
    observacion      = models.CharField(max_length=500) 

    class Meta:
      managed = False
      db_table = 'v_resultados'    