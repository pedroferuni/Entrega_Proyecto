FROM eclipse-temurin:21-jdk
WORKDIR /wcr

# Copiamos tanto el .jar como la base de datos
COPY wcr wcr
COPY wcr.jar wcr.jar
COPY db db
COPY sql.sql sql.sql
COPY public public

# Comando para iniciar tu app
CMD ["java", "-jar", "wcr.jar"]
