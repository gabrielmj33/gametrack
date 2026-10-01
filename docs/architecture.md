# GameTrack Architecture

## 1. Architecture Goals

The GameTrack architecture is designed with the following goals:

- Maintain a clear separation between frontend, backend, and data persistence.
- Keep the codebase modular and easy to maintain.
- Allow new features to be added without requiring major changes to unrelated parts of the system.
- Provide a secure architecture for authentication, authorization, and user data.
- Support the current MVP while allowing the application to grow in future versions.
- Keep the development environment simple enough to run on modest hardware.
- Allow the application and database to be deployed using cloud services.
- Maintain clear boundaries between business rules and infrastructure concerns.
- Make the project easy to understand, test, document, and maintain.

## 2. Architecture Drivers

The main architectural drivers of GameTrack are:

### Maintainability
The system should be organized into clearly separated modules so that changes in one feature have minimal impact on unrelated features.

### Modularity
Features such as authentication, game library management, reviews, friendships, community content, and moderation should have clearly defined responsibilities.

### Security
Authentication credentials and user data must be protected. Authorization rules must ensure that users can only modify resources they are allowed to manage.

### Scalability
The architecture should support future growth without requiring the system to be redesigned prematurely.

### Testability
Business rules and application logic should be structured in a way that allows automated testing.

### Deployability
The frontend, backend, and database should be independently deployable using cloud infrastructure.

### Simplicity
The architecture should avoid unnecessary infrastructure and technologies that do not solve an actual GameTrack requirement.

## 3. Architectural Style

GameTrack will use a Modular Monolith architecture.

The backend will be deployed as a single application, while the internal codebase will be organized into independent modules based on business responsibilities.

Initial backend modules include:

- Authentication
- Users
- Games
- Game Library
- Reviews
- Friendships
- Community
- Reports

This approach was chosen because it provides clear separation of responsibilities while avoiding the operational complexity of a microservices architecture.

The modular structure also allows individual parts of the system to evolve independently and makes future extraction into separate services possible if the application eventually requires it.

## 4. High-Level System Architecture

GameTrack will be composed of separate frontend, backend, and data persistence layers.

### Frontend

The frontend will be responsible for the user interface and user interaction.

It will communicate with the backend through HTTP requests using a REST API.

The frontend will not access the database directly.

### Backend

The backend will contain the application's business rules, authentication, authorization, validation, and application logic.

The backend will expose a REST API that will be consumed by the frontend.

The backend will follow a Modular Monolith architecture, with functionality divided into modules based on business responsibilities.

### Data Access

Prisma ORM will be used by the backend to communicate with the PostgreSQL database.

Prisma will manage database access and migrations while keeping database-related code organized.

### Database

PostgreSQL will be used as the relational database for GameTrack.

The database will store persistent application data such as users, games, game libraries, reviews, friendships, community content, and reports.

## 5. Backend Architecture

The GameTrack backend will follow a layered architecture inside each business module.

Each module will separate HTTP communication, application logic, and data access responsibilities.

The main backend layers are:

### Controller Layer

Controllers receive HTTP requests, extract request data, invoke the appropriate application services, and return HTTP responses.

Controllers should not contain complex business rules.

### Service Layer

Services contain application logic and coordinate business operations.

They are responsible for enforcing rules such as verifying resource ownership, preventing invalid operations, and coordinating data access.

### Repository Layer

Repositories provide an abstraction for data persistence.

Services interact with repositories instead of directly accessing the database.

Repositories will use Prisma ORM to communicate with PostgreSQL.

### Data Access Layer

Prisma ORM will be responsible for executing database operations and managing database migrations.

### DTOs

Data Transfer Objects will define and validate the structure of data entering the application through the API.

### Modules

The backend will be divided into modules based on business responsibilities.

Initial modules include:

- Auth
- Users
- Games
- Library
- Reviews
- Friendships
- Community
- Reports

## 6. Backend Modules and Boundaries

The GameTrack backend will be divided into business-oriented modules.

Each module owns a specific part of the application and should expose only the functionality required by other modules.

### Auth

Responsible for authentication-related operations such as registration, login, logout, and credential validation.

### Users

Responsible for user accounts, profiles, and gaming platform accounts.

### Games

Responsible for the game catalog and game-related information.

### Library

Responsible for the user's personal game library, including game status, ratings, start dates, and completion dates.

### Reviews

Responsible for reviews associated with game library entries.

### Friendships

Responsible for friend requests and friendship relationships between users.

### Community

Responsible for community content, including discussions and guides associated with games.

### Reports

Responsible for reports submitted against community content and their moderation workflow.

### Module Boundaries

Modules should communicate through clearly defined public services or interfaces.

A module should not directly access repositories or internal implementation details owned by another module.

Database access should remain encapsulated within the module responsible for the corresponding data.

Circular dependencies between modules should be avoided.
