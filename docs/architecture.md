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

## 7. Frontend Architecture

The GameTrack frontend will be built using Next.js and will be responsible for presenting application data, handling user interactions, and communicating with the backend REST API.

The frontend will not directly access the database or contain critical authorization and business rules.

### Pages and Routes

Application routes will represent the main areas of the system, including authentication, user profiles, games, game libraries, community discussions, and guides.

### Components

The user interface will be divided into reusable components.

Large pages should be composed of smaller components with clearly defined responsibilities.

### Feature Organization

Frontend code should be organized around application features when appropriate, such as authentication, games, library management, reviews, friendships, and community features.

This prevents unrelated functionality from becoming mixed inside large shared directories.

### API Communication

The frontend will communicate with the NestJS backend through the REST API.

API communication should be encapsulated in dedicated frontend services or API functions rather than being spread throughout UI components.

### State Management

Local UI state should remain close to the components that use it.

Data originating from the backend should be treated as server state, with the backend remaining the authoritative source of persistent application data.

### Validation

Frontend validation will be used to improve user experience and provide immediate feedback.

All security-sensitive and business-critical validation must also be performed by the backend.

### Rendering

Next.js server-side capabilities should be used where appropriate for public and content-oriented pages.

Client-side components should be used when browser interaction or local state is required.## 7. Frontend Architecture

The GameTrack frontend will be built using Next.js and will be responsible for presenting application data, handling user interactions, and communicating with the backend REST API.

The frontend will not directly access the database or contain critical authorization and business rules.

### Pages and Routes

Application routes will represent the main areas of the system, including authentication, user profiles, games, game libraries, community discussions, and guides.

### Components

The user interface will be divided into reusable components.

Large pages should be composed of smaller components with clearly defined responsibilities.

### Feature Organization

Frontend code should be organized around application features when appropriate, such as authentication, games, library management, reviews, friendships, and community features.

This prevents unrelated functionality from becoming mixed inside large shared directories.

### API Communication

The frontend will communicate with the NestJS backend through the REST API.

API communication should be encapsulated in dedicated frontend services or API functions rather than being spread throughout UI components.

### State Management

Local UI state should remain close to the components that use it.

Data originating from the backend should be treated as server state, with the backend remaining the authoritative source of persistent application data.

### Validation

Frontend validation will be used to improve user experience and provide immediate feedback.

All security-sensitive and business-critical validation must also be performed by the backend.

### Rendering

Next.js server-side capabilities should be used where appropriate for public and content-oriented pages.

Client-side components should be used when browser interaction or local state is required.

## 8. Data Architecture

GameTrack will use PostgreSQL as its primary relational database.

Database access will be performed through Prisma ORM and encapsulated by repository abstractions inside the backend modules.

### PostgreSQL

PostgreSQL will store the persistent application data and enforce relational integrity through primary keys, foreign keys, unique constraints, and other database rules.

### Prisma ORM

Prisma will provide the data access layer between the backend repositories and PostgreSQL.

Prisma will be responsible for database queries, relationships, schema management, and migrations.

### Repositories

Repositories will encapsulate database operations and prevent persistence logic from being spread throughout application services.

Application services should interact with repositories instead of directly accessing Prisma.

### Database Migrations

Database schema changes will be versioned through migrations.

Production database structures should not be modified manually when a migration can represent the change.

### Transactions

Transactions will be used when multiple database operations must succeed or fail as a single unit.

### Data Integrity

Important business constraints should be protected both by application validation and database constraints when appropriate.

Examples include unique usernames, unique email addresses, and preventing duplicate games in a user's library.

### Configuration

Database connection credentials will be provided through environment variables and must not be committed to source control.## 8. Data Architecture

GameTrack will use PostgreSQL as its primary relational database.

Database access will be performed through Prisma ORM and encapsulated by repository abstractions inside the backend modules.

### PostgreSQL

PostgreSQL will store the persistent application data and enforce relational integrity through primary keys, foreign keys, unique constraints, and other database rules.

### Prisma ORM

Prisma will provide the data access layer between the backend repositories and PostgreSQL.

Prisma will be responsible for database queries, relationships, schema management, and migrations.

### Repositories

Repositories will encapsulate database operations and prevent persistence logic from being spread throughout application services.

Application services should interact with repositories instead of directly accessing Prisma.

### Database Migrations

Database schema changes will be versioned through migrations.

Production database structures should not be modified manually when a migration can represent the change.

### Transactions

Transactions will be used when multiple database operations must succeed or fail as a single unit.

### Data Integrity

Important business constraints should be protected both by application validation and database constraints when appropriate.

Examples include unique usernames, unique email addresses, and preventing duplicate games in a user's library.

### Configuration

Database connection credentials will be provided through environment variables and must not be committed to source control.

## 9. API Design

GameTrack will expose a REST API over HTTPS using JSON as the primary data exchange format.

The API will follow consistent resource-oriented conventions.

### REST Conventions

HTTP methods will represent the intended operation:

- GET for retrieving resources.
- POST for creating resources.
- PATCH for partial updates.
- DELETE for removing resources.

Resource names should use plural nouns such as `/users`, `/games`, `/reviews`, and `/guides`.

Action-oriented route names should be avoided when standard HTTP semantics can represent the operation.

### API Versioning

The API will use a versioned base path:

`/api/v1`

This allows future incompatible API changes to be introduced without immediately breaking existing clients.

### DTOs and Validation

Incoming request data will be defined using Data Transfer Objects.

DTOs will be validated before the request reaches the application logic.

### Responses

API responses and errors should follow consistent structures.

Appropriate HTTP status codes will be used to represent successful operations, validation errors, authentication failures, authorization failures, missing resources, and conflicts.

### Authorization

The backend will always enforce authorization rules.

Frontend restrictions must not be treated as a security boundary.

### Documentation

The REST API will be documented using OpenAPI and Swagger.

The API documentation should describe routes, request payloads, response structures, and possible HTTP status codes.

## 10. Authentication and Authorization

GameTrack will use backend-controlled authentication and authorization.

### Authentication

Users will authenticate using their registered credentials.

Passwords must never be stored in plain text and will be securely hashed before being persisted.

Authentication credentials used by the browser should be stored using secure HTTP-only cookies when applicable.

The exact token and session lifecycle will be defined during the implementation of the authentication module.

### Authorization

Authorization rules will always be enforced by the backend.

The initial application roles are:

- User
- Administrator

Administrative operations will require the appropriate administrator role.

### Resource Ownership

Users may only modify resources they own unless they have explicit administrative permissions.

Examples include reviews, discussions, guides, profile information, and game library entries.

### Route Protection

Protected backend routes will use authentication and authorization mechanisms such as NestJS guards.

Unauthenticated requests to protected resources should be rejected with appropriate HTTP status codes.

## 11. Security Architecture

Security controls will be applied throughout the GameTrack frontend, backend, and data layers.

### Password Security

User passwords must never be stored in plain text.

Passwords will be securely hashed before being persisted.

### Input Validation

All data received from clients must be treated as untrusted and validated by the backend.

### Authorization

Authentication, authorization, role checks, and resource ownership rules must always be enforced by the backend.

Frontend restrictions must not be considered a security boundary.

### Secrets Management

Database credentials, authentication secrets, and external service credentials must be stored in environment variables.

Secrets and `.env` files must not be committed to source control.

### Transport Security

Production communication between clients and application services must use HTTPS.

### Rate Limiting

Sensitive endpoints such as authentication routes should use rate limiting to reduce abuse and automated attacks.

### Error Handling

Internal implementation details, database errors, stack traces, and sensitive information must not be exposed through public API responses.

## 12. Infrastructure and Deployment

GameTrack will separate the frontend, backend, and database into independently deployable components.

### Frontend Hosting

The Next.js frontend will be deployed using a cloud platform suitable for Next.js applications.

Vercel is the initial planned hosting platform.

### Backend Hosting

The NestJS backend will be deployed independently from the frontend.

The specific cloud provider may be selected during the deployment phase according to the project's requirements, cost, and available platform capabilities.

### Database Hosting

PostgreSQL will be hosted using a managed cloud database service.

Neon is the initial planned PostgreSQL provider.

Only the backend will have direct access to database credentials.

### Containerization

The backend will be containerizable using Docker.

Docker will not be required for everyday local development and may primarily be used to provide a reproducible deployment environment.

### Source Control

The project source code will be maintained in GitHub.

Deployments may later be integrated with the GitHub repository to allow automated builds and deployments.

### Environments

Development and production environments will use separate configuration and credentials.

Production secrets and database credentials must never be stored directly in the source code.

### Configuration

Environment-specific configuration will be provided through environment variables.

## 13. Testing Strategy

GameTrack will use automated testing at different levels to protect business rules, data integrity, and critical user flows.

### Unit Tests

Unit tests will focus on isolated application and business logic.

Services and domain rules should be testable without requiring external infrastructure whenever possible.

### Integration Tests

Integration tests will verify the interaction between application components, repositories, Prisma, and a dedicated test database.

### API Tests

Backend endpoints will be tested to verify request validation, authorization rules, HTTP status codes, and API responses.

### End-to-End Tests

End-to-end tests will validate critical user flows through the complete application.

Examples include authentication, adding games to the library, updating game status, and creating reviews.

### Test Isolation

Automated tests must not use the production database.

Dedicated test configuration and test data should be used.

### Testing Priorities

Testing should prioritize:

- Business rules
- Authentication
- Authorization
- Data integrity
- Critical API operations
- Important user workflows

Testing should provide meaningful confidence rather than focusing only on achieving a high coverage percentage.

## 14. CI/CD and Observability

GameTrack will use automated checks to improve code quality and deployment reliability.

### Continuous Integration

GitHub Actions will be used to automatically validate changes pushed to the repository.

The CI pipeline may include:

- Dependency installation
- Linting
- Automated tests
- Application builds

Changes should not be deployed when critical CI checks fail.

### Continuous Deployment

Deployment automation may be introduced after the application reaches a stable deployment workflow.

Initially, deployments may remain manual while continuous integration checks run automatically.

### Logging

The backend will produce structured application logs to help diagnose errors and unexpected behavior.

Logs must not expose passwords, authentication tokens, secrets, or sensitive configuration.

### Error Monitoring

External error monitoring may be introduced for production environments if necessary.

### Health Checks

The backend should expose a health check endpoint that can be used by infrastructure services to verify application availability.

## 15. Architecture Diagrams

The following diagrams provide visual representations of the GameTrack architecture.

### High-Level Architecture

![GameTrack Architecture Diagram](diagrams/gametrack-architecture-diagram.png)

### Backend Architecture

![GameTrack Backend Architecture Diagram](diagrams/gametrack-backend-architecture-diagram.png)
