from rest_framework.views import APIView
from .serializers import *
from rest_framework.response import Response
from rest_framework import status
from django.http import JsonResponse

'''******************************Vista UserProfile******************************************************'''
'''****************************Métodos sin Parámetros***************************************************'''
class UserProfileList(APIView):
    '''Métodos que no necesitan de Parámetros'''
    def get(self, resquest):
        '''Busca todos los registros'''
        try:
            Lista_UserProfile = UserProfile.object.all()
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
'''****************************Métodos con Parámetros***************************************************'''
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
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

'''************************************Vista Entidad***************************************************'''
'''*******************************Métodos sin Parámetros***********************************************'''
class EntidadList(APIView):
    def get(self, resquest):
        try:
            Lista_Entidad = Entidad.objects.all()
            serializer = EntidadSerializer(Lista_Entidad, many=True)
            return Response(serializer.data)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
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
'''*******************************Métodos con Parámetros***********************************************'''
class EntidadDetalles(APIView):
    '''Métodos que sí necesitan de Parámetros'''
    def get(self, request, pk):
        '''Busca registros por su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            entidad = Entidad.object.get(pk=pk)
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
            entidad = Entidad.object.get(pk=pk)
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


'''************************************Vista Profesor**************************************************'''
'''*******************************Métodos sin Parámetros***********************************************'''
class ProfesorList(APIView):
    def get(self, resquest):
        try:
            Lista_Profesor = Profesor.objects.all()
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
'''*******************************Métodos con Parámetros***********************************************'''
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
'''*******************************Métodos sin Parámetros***********************************************'''
class AlumnosList(APIView):
    def get(self, resquest):
        try:
            Lista_ALumnos = Alumnos.objects.all()
            serializer = AlumnosSerializer(Lista_ALumnos, many=True)
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
'''*******************************Métodos con Parámetros***********************************************'''
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
            alumnos = Alumnos.object.get(pk=pk)
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


'''************************************Vista Question**************************************************'''
'''*******************************Métodos sin Parámetros***********************************************'''
class QuestionList(APIView):
    def get(self, resquest):
        try:
            Lista_Question = Question.objects.all()
            serializer = QuestionSerializer(Lista_Question, many=True)
            return Response(serializer.data)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def post(self, request):
        try:
            serializer = QuestionSerializer(data=request.data)
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
'''*******************************Métodos con Parámetros***********************************************'''
class QuestionDetalles(APIView):
    '''Métodos que sí necesitan de Parámetros'''
    def get(self, request, pk):
        '''Busca registros por su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            question = Question.object.get(pk=pk)
            serializer = QuestionSerializer(question)
            return Response(serializer.data)
        except Question.DoesNotExist:
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
            question = Question.object.get(pk=pk)
            serializer = QuestionSerializer(question, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except Question.DoesNotExist:
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
            question = Question.object.get(pk=pk)
            question.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except Question.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)


'''************************************Vista Ejercitario***********************************************'''
'''*******************************Métodos sin Parámetros***********************************************'''
class EjercitarioList(APIView):
    def get(self, resquest):
        try:
            Lista_Ejercitario = Ejercitario.objects.all()
            serializer = EjercitarioSerializer(Lista_Ejercitario, many=True)
            return Response(serializer.data)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def post(self, request):
        try:
            serializer = EjercitarioSerializer(data=request.data)
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
'''*********************************Métodos con Parámetros*************************************************'''  
class EjercitarioDetalles(APIView):
    '''Métodos que sí necesitan de Parámetros'''
    def get(self, request, pk):
        '''Busca registros por su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            ejercitario = Ejercitario.objects.get(pk=pk)
            serializer = EjercitarioSerializer(ejercitario)
            return Response(serializer.data)
        except Ejercitario.DoesNotExist:
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
            ejercitario = Ejercitario.objects.get(pk=pk)
            serializer = EjercitarioSerializer(ejercitario, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except Ejercitario.DoesNotExist:
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
            ejercitario = Ejercitario.objects.get(pk=pk)
            ejercitario.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except Ejercitario.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El usuario Seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)              
