# 使用 Bun 官方镜像
FROM oven/bun:latest

WORKDIR /app

# 复制依赖和源码
COPY bun.lockb package.json ./
RUN bun install --production

COPY . .

EXPOSE 3000
CMD ["bun", "run", "start"]
