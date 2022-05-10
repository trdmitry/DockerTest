#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

# FROM mcr.microsoft.com/dotnet/runtime:6.0 AS base


FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
#WORKDIR /src
#COPY ["DockerDotNet.csproj", "."]
WORKDIR /app
COPY . .
#RUN dotnet restore # "./DockerDotNet.csproj"

#WORKDIR "/src/."
#RUN dotnet build "DockerDotNet.csproj" -c Release -o /app/build

#FROM build AS publish
#RUN dotnet publish "DockerDotNet.csproj" -c Release -o /app/publish

#FROM base AS final
#WORKDIR /app
#COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "run"]