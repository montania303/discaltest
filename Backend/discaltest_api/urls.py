from django.urls import path
from .views import *
from discaltest_api import views

urlpatterns = [
    path('UserProfile/', UserProfileListView.as_view()),
    path('UserProfile/<pk>', UserProfileDetallesView.as_view()),
    path('Entidad/', EntidadListView.as_view()),
    path('Entidad/<pk>', EntidadDetallesView.as_view()),
    path('Profesor/', ProfesorListView.as_view()),
    path('Profesor/<pk>', ProfesorDetallesView.as_view()),
    path('Alumnos/', AlumnosListView.as_view()),
    path('Alumnos/<pk>', AlumnosDetallesView.as_view()),
    path('Area/', AreaListView.as_view()),
    path('Area/<pk>', AreaDetallesView.as_view()),
    path('ResultadoTest/', ResultadoTestListView.as_view()),
    path('ResultadoTest/<pk>', ResultadoTestDetallesView.as_view()),
    path('ResultadoTestAlumno/', views.ResultadoTestAlumnoView.as_view()),
    path('RItemListRTest/', RItemListRTestView.as_view()),
    path('ResultadoItemList/', views.ResultadoItemListView.as_view()),
    path('ResultadoItemListDetalles/<id_resultadoTest>', views.ResultadoItemListDetallesView.as_view()),
    path('loggin/', views.login),
    
]