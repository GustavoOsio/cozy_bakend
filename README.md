## BAKEND MAWIKA (Spring-boot)

Recomendaciones para ejecutar el Backend Mawika:
1.	Instalar el IDE Spring Tool.
2.	Instalar JAVA_HOME version JDK 18.
3.	Crear la BD con el scritp mawikaBD.sql el cual lo encuentras en los asset del proyecto, se recomienda utilizar Workbench para administrar la BD.
4.	Configurar el apuntamiento de la base de datos del Backend en el archivo application.properties, puedes configurar la BD de forma local o las alojadas en los servidores (Qa – Pre). 
5.	Configurar la ruta de los archivos en las variables globales de la clase ConvertirBase64.java.
    Nota: en caso que sea configuración local, crear la ruta en su equipo tomando como referencia la carpeta comprimida archivo.rar.
7.	Seleccione el proyecto en Spring Tool y ejecute Run As -> Maven Install para descargar las dependencias y generar el compilado.
8.	Para correr el proyecto seleccione la carpeta raíz, Run As o Debug As -> Spring Boot App.
9.	Al mismo nivel de la carpeta crear una carpeta archivo y sbcarpeta video y photo
