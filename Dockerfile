FROM fusuf/whatsasena:latest

RUN git clone https://github.com/JOTASAB/deploy /deploy
WORKDIR /deploy
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --ignore-engines

CMD ["node", "index.js"]
