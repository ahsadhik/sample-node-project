# Old version (❌ probably causing the issue)
# FROM node:14

# ✅ Use at least Node 16
FROM node:18

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3005

CMD ["node", "app.js"]
