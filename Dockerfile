# Usa a imagem Python Alpine (leve)
FROM python:3.11-alpine

# Define o diretório de trabalho
WORKDIR /app

# Copia todos os arquivos do projeto
COPY index.html /app/
COPY logo.png /app/
COPY logo_nova.jpg /app/

# Expõe a porta 8080
EXPOSE 8080

# Comando para iniciar o servidor HTTP simples do Python
CMD ["python", "-m", "http.server", "8080"]

