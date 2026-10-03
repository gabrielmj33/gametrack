# GameTrack Technology Stack

## 1. Overview

This document describes the main technologies selected for the GameTrack application and the responsibility of each technology within the system.

## 2. Core Technologies

| Area | Technology | Responsibility |
|---|---|---|
| Language | TypeScript | Primary language for frontend and backend |
| Frontend | Next.js + React | Web interface and frontend application |
| Backend | NestJS | REST API and application business logic |
| Runtime | Node.js | JavaScript/TypeScript runtime for the backend |
| Database | PostgreSQL | Relational data persistence |
| ORM | Prisma | Database access and migrations |
| API | REST + JSON | Communication between frontend and backend |
| Database Hosting | Neon | Managed PostgreSQL hosting |
| Frontend Hosting | Vercel | Next.js deployment |
| Backend Hosting | To be selected | NestJS cloud deployment |
| Containerization | Docker | Reproducible backend deployment environment |
| API Documentation | OpenAPI / Swagger | REST API documentation |
| CI | GitHub Actions | Automated validation and testing |
| Version Control | Git + GitHub | Source code management |

## 3. Testing

| Area | Technology |
|---|---|
| Backend Unit Tests | Jest |
| Backend API Tests | Jest + Supertest |
| Frontend Tests | Vitest + Testing Library |
| End-to-End Tests | Playwright |
