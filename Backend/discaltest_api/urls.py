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
    path('AluProfe/', AluProfeListView.as_view()),
    path('AlumnoDelProfesor/<nro_documento>', AluprofeDetallesView.as_view()),
    path('Area/', AreaListView.as_view()),
    path('Area/<pk>', AreaDetallesView.as_view()),
    path('ResultadoTest/', ResultadoTestListView.as_view()),
    path('ResultadoTest/<id_alumno>', ResultadoTestDetallesView.as_view()),
    path('RItemListRTest/', RItemListRTestView.as_view()),
    path('ResultadoItemList/', views.ResultadoItemListView.as_view()),
    path('ResultadoItemListDetalles/<id_rTest>', ResultadoItemListDetallesView.as_view()),
    path('Resultados/<id_profesor>', VistaResultadoView.as_view()),
    path('loggin/', views.login),

]
