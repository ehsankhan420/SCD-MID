FROM node:16-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN mkdir -p images
EXPOSE 4000
CMD ["npm", "start"] 