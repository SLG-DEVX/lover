FROM node:lts-buster

RUN git clone https://github.com/Ainz-devs/OVL-MD-V2-SESSION-ID-GEN /root/OVL-MD-V2-SESSION-ID-GEN

WORKDIR /root/OVL-MD-V2-SESSION-ID-GEN

COPY package.json .
RUN npm i
COPY . .

EXPOSE 8000

CMD ["npm","run","Ovl"]