# Dockerfile
FROM node:14

# Cria o diretório de trabalho
WORKDIR /usr/src/app

# Copia o arquivo package.json e instala as dependências
COPY package*.json ./
RUN npm install

# Copia o restante do código da aplicação
COPY . .

# Expõe a porta 8080
EXPOSE 8080

# Executa a aplicação
CMD [ "node", "index.js" ]
