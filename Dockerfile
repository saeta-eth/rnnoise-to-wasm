FROM trzeci/emscripten

RUN mkdir /rnnoise
WORKDIR /rnnoise

COPY package.json .

RUN npm install -g yarn
RUN yarn

COPY . /rnnoise

RUN yarn emscripten