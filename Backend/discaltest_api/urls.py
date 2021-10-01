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
    path('Area/', AreaList.as_view()),
    path('Area/<pk>', AreaDetalles.as_view()),
    path('ResultadoTest/', ResultadoTestList.as_view()),
    path('ResultadoTest/<pk>', ResultadoTestDetalles.as_view()),    
    path('RItemListAll/', RItemListAll.as_view()), 
    path('RItemListOne/', views.RItemListOne.as_view()),
    path('RItemPost/', views.RItemPost.as_view()),
    path('RItemPut/', views.RItemPut.as_view()),
    #path('ResultadoItemDetalles/<id_resultadoTest>', views.ResultadoItemDetalles.as_view()),
    path('RItemDelete/', views.RItemListDelete.as_view()),
    path('loggin/', views.login),

    
]