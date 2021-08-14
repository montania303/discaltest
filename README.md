# discaltest
backend de app web para la detección preliminar de la discalculia en niños

Software necesarios para levantar la API-REST
1. Tener instalado Python en la versión 3.9.6 o superior. link para descargar https://www.python.org/downloads/
2. Tener instalado Django y Django-rest-framework: instalará las versiones mas recientes
  pip install django
  pip install djangorestframework
3. Instalar el paquete de conexión de postgresql con django
  pip install sycopg2
  
Pasos para clonar el repositorio.
1. Darle click al F1 en vscode y selecionar el comando de clonar repositorio 
2. Seguidamente copiar el siguiente link https://github.com/montania303/discaltest.git
3. Seguidamente direccionar a la carpeta deseada donde será clonado el proyecto.

Pasos para recrear la DB.
1. Instalar postgresql v. 12
2. Instalar el cliente PGAdmin4 o Dbeaber
3. Realizar la restauración de la base con el archivo backup que encontraras en la carpeta DB.

Pasos para levantar el proyecto.
1. Abrir el terminal integrado de vscode y dirigirse a la carpeta ENV
2. activar la máquina vitual ENV. => cd env/scripts darle click a enter
3. escribir la palabra activate y se activará la maquina virtual.
4. escribir el comando cd ..\.. para volver al principio.
5. seguidamente escribir el comando python manage.py runserver y se levantará el proyecto.




