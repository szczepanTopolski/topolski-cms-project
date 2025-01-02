# Etap 1: Budowanie aplikacji z Node.js
FROM node:16 AS build

# Ustaw katalog roboczy
WORKDIR /app

# Skopiuj pliki zależności
COPY package*.json ./

# Zainstaluj zależności aplikacji
RUN npm install --legacy-peer-deps

# Skopiuj resztę plików aplikacji
COPY . .

# Zbuduj aplikację frontendową
RUN npm run build

# Etap 2: Uruchamianie aplikacji z Nginx
FROM nginx:alpine

# Skopiuj zbudowaną aplikację do folderu nginx
COPY --from=build /app/build /usr/share/nginx/html

# Wystaw port 80 do dostępu z zewnątrz
EXPOSE 80

# Uruchom nginx w tle
CMD ["nginx", "-g", "daemon off;"]
