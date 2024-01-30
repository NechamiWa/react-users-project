FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

COPY entry-point.sh .

RUN ["chmod", "+x", "entry-point.sh"]

CMD ["./entry-point.sh"]
