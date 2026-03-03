# 🚀 Production-Ready DevOps Microservices Platform

A production-grade Dockerized microservices system with CI/CD automation, reverse proxy routing, health-aware startup, and Docker Hub image publishing.

---

## 🏗 Architecture Overview

- User Service (FastAPI)
- Order Service (FastAPI)
- PostgreSQL
- Nginx Reverse Proxy
- Docker + Docker Compose
- GitHub Actions CI/CD
- Docker Hub Auto Image Push
- Pre-commit Enforcement
- Container Health Checks
- Makefile Automation

---

## 🧱 Architecture Diagram

            ┌───────────────┐
            │     Nginx     │
            │ Reverse Proxy │
            └───────┬───────┘
                    │
    ┌───────────────┴───────────────┐
    │                               │                          

    ┌───────────────┐ ┌───────────────┐
    │ User Service │  │ Order Service │
      │ FastAPI │ │ FastAPI │
    └───────┬───────┘ └───────┬───────┘
    │ │
    └───────────────┬───────────────┘
    │
    ┌───────────────┐
    │ PostgreSQL │
    └───────────────┘


---

## ⚙️ Tech Stack

### Backend
![FastAPI](https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white)

### Database
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)

### Containerization
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)

### CI/CD
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=for-the-badge&logo=github-actions&logoColor=white)

### Reverse Proxy
![Nginx](https://img.shields.io/badge/Nginx-009639?style=for-the-badge&logo=nginx&logoColor=white)

### Code Quality
![Black](https://img.shields.io/badge/Black-000000?style=for-the-badge)
![Pre-commit](https://img.shields.io/badge/Pre--Commit-FAB040?style=for-the-badge)

---

## 🔁 CI/CD Pipeline

Triggered on:
- Pull Requests
- Push to `main`

Pipeline stages:

1. Lint & Format Enforcement
2. Unit Tests
3. Docker Image Build
4. Docker Hub Push
5. Fail-fast Validation

---

## 🐳 Docker Hub Images

Images are automatically pushed to:


docker.io/<your-docker-username>/user-service
docker.io/<your-docker-username>/order-service


---

## 🔍 Health Checks

Each service exposes:


/health


Container-level health checks configured in Dockerfile.

PostgreSQL readiness validated using:


pg_isready


---

## 📦 Project Structure


.
├── .github/workflows/
├── user-service/
├── order-service/
├── nginx/
├── docker-compose.yml
├── Makefile
└── README.md


---

## 🛠 Local Development

### Build & Run


make up


Or:


docker compose up --build


### Stop


make down


---

## 🌐 Endpoints


http://localhost/users/health

http://localhost/orders/health


---

## 🔒 Production Features

- Multi-stage Docker builds
- Health-aware service startup
- Reverse proxy routing
- CI enforced pull request workflow
- Docker image publishing automation
- Pre-commit hook enforcement
- Optimized build context via .dockerignore

---

## 📈 Future Improvements

- Blue/Green Deployment
- Canary Releases
- Kubernetes Migration
- Trivy Security Scanning
- Automated Version Tagging
- Cloud Deployment (AWS / GCP)

---

## 🧠 Why This Project

This project demonstrates:

- Infrastructure ownership
- CI/CD automation
- Production-ready Docker design
- Service orchestration discipline
- Real-world DevOps practices

---

## 👤 Author

Debasmita Chatterjee
