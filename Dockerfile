FROM node:latest
WRKDIR / apps
ADD . .
RUN npm install
CMD ["node", "index.js"]
