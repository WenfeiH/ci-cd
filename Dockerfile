#development mode
FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .
EXPOSE 4000
CMD ["npm", "start"]
# Stage 1 - the build process
# RUN npm run build
# # Stage 2 - the production environment
# EXPOSE 8080
# # 将 dist 目录部署于 8080 端口
# CMD ["serve", "-s", "build", "-p", "8080"]
# # CMD npm start