# Usar a imagem base do Python
FROM python:3.12

# Definir o diretório de trabalho no contêiner
WORKDIR /src

# Atualizar o pip para a versão mais recente
RUN pip install --no-cache-dir --upgrade pip

# Copiar o arquivo requirements.txt para o contêiner
COPY requirements.txt /src/

# Instalar as dependências globalmente no contêiner
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o restante do código para o contêiner
COPY . /src

# Expor a porta usada pelo Streamlit
EXPOSE 8501

# Comando para rodar o Streamlit
CMD ["streamlit", "run", "app.py"]
