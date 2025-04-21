# Docker Setup for MERN Stack Social Media Web App

This project is containerized using Docker, with separate containers for the frontend, backend, and database.

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Container Architecture

1. **Frontend Container** - React.js application using development server
2. **Backend Container** - Node.js Express API server
3. **Database Container** - MongoDB database

## Getting Started

### 1. Clone the repository

```bash
git clone <repository-url>
cd Social-Media-Web-App-Mern-Stack-
```

### 2. Build and start the containers

```bash
docker-compose up -d
```

This command builds and starts all three containers in detached mode.

### 3. Access the application

- Frontend: http://localhost:3000
- Backend API: http://localhost:4000
- MongoDB: mongodb://localhost:27017

## Container Details

### Frontend Container

- Base image: Node.js
- Uses React development server
- Exposes port 3000
- Hot-reloading enabled for development

### Backend Container

- Base image: Node.js
- Exposes port 4000
- Includes all Node.js dependencies and server code
- Configured to connect to the MongoDB container

### Database Container

- Official MongoDB image
- Exposes port 27017
- Data persists through a Docker volume

## Common Docker Commands

### View running containers

```bash
docker-compose ps
```

### View logs

```bash
# All containers
docker-compose logs

# Specific container
docker-compose logs frontend
docker-compose logs backend
docker-compose logs database
```

### Stop containers

```bash
docker-compose stop
```

### Stop and remove containers, networks, and volumes

```bash
docker-compose down
```

### Rebuild containers after making changes

```bash
docker-compose build
docker-compose up -d
```

## Data Persistence

MongoDB data is stored in a Docker volume `mongodb_data` to ensure data persists even if the container is removed.

## Environment Variables

Environment variables for the backend are defined in the docker-compose.yml file.

## Troubleshooting

- If you encounter connection issues between containers, ensure they are on the same Docker network.
- For port conflicts, modify the port mappings in the docker-compose.yml file.
- Check container logs for specific error messages: `docker-compose logs <service-name>`
- If you're developing and making changes to React code, you may need to rebuild the frontend container: `docker-compose build frontend` 