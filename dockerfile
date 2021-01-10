FROM mcr.microsoft.com/powershell:alpine-3.12

SHELL ["pwsh", "-Command"]

RUN Install-Module -Name Polaris -Force

COPY api.ps1 api.ps1

CMD ["pwsh", "-File", "api.ps1"]