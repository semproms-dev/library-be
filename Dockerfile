# Usa la imagen base de Ubuntu
FROM ubuntu:latest

# --- Instalación de Python, Pip y Herramientas Base ---
# Instala python3, pip y herramientas de compilación esenciales (build-essential)
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# Crea un enlace simbólico para que el comando 'python' apunte a 'python3' (necesario para el servicio 'loader')
RUN ln -s /usr/bin/python3 /usr/bin/python

# --- Instalación de Node.js y Yarn ---
RUN apt-get update && apt-get install -y curl

# Instala Node.js v16 (se usa curl para el repositorio)
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs

# Establece el directorio de trabajo principal
WORKDIR /app

# --- Instalación de Dependencias de Python ---
# Copia el archivo de requisitos de Python
COPY requirements.txt ./

# Instala las dependencias de Python. 
# --break-system-packages es necesario para evitar el error 'externally-managed-environment' en Ubuntu.
RUN pip install --no-cache-dir --break-system-packages -r requirements.txt

# --- Instalación de Dependencias de Node.js ---
# Copia los archivos de configuración de Node
COPY package.json package-lock.json ./

# Instala las dependencias de Node
RUN npm install
RUN npm install -g yarn

# Copia el resto del código de la aplicación (incluyendo load.py y scripts/)
COPY . .

# Expone el puerto del servicio 'server'
EXPOSE 3000

# Comando por defecto para el servicio 'server'
CMD ["yarn", "dev"]