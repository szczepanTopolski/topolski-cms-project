# Wybieramy oficjalny obraz Node.js jako bazę
FROM node:20

# Ustawiamy katalog roboczy w kontenerze
WORKDIR /app

# Kopiujemy plik package.json i package-lock.json (lub yarn.lock)
COPY package*.json ./

# Instalujemy zależności
RUN npm install

# Kopiujemy resztę aplikacji
COPY . .

# Budujemy aplikację React
RUN npm run build

# Otwieramy port (jeśli chcesz uruchomić aplikację na porcie)
EXPOSE 3000

# Uruchamiamy aplikację (jeśli ma być uruchamiana lokalnie, ale w przypadku Netlify nie jest to konieczne)
CMD ["npm", "start"]
