FROM node:lts-buster

RUN git clone https://github.com/SLG-DEVX/lover /root/lover

WORKDIR /root/lover

COPY package.json .
RUN npm i
COPY . .

EXPOSE 8000

CMD ["npm","run","Ovl"]