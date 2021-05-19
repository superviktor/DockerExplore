FROM    mcr.microsoft.com/dotnet/sdk:3.1
LABEL   author="Viktor"
ENV     ASPNETCORE_URLS=http://+:5000
WORKDIR /app
COPY . .
EXPOSE 5000
ENTRYPOINT ["/bin/bash", "-c", "dotnet restore && dotnet watch run"]