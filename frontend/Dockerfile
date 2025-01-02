# Pierwszy etap: Budowanie aplikacji React (wymaga Node.js i npm)
FROM node:20 AS build

# Ustawiamy katalog roboczy
WORKDIR /app

# Kopiujemy pliki package.json oraz package-lock.json
COPY package*.json ./

# Instalujemy zależności
RUN npm install

# Kopiujemy resztę aplikacji
COPY . .

# Budujemy aplikację
RUN npm run build

# Drugi etap: Nginx do serwowania aplikacji
FROM nginx:alpine

# Instalujemy Node.js i npm, żeby używać Netlify CLI
RUN apk add --no-cache nodejs npm

# Kopiujemy zbudowaną aplikację do katalogu Nginx
COPY --from=build /app/build /usr/share/nginx/html

# Zainstaluj Netlify CLI
RUN npm install -g netlify-cli

# Ustawiamy port, na którym Nginx będzie działać
EXPOSE 80

# Uruchamiamy Nginx
CMD ["nginx", "-g", "daemon off;"]
