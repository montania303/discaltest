from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework import generics
from rest_framework import status

from django.http import JsonResponse

from .serializers import *
from .models import *

'''*********************************Vista UserLoggin************************************************'''
@api_view(['POST'])
def login(request):
    """User Profile Log."""
    
    serializer = UserLoginSerializer(data=request.data)
    serializer.is_valid(raise_exception=True)
    user, token = serializer.save()
    data = {
        'user': UserProfileSerializer(user).data,
        'access_token': token
    }
    return Response(data, status=status.HTTP_201_CREATED)

'''*********************************Vista UserProfile************************************************'''
class UserProfileListView(APIView):
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

class UserProfileDetallesView(APIView):
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
class EntidadListView(APIView):
    def get(self, request):
        try:
            Lista_Entidad = Entidad.objects.all().order_by('id') #.filter(tipo_entidad_choices='Al')
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

class EntidadDetallesView(APIView):
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
class ProfesorListView(APIView):
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

class ProfesorDetallesView(APIView):
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
class AlumnosListView(APIView):
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

class AlumnosDetallesView(APIView):
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

'''******************************Vista Alumnos de Profesores*******************************************'''
class AluProfeListView(APIView):
    def get(self, request):
        try:
            Lista_AluProfe = AluProfe.objects.all().order_by('id')
            serializer = AluProfeSerializer(Lista_AluProfe, many=True)
            return Response(serializer.data)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def post(self, request):
        try:
            serializer = AluProfeSerializer(data=request.data)
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

class AluprofeDetallesView(APIView):
    '''Métodos que sí necesitan de Parámetros'''
    def get(self, request, nro_documento):
        '''Busca registros por su Nro documento'''
        try:
          alumno = AluProfe.objects.get(id_alumno__id_entidad__nro_documento=nro_documento)
          #resultado_test = ResultadoTest.objects.filter(id_alumno=alumno.id_alumno.id) ## request.data['id_alumno'])  
          #print('Resultado', resultado_test)
          #if resultado_test is 'Null':                    
          #alu = AluProfe.objects.get(id_alumno__id_entidad__nro_documento=nro_documento)
          serializer = AluProfeSerializer(alu)
          return Response(serializer.data)   
        # else:
        #    return JsonResponse({'mensaje': 'Este alumno ya realizó el test'},
        #                         status=status.HTTP_400_BAD_REQUEST) 
           
            
        except AluProfe.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El alumno no esta registrado en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def put(self, request, pk):
        '''Actualiza los datos de acuerdo a su Id'''
        try:
            if pk == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            aluprofe = AluProfe.objects.get(pk=pk)            
            serializer = AluProfeSerializer(aluprofe, data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        except AluProfe.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El registro seleccionado no existe en la base de datos'},
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
            aluprofe = AluProfe.objects.get(pk=pk)
            aluprofe.delete()
            return Response(status=status.HTTP_204_NO_CONTENT)
        except AluProfe.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El registro seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)                

'''************************************Vista Area*****************************************************'''
class AreaListView(APIView):
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

class AreaDetallesView(APIView):
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


'''**********************************Vista ResultadoTest++**********************************************'''
class ResultadoTestListView(APIView):
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
          resultado_test = ResultadoTest.objects.get(id_alumno=request.data['id_alumno'])  
          if resultado_test is None:
            serializer = RTestSerializer(data=request.data)
            if serializer.is_valid():
               serializer.save()
               return Response(serializer.data,
                               status=status.HTTP_201_CREATED)
            return Response(serializer.errors,
                             status=status.HTTP_400_BAD_REQUEST)
          else:
            return JsonResponse({'mensaje': 'Este alumno ya realizó el test'},
                                    status=status.HTTP_400_BAD_REQUEST)   
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)


class ResultadoTestDetallesView(APIView):
    '''Métodos que sí necesitan de Parámetros'''
    def get(self, request, id_alumno):
        '''Busca registros por el Id_Alumno'''
        try:
            if id_alumno == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            resultado_test = ResultadoTest.objects.get(id_alumno=id_alumno)
            serializer = ResultadoTestSerializer(resultado_test)
            return Response(serializer.data)
        except ResultadoTest.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'El registro de ResultadoTest seleccionado no existe en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)                

    def diagnostico_gral(self, data, id):
       ri = ResultadoItem.objects.all()
       ritem = ri.filter(id_resultadoTest=id)  
       i=0
       CET=False
       for item in ritem:
           if item.indicador == 'S': 
              i += 1
              if item.id_area.id == 6:
                 CET = True
       
       res = ((i * 100) / 6) 
       print('res: ', res)
       if CET:
           if res > 60:
              data['indicador'] = 'S'
              data['observacion'] = 'El/La niño/a necesita de manera urgente ayuda profesional por que obtuvo bajo rendimiento en mas del 60% de las áreas estudiadas, Atención: tener en cuenta que la área de Estimación del tamaño esta incluida en las áreas de bajo rendimiento'                        
           else:    
              data['indicador'] = 'S'
              data['observacion'] = 'El/La niño/a tiene riesgo de discalculia por que obtuvo un bajo rendimiento en el área de Estimación del Tamaño y esta área es de suma importancia en el aprendizaje del niño/a'             
       else:
           if res > 60:
              data['indicador'] = 'S'
              data['observacion'] = 'El/La niño/a tiene riesgo de discalculia por que obtuvo un bajo rendimiento en mas del 60% de las áreas Estudiadas'                    
           else:
              data['indicador'] = 'N'
              data['observacion'] = data['observacion']
       return data
    
    def put(self, request, id_alumno):
        '''Actualiza los datos de acuerdo a su Id'''
        try:
            if id_alumno == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            resultado_test = ResultadoTest.objects.get(id_alumno=id_alumno)
            data = self.diagnostico_gral(request.data, request.data['id'])
            serializer = RTestSerializer(resultado_test, data)
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

    def delete(self, request, id_alumno):
        '''Elimina un registro de acuerdo a su Id'''
        try:
            if id_alumno == '0':
                return JsonResponse({'mensaje': 'El Id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            resultado_test = ResultadoTest.objects.get(id_alumno=id_alumno)
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
class RItemListRTestView(generics.ListAPIView):
    serializer_class = ResultadoItemSerializer

    def get_queryset(self):
        queryset = ResultadoItem.objects.all()
        resultadoTest = self.request.query_params.get('id_resultadoTest', None)
        if resultadoTest is not None:
            queryset = queryset.filter(id_resultadoTest=resultadoTest)
        return queryset

class ResultadoItemListView(APIView):
    """Métodos para buscar una lista de registros"""
    def get(self, request):
        try:
            Lista_ResultadoItem = ResultadoItem.objects.all().order_by("id_resultadoTest")            
            serializer = ResultadoItemSerializer(Lista_ResultadoItem, many=True)
            return Response(serializer.data)
        except Exception:
            return Response(
                {'mensaje': 'Ocurrio un error en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)

    def diagnosticar_por_Area(self, data):
       area =  Area.objects.all().order_by('id')
       i = 0
       for item in area:
           if data[i]['id_area'] == item.id:
               res = (data[i]['pObtenido'] * 100) / item.pEsperado
               if res < 60:
                  data[i]['indicador'] = 'S'
                  if item.id == 1:                 
                    data[i]['observacion'] = 'El/la niño/a esta con bajo rendimiento en el área de contar es conveniente que acuda a un profesional para recibir ayuda, y/o le haga prácticar ejercicios relacionados a esta área aquií puede acceder a material que le será de mucha ayuda https://www.youtube.com/watch?v=9xCbQMdQ2S4'
                  if item.id == 2:
                    data[i]['observacion'] = 'El/la niño/a esta con bajo rendimiento en el área de numerar es conveniente que acuda a un profesional para recibir ayuda, y/o le haga prácticar ejercicios relacionados a esta área aquí puede acceder a material que le será de mucha ayuda https://www.youtube.com/watch?v=k8etJmnDrYc'  
                  if item.id == 3:
                    data[i]['observacion'] = 'El/la niño/a esta con bajo rendimiento en el área de Comprensión del Sistema Numérico es conveniente que acuda a un profesional para recibir ayuda, y/o le haga prácticar ejercicios relacionados a esta área aquí puede acceder a material que le será de mucha ayuda https://www.youtube.com/watch?v=aqPQ0QkBvOs'  
                  if item.id == 4:
                    data[i]['observacion'] = 'El/la niño/a esta con bajo rendimiento en el área de Operaciones Lógicas es conveniente que acuda a un profesional para recibir ayuda. y/o le haga prácticar ejercicios relacionados a esta área aquí puede acceder a material que le será de mucha ayuda https://www.youtube.com/watch?v=72HJrR086A8'  
                  if item.id == 5:
                    data[i]['observacion'] = 'El/la niño/a esta con bajo rendimiento en el área de Operaciones es conveniente que acuda a un profesional para recibir ayuda, y/o le haga prácticar ejercicios relacionados a esta área aquí puede acceder a material que le será de mucha ayuda https://www.youtube.com/watch?v=A-6lytfixEw'  
                  if item.id == 6:
                    data[i]['observacion'] = 'El/la niño/a esta con bajo rendimiento en el área de Estimación del Tamaño es conveniente que acuda a un profesional para recibir ayuda, y/o le haga prácticar ejercicios relacionados a esta área aquí puede acceder a material que le será de mucha ayuda https://www.youtube.com/watch?v=qD2HQQMvXj8 - https://www.youtube.com/watch?v=6NnqL7FKd2w'                                                              
               else:
                  data[i]['indicador'] = 'N'
                  data[i]['observacion'] = 'El/la niño/a tiene un buen rendimiento'                                                              
           i += 1
       return data           

    def post(self, request):
        resultado_item = self.BuscaRItemTest(request.data[0]['id_resultadoTest'])
        if resultado_item is None:      
            ritem =  ResultadoItem.objects.all() # Obtener los datos de la base de datos        
            _arr_ritem = [entry for entry in ritem] #Es necesario pasarlo a listas
            data = self.diagnosticar_por_Area(request.data) #Activar y cargar los diagnosticos por el motor de inferencia
            se = AddRItemListSerializer(instance=_arr_ritem, data = data, many = True) # Serializar los datos
            #validar y guardar
            if se.is_valid():            
                se.save()
                payload = {
                    'codigo': status.HTTP_200_OK,
                    'mensaje': 'La creación de Lista de items se ha realizado con éxito',  
                    'data': se.data 
                }
            else:
                payload = {
                    'codigo': status.HTTP_400_BAD_REQUEST, 
                    'mensaje': 'Falló la inserción de items',  
                    'data': se.errors
                }   

            return Response(payload, status=status.HTTP_200_OK)
        else:
            return JsonResponse({'mensaje': 'Los Registros ya existen en la base de datos'},
                                    status=status.HTTP_400_BAD_REQUEST)    

    def BuscaRItemTest(self, id_rTest):
        resultado_item = ResultadoItem.objects.filter(id_resultadoTest__in=[id_rTest,id_rTest,id_rTest,id_rTest,id_rTest,id_rTest])
        print('ResultadoItem', resultado_item)                   
        return resultado_item

    def put(self, request):
        data = request.data # Obtener el  JSON.

        ritem =  ResultadoItem.objects.all() # Obtener los datos de la base de datos        
        _arr_ritem = [entry for entry in ritem] #Es necesario pasarlo a listas
        se = UpdateRItemListSerializer(instance=_arr_ritem, data = data, many = True) # Serializar los datos    

        #validar y guardar la actualizacón de datos 
        if se.is_valid():  
            se.save()
            payload = {
                'codigo': status.HTTP_200_OK,
                 'mensaje': 'Ok',  
                 'data': se.data 
            }
        else:
            payload = {
                'codigo': status.HTTP_400_BAD_REQUEST, 
                'mensaje': 'Falló',  
                'data': se.errors
            }   

        return Response(payload, status=status.HTTP_200_OK)        

    def delete(self, request):
        data = request.data # Obtener el  JSON.
        ritem =  ResultadoItem.objects.all() # Obtener los datos de la base de datos        
        _arr_ritem = [entry for entry in ritem] #Es necesario pasarlo a listas
        se = DeleteRItemListSerializer(instance=_arr_ritem, data = data, many = True) # Serializar los datos    
        #validar y Eliminar Lista
        if se.is_valid():            
            se.save()
            payload = {
                'codigo': status.HTTP_200_OK,
                 'mensaje': 'La lista se ha eliminado correctamente',  
                 'data': se.data 
            }
        else:
            payload = {
                'codigo': status.HTTP_400_BAD_REQUEST, 
                'mensaje': 'La eliminación de la lista ha fallado con éxito',  
                'data': se.errors
            }   

        return Response(payload, status=status.HTTP_200_OK)                


class ResultadoItemListDetallesView(APIView):
    def get(self, request, id_rTest):
        '''Busca registros por el '''
        try:
            if id_rTest == '0':
                return JsonResponse({'mensaje': 'El id debe ser mayor a zero'},
                                    status=status.HTTP_400_BAD_REQUEST)
            resultado_item = ResultadoItem.objects.filter(id_resultadoTest__in=id_rTest)
            print('ResultadoItem', resultado_item)
            serializer = RItemSerializer(resultado_item, many=True)
            return Response(serializer.data)
        except ResultadoItem.DoesNotExist:
            return JsonResponse(
                    {'mensaje':'La lista de items no se encuentra en la base de datos'},
                     status=status.HTTP_404_NOT_FOUND)
        except Exception:
            return JsonResponse(
                {'mensaje': 'Ocurrio en la lectura del servidor'},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR)                     