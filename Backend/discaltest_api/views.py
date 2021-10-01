
from rest_framework import status
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework.authtoken.models import Token
from rest_framework import generics
from django.db.models.fields import mixins
from django_filters.rest_framework import DjangoFilterBackend, filterset
#from rest_framework import filters 


from .serializers import *
#from .pagination import *

from django.http import JsonResponse
#from django.contrib.auth.models import User
from django.contrib.auth.hashers import check_password
#from django.shortcuts import redirect


from .models import *


@api_view(['POST'])
def login(request):
        
    loggin = request.POST.get('loggin')
    password = request.POST.get('password')

    try:
      user = UserProfile.object.get(loggin = loggin)
    except UserProfile.DoesNotExist:
        return Response("Usuario invalido")

    pwd_valid = check_password(password, user.password)
    if not pwd_valid:
        return Response("Contraseña no válida")

    token, _ = Token.objects.get_or_create(user) 
    return Response(token.key)


'''*********************************Clase Sis. Experto************************************************'''
class SisExperto(APIView):
  '''Aqui debemos de aplicar el indicador y dar las observaciones'''
  def post(self, request):
        try:
            serializer = EntidadSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data,
                                status=status.HTTP_201_CREATED)
            return Response(serializer.errors,
                            status=status.HTTP_400_BAD_REQUEST)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)


'''*********************************Vista UserProfile************************************************'''
class UserProfileList(APIView):
    '''Métodos que no necesitan de Parámetros'''
    def get(self, request):
        '''Busca todos los registros'''
        try:
            Lista_UserProfile = UserProfile.object.all().order_by('id')
            serializer = UserProfileSerializer(Lista_UserProfile, many=True)
            return Response(serializer.data)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def post(self, request):
        '''Inserta un nuevo registro en la DB'''
        try:
            serializer = UserProfileSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data,
                                status=status.HTTP_201_CREATED)
            return Response(serializer.errors,
                            status=status.HTTP_400_BAD_REQUEST)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

class UserProfileDetalles(APIView):
    '''Métodos que sí necesitan de Parámetros'''
    def get(self, request, pk):
        '''Busca registros por su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            userProfile = UserProfile.object.get(pk=pk)
            serializer = UserProfileSerializer(userProfile)
            return Response(serializer.data)
        except UserProfile.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def put(self, request, pk):
        '''Actualiza los datos de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            userProfile = UserProfile.object.get(pk=pk)
            serializer = UserProfileSerializer(userProfile, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except UserProfile.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    def delete(self, request, pk):
        '''Elimina un registro de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            userProfile = UserProfile.object.get(pk=pk)
            userProfile.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except UserProfile.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERRO)


'''************************************Vista Entidad**************************************************'''
class EntidadList(APIView):
    def get(self, request):
        try:
            Lista_Entidad = Entidad.objects.all().order_by('id')
            serializer = EntidadSerializer(Lista_Entidad, many=True)
            return Response(serializer.data)
        except Exception:
            return JsonResponse(
                {'mensaje': 'nderakore Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def post(self, request):
        try:
            serializer = EntidadSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data,
                                status=status.HTTP_201_CREATED)
            return Response(serializer.errors,
                            status=status.HTTP_400_BAD_REQUEST)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

class EntidadDetalles(APIView):
    '''Métodos que sí necesitan de Parámetros'''
    def get(self, request, pk):
        '''Busca registros por su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            entidad = Entidad.objects.get(pk=pk)
            serializer = EntidadSerializer(entidad)
            return Response(serializer.data)
        except Entidad.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def put(self, request, pk):
        '''Actualiza los datos de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            entidad = Entidad.objects.get(pk=pk)
            serializer = EntidadSerializer(entidad, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except Entidad.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    def delete(self, request, pk):
        '''Elimina un registro de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            entidad = Entidad.object.get(pk=pk)
            entidad.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except UserProfile.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)


'''************************************Vista Profesor*************************************************'''
class ProfesorList(APIView):
    def get(self, request):
        try:
            Lista_Profesor = Profesor.objects.all().order_by('id')
            serializer = ProfesorSerializer(Lista_Profesor, many=True)
            return Response(serializer.data)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def post(self, request):
        try:
            serializer = ProfesorSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data,
                                status=status.HTTP_201_CREATED)
            return Response(serializer.errors,
                            status=status.HTTP_400_BAD_REQUEST)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

class ProfesorDetalles(APIView):
    '''Métodos que sí necesitan de Parámetros'''
    def get(self, request, pk):
        '''Busca registros por su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            profesor = Profesor.object.get(pk=pk)
            serializer = ProfesorSerializer(profesor)
            return Response(serializer.data)
        except Profesor.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def put(self, request, pk):
        '''Actualiza los datos de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            profesor = Profesor.object.get(pk=pk)
            serializer = ProfesorSerializer(profesor, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except Profesor.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    def delete(self, request, pk):
        '''Elimina un registro de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            profesor = Profesor.object.get(pk=pk)
            profesor.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except UserProfile.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)


'''************************************Vista Alumnos**************************************************'''
class AlumnosList(APIView):
    def get(self, request):
        try:
            Lista_Alumnos = Alumnos.objects.all().order_by('id')
            serializer = AlumnosSerializer(Lista_Alumnos, many=True)
            return Response(serializer.data)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def post(self, request):
        try:
            serializer = AlumnosSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data,
                                status=status.HTTP_201_CREATED)
            return Response(serializer.errors,
                            status=status.HTTP_400_BAD_REQUEST)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

class AlumnosDetalles(APIView):
    '''Métodos que sí necesitan de Parámetros'''
    def get(self, request, pk):
        '''Busca registros por su Id'''
        try:
            if pk <= '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            alumno = Alumnos.objects.get(pk=pk)
            serializer = AlumnosSerializer(alumno)
            return Response(serializer.data)
        except Alumnos.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    def put(self, request, pk):
        '''Actualiza los datos de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            alumnos = Alumnos.objects.get(pk=pk)            
            serializer = AlumnosSerializer(alumnos, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except Alumnos.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    def delete(self, request, pk):
        '''Elimina un registro de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            alumnos = Alumnos.objects.get(pk=pk)
            alumnos.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except Alumnos.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)


'''************************************Vista Area*****************************************************'''
class AreaList(APIView):
    '''Métodos que no necesitan de Parámetros'''
    def get(self, request):
        try:
            Lista_Area = Area.objects.all().order_by("id")
            serializer = AreaSerializer(Lista_Area, many=True)
            return Response(serializer.data)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def post(self, request):
        try:
            serializer = AreaSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data,
                                status=status.HTTP_201_CREATED)
            return Response(serializer.errors,
                            status=status.HTTP_400_BAD_REQUEST)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

class AreaDetalles(APIView):
    '''Métodos que sí necesitan de Parámetros'''
    def get(self, request, pk):
        '''Busca registros por su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            area = Area.objects.get(pk=pk)
            serializer = AreaSerializer(area)
            return Response(serializer.data)
        except Area.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El área seleccionada no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def put(self, request, pk):
        '''Actualiza los datos de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            area = Area.objects.get(pk=pk)
            serializer = AreaSerializer(area, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except Area.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El área seleccionada no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)
    def delete(self, request, pk):
        '''Elimina un registro de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            area = Area.objects.get(pk=pk)
            area.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except Area.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El área seleccionada  no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)


'''**********************************Vista ResultadoTest**********************************************'''
class ResultadoTestList(APIView):
    '''Métodos que no necesitan de Parámetros'''
    def get(self, request):
        try:
            Lista_ResultadoTest = ResultadoTest.objects.all().order_by("id")
            serializer = ResultadoTestSerializer(Lista_ResultadoTest, many=True)
            return Response(serializer.data)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def post(self, request):
        try:
            serializer = ResultadoTestSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data,
                                status=status.HTTP_201_CREATED)
            return Response(serializer.errors,
                            status=status.HTTP_400_BAD_REQUEST)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

class ResultadoTestDetalles(APIView):
    '''Métodos que sí necesitan de Parámetros'''
    def get(self, request, pk):
        '''Busca registros por su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            resultado_test = ResultadoTest.objects.get(pk=pk)
            serializer = ResultadoTestSerializer(resultado_test)
            return Response(serializer.data)
        except ResultadoTest.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El área seleccionada no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def put(self, request, pk):
        '''Actualiza los datos de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            resultado_test = ResultadoTest.objects.get(pk=pk)
            serializer = ResultadoTestSerializer(resultado_test, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except Area.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El resultado del test no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def delete(self, request, pk):
        '''Elimina un registro de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            resultado_test = ResultadoTest.objects.get(pk=pk)
            resultado_test.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except ResultadoTest.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El resultado del test no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)


'''**********************************Vista ResultadoItem**********************************************'''
class RItemListAll(APIView):
    '''Métodos que no necesitan de Parámetros'''
    def get(self, request):
        try:
            Lista_ResultadoItem = ResultadoItem.objects.all().order_by("id_resultadoTest")            
            serializer = ResultadoItemSerializer(Lista_ResultadoItem, many=True)
            return Response(serializer.data)
        except Exception:
            return Response(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

class RItemListOne(generics.ListAPIView):
    serializer_class = ResultadoItemSerializer

    def get_queryset(self):
        queryset = ResultadoItem.objects.all()
        resultadoTest = self.request.query_params.get('id_resultadoTest', None)
        if resultadoTest is not None:
            queryset = queryset.filter(id_resultadoTest=resultadoTest)
        return queryset

class RItemPost(generics.ListCreateAPIView):
    model = ResultadoItem
    serializer_class = ResultadoItemSerializer

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data, many=True)
        if serializer.is_valid():
            serializer.save()
            headers = self.get_success_headers(serializer.data)
            return Response(serializer.data, status=status.HTTP_201_CREATED,
                            headers=headers)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class RItemPut(generics.ListCreateAPIView):
    model = ResultadoItem
    serializer_class = ResultadoItemSerializer

    def get_queryset(self):
        queryset = ResultadoItem.objects.all()
        resultadoTest = self.request.query_params.get('id_resultadoTest', None)
        if resultadoTest is not None:
            queryset = queryset.filter(id_resultadoTest=resultadoTest)
        return queryset

    def update(self):
        serializer = self.request.query_params.get('id_resultadoTest', None)
        #self.get_queryset() #self.get_serializer(data=request.data, many=True)
        print('Lista a Actualizar: ', serializer)
        if serializer.is_valid():
            serializer.save()
            headers = self.get_success_headers(serializer.data)
            return Response(serializer.data, status=status.HTTP_201_CREATED,
                            headers=headers)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)




class RItemListDelete(generics.ListAPIView):
    serializer_class = ResultadoItemSerializer

    def get_queryset(self):
        queryset = ResultadoItem.objects.all()
        resultadoTest = self.request.query_params.get('id_resultadoTest', None)
        if resultadoTest is not None:
            queryset = queryset.filter(id_resultadoTest=resultadoTest)
        return queryset    


    def Delete(self):
        serializer = self.get_queryset() #self.get_serializer(data=request.data, many=True)
        print('Lista a Actualizar: ', serializer)
        try:
            if serializer.is_valid():
               serializer.delete()
               return Response(status=status.HTTP_204_NO_CONTENT)
        except ResultadoItem.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El resultado del test no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)          

# class ResultadoItemDetalles(APIView):
#     '''Métodos que sí necesitan de Parámetros'''

#     def put(self, request, id_resultadoTest):
#         '''Actualiza los datos de acuerdo a su Id'''
#         try:
#             if id_resultadoTest == '0':
#                 return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
#                                     status=status.HTTP_400_BAD_REQUEST)

#             print('id:', id_resultadoTest)                        
#             resultado_item = ResultadoItem.objects.request.query_params.get('id_resultadoTest', None)
            
#                 #ResultadoItem.objects.get(id_resultadoTest=id_resultadoTest)
#             serializer = rITemSerializer(resultado_item, data=request.data)
#             print('Lista: ', resultado_item)
#             print('\n')                        
#             if serializer.is_valid():
#                 serializer.save()
#                 return Response(serializer.data)
#             return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
#         except Area.DoesNotExist:
#             return JsonResponse(
#                     {'mensaje':'El resultado del test no existe en la base de datos'},
#                      status=status.HTTP_404_NOT_FOUND)
#         except Exception:
#             return JsonResponse(
#                 {'mensaje': 'Ocurrio en la lectura del servidor'},
#                 status=status.HTTP_500_INTERNAL_SERVER_ERROR)

#     def delete(self, request, pk):
#         '''Elimina un registro de acuerdo a su Id'''
#         try:
#             if pk == '0':
#                 return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
#                                     status=status.HTTP_400_BAD_REQUEST)
#             resultado_item = ResultadoItem.objects.get(pk=pk)
#             resultado_item.delete()
#             return Response(status=status.HTTP_204_NO_CONTENT)
#         except ResultadoItem.DoesNotExist:
#             return JsonResponse(
#                     {'mensaje':'El resultado del test no existe en la base de datos'},
#                      status=status.HTTP_404_NOT_FOUND)
#         except Exception:
#             return JsonResponse(
#                 {'mensaje': 'Ocurrio un error en la lectura del servidor'},
#                 status=status.HTTP_500_INTERNAL_SERVER_ERROR)

