ARG VERSION=16.15.0
ARG PORT=3000

FROM node:${VERSION}-slim

# Set Working Directory
WORKDIR /app

# Adding App and Packages
COPY . /app

# Setting Environment Variables
ENV PORT=${PORT}

# Package Dependencies
RUN npm install

# Production Build
RUN npm run build

# Exposing Port
EXPOSE ${PORT}

# Running Bash Script to Start Server
CMD ["sh", "./entrypoint.sh"]