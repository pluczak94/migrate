FROM node
WORKDIR /app
COPY package.json ./
COPY ./ ./
RUN chmod 777 migrate.sh
RUN npm install
CMD ["npm", "run", "start"]