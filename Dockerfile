FROM ubuntu:20.04
WORKDIR /usr/src/app
COPY . .
RUN apt update && apt install curl sudo -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN sudo apt install -y nodejs
RUN node -v && npm -v
RUN npm install -g yarn
RUN npm install
RUN npm run build
RUN npm install -g serve
CMD serve -p $PORT -s public
# CMD ["serve", "-s", "-l", "5000", "public"]
EXPOSE 5000