FROM node:18

# Tạo thư mục làm việc
WORKDIR /usr/src/app

# Copy package và cài dependencies
COPY package*.json ./
RUN npm install

# Cài dockerize để wait DB
RUN apt-get update && apt-get install -y wget && \
    wget https://github.com/jwilder/dockerize/releases/download/v0.7.0/dockerize-linux-amd64-v0.7.0.tar.gz && \
    tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.7.0.tar.gz

# Copy toàn bộ code
COPY . .

# Copy file env docker
COPY .env.docker ./

# Expose port backend
EXPOSE 5000

# CMD chờ DB trước khi start
CMD ["dockerize", "-wait", "tcp://db:3306", "-timeout", "60s", "npm", "start"]