FROM node:18-alpine

WORKDIR /app

# Cache dependencies layer
COPY package.json ./
RUN npm install

# Copy application source
COPY . .

EXPOSE 5000

CMD ["npm", "start"]