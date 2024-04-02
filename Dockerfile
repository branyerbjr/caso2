# Usa una imagen de Node.js como base
FROM node:21

# Establece el directorio de trabajo en /usr/src/app
WORKDIR /usr/src/app

# Copia el archivo package.json y package-lock.json para instalar dependencias
COPY package*.json ./
COPY index.js ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de la aplicación
COPY . .

# Expone el puerto 3000 en el contenedor
EXPOSE 3000

# Comando para ejecutar la aplicación cuando el contenedor se inicie
CMD ["node", "index.js"]
