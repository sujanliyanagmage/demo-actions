#pull base image
FROM eclipse-temurin:17-jre-alpine

# Add build
COPY target/demo-0.0.1-SNAPSHOT.jar /app/
# ADD https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem root-cert.pem
#Expose port
EXPOSE 8080

ENTRYPOINT ["java","-XX:FlightRecorderOptions=stackdepth=256","-jar", "app/demo-0.0.1-SNAPSHOT.jar"]
