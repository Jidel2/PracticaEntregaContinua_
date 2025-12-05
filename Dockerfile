# Imagen base oficial
FROM node:18

# Directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar archivos al contenedor
COPY package*.json ./
RUN npm install

# Copiar el resto de los archivos
COPY . .

# Exponer el puerto que usará la app
EXPOSE 3000

# Comando para ejecutar la app
CMD ["npm", "start"]
