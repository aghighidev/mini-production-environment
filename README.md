# mini-production-environment

A production-style containerized environment built with Docker Compose.

## Features

✓ Multi-stage Docker builds
✓ Non-root containers
✓ Nginx reverse proxy
✓ Load balancing across multiple API instances
✓ Container health checks
✓ Network isolation
✓ Persistent database storage
✓ Database backups
✓ Resource limits
✓ Log rotation
✓ Failure recovery
✓ Bash management CLI

## Architecture

Client
  │
  ▼
Nginx
  │
  ├── API-1
  └── API-2
       │
       ├── Redis
       └── MySQL
