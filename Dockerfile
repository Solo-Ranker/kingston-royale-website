# Stage 1: Builder
FROM node:22-alpine 

ENV CI=true 

# Set working directory
WORKDIR /app

# Enable Corepack for PNPM (no need to install PNPM separately)
RUN corepack enable

# Copy package files for dependency installation
COPY package.json pnpm-lock.yaml ./

# Copy the rest of the application code
COPY . .

# Install dependencies with frozen lockfile for reproducibility
RUN pnpm install --frozen-lockfile


EXPOSE 5173


# Start the server
CMD ["pnpm", "run", "dev", "--host"]