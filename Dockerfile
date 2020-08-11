FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS build
VOLUME /tmp
ADD target/SmartStoreNET-*.jar /SmartStore.jar
EXPOSE 8080
RUN bash -c 'touch /SmartStore.jar'
ENTRYPOINT ["dotnet","-jar", "/SmartStore.jar"]
