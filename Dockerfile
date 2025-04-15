FROM eclipse-temurin:21-jdk
WORKDIR /wcr

# Copiamos tanto el .jar como la base de datos
COPY wcr-09.jar wcr-09.jar
COPY db db
COPY sql.sql sql.sql
COPY public public

# Comando para iniciar tu app
CMD ["java", "-jar", "wcr.jar"]
