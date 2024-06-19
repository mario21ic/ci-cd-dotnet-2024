# Utiliza la imagen base de .NET 6 SDK para construir la aplicación
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src

# Copia el archivo .csproj y restaura las dependencias
COPY MyApi/*.csproj ./MyApi/
RUN dotnet restore ./MyApi/MyApi.csproj

# Copia el resto de los archivos y construye la aplicación
COPY MyApi/. ./MyApi/
WORKDIR /src/MyApi
RUN dotnet publish -c Release -o /app/publish

# Utiliza una imagen base más ligera de .NET runtime para ejecutar la aplicación
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS final
WORKDIR /app
COPY --from=build /app/publish .

ENV ASPNETCORE_URLS=http://0.0.0.0:80
ENTRYPOINT ["dotnet", "MyApi.dll"]

