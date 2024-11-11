# Usa la imagen base de Eclipse Temurin con JDK 21 en Alpine para una imagen ligera
FROM eclipse-temurin:21-jdk-alpine

# Copia el archivo JAR generado en el directorio target
COPY target/*.jar app.jar

# Configura el punto de entrada de la aplicación
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Exponer el puerto 8080 para desarrollo local; Railway usará un puerto dinámico en producción
EXPOSE 8081