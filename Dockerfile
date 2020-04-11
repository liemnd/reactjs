# Image base
FROM node:alpine

# Install dependencies packages
RUN npm install

# Copy source code
WORKDIR /app

COPY packages.json .

COPY . .

# Start command
CMD ["nmp", "run", "start"]
