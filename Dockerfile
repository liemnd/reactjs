# Image base
FROM node:alpine

# Install dependencies packages
RUN npm install

# Copy source code
WORKDIR /app

COPY package.json .

COPY . .

# Start command
CMD ["npm", "run", "start"]
