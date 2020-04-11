# Build react app image
FROM node:alpine as react-app

WORKDIR /app
COPY package.json .
RUN npm install
COPY . .

RUN ["npm", "run", "build"]

# Build Nginx and deploy react app
FROM nginx

COPY --from=react-app /app/build /usr/share/nginx/html
