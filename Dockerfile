# Dockerfile.node
# ---- builder ----
FROM node:20-alpine AS builder
WORKDIR /app

ENV CI=true

# enable corepack & pnpm
RUN corepack enable && corepack prepare pnpm@latest --activate

# copy manifest files first for better layer caching
COPY package.json pnpm-lock.yaml ./

# install deps (dev deps are needed to build)
RUN pnpm install --frozen-lockfile

# copy rest of source and build
COPY . .
RUN pnpm build

# prune dev deps to keep node_modules small
RUN pnpm prune --prod

# ---- runner ----
FROM node:20-alpine AS runner
WORKDIR /app
ENV NODE_ENV=production
RUN corepack enable && corepack prepare pnpm@latest --activate

# copy built output and production node_modules
COPY --from=builder /app/build ./build
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./package.json
COPY --from=builder /app/static ./static

EXPOSE 3000
# Adjust if your adapter-node exports a different entrypoint
CMD ["node", "build"]
