FROM node:20-alpine
WORKDIR /app

# install git
RUN apk update
RUN apk add --no-cache git
# install python
RUN apk add --no-cache python3
# install make, gcc, g++
RUN apk add --no-cache make
RUN apk add --no-cache gcc
RUN apk add --no-cache g++

# install pnpm
RUN npm install -g pnpm
# clone the repo
RUN git clone https://github.com/openpipe/openpipe
# install dependencies
RUN cd openpipe/app && pnpm install

EXPOSE 3000 3318
