from django.urls import path
from .views import *
from discaltest_api import views

urlpatterns = [
    path('UserProfile/', UserProfileList.as_view()),
    path('UserProfile/<pk>', UserProfileDetalles.as_view()),
    path('Entidad/', EntidadList.as_view()),
    path('Entidad/<pk>', EntidadDetalles.as_view()),
    path('Profesor/', ProfesorList.as_view()),
    path('Profesor/<pk>', ProfesorDetalles.as_view()),
    path('Alumnos/', AlumnosList.as_view()),
    path('Alumnos/<pk>', AlumnosDetalles.as_view()),
    path('Question/', QuestionList.as_view()),
    path('Question/<pk>', QuestionDetalles.as_view()),
    path('Ejercitario/', EjercitarioList.as_view()),
    path('Ejercitario/<pk>', EjercitarioDetalles.as_view()),
    path('loggin/', views.login),
]