# GameTrack — Requirements

## 1. Functional Requirements

### FR-001 — User Registration.
The system shall allow a new user to create a GameTrack account by providing the required registration information.

### FR-002 — User Login.
The system must be able to log the user in.

### FR-003 — Create Profile.
The user must be able to create their GameTrack profile with a photo

### FR-004 — Add Steam ID.
The user must be able to link their Steam account to their profile.

### FR-004 — Add Xbox Gamertag.
The user must be able to link their Xbox Gamertag to their profile.

### FR-004 — Add Playstation ID.
The user must be able to link their Playstation account to their profile.

### FR-004 — Add Nintendo ID.
The user must be able to link their Nintendo account to their profile.

### FR-004 — Add Epic Games Account.
The user must be able to link their Epic Games account to their profile.

### FR-005 — Add Games.
The user must be able to add games to their profile.

### FR-006 — Mark Game as "Complete".
The user must be able to mark the game as completed.

### FR-007 — Mark Game as "Dropped".
The user must be able to mark the game as dropped.

### FR-008 — Mark Game as "Incomplete".
The user must be able to mark the game as incomplete.

### FR-009 — Rank the Game 1 to 10.
The user must be able to rank the game.

### FR-010 — Write a review about the game.
The user must be able to write a review about the game.

### FR-011 — Game start date.
The player must be able to enter the date they started playing the game.

### FR-012 — Game finish date.
The player must be able to enter the date they finished playing the game.

### FR-013 — Add friends.
The player must be able to add other users as friends.

## 2. Non-Functional Requirements

### NFR-001 — Security
The system shall securely store user credentials and protect sensitive user information.

### NFR-002 — Performance
The system should provide a responsive experience for users during normal operation.

### NFR-003 — Usability
The system should provide an intuitive interface that allows users to manage their game library with minimal effort.

### NFR-004 — Maintainability
The system should be structured in a way that allows future features and modifications to be implemented without unnecessary changes to unrelated components.

### NFR-005 — Availability
The system should be available to users whenever the service is operational, except during planned maintenance or unexpected service interruptions.

## 3. User Roles

### Guest

A guest is an unauthenticated visitor who can access the public areas of GameTrack.

The guest user may:

- Access the public pages of the platform.
- View publicly available user profiles.
- View publicly available game information.
- View community discussions.
- View community guides.

The guest user may not:

- Create a GameTrack account on behalf of another user.
- Manage a personal game library.
- Add or modify gaming platform identifiers.
- Rate games.
- Write game reviews.
- Send or manage friendship requests.
- Create discussion posts.
- Create gaming guides.
- Interact with community content in ways that require authentication.
- Modify user account information.

### User

A user is an authenticated GameTrack account holder who can manage their personal gaming information and participate in the GameTrack community.

The user may:

- Profile and Account
- Manage their personal profile.
- Manage their account information.
- Add and manage gaming platform identifiers.
- Choose which platform identifiers are displayed on their public profile.
- Game Library
- Manage their personal game library.
- Add games to their library.
- Remove games from their library.
- Change the status of games.
- Rate games.
- Write and manage game reviews.
- Record game start dates.
- Record game completion dates.
- Social Features
- View other users' public profiles.
- Send friendship requests.
- Accept or reject friendship requests.
- Remove existing friendships.
- Access the Community
- View community discussions.
- Create discussion posts.
- Edit their own discussion posts.
- Delete their own discussion posts.
- View community guides.
- Create gaming guides.
- Edit their own gaming guides.
- Delete their own gaming guides.
- Interact with community content according to the platform's defined interaction rules.
- Report community content that violates platform rules.

A user may only modify content and personal information they own, unless the system explicitly grants them additional permissions.

### Administrator

An administrator is an authorized user responsible for managing and moderating the GameTrack platform.

The administrator may:

- User Management
- Manage user accounts.
- Suspend or restrict user accounts when required.
- Perform administrative actions necessary to maintain the platform.
- Community Moderation
- Review reported community content.
- Moderate discussion posts.
- Moderate gaming guides.
- Remove community content that violates platform rules.
- Take appropriate action against users who repeatedly violate community rules.
- Platform Management
- Manage platform-level data and configurations.
- Perform administrative actions required to maintain the GameTrack platform.
- Access administrative functionality unavailable to regular users.

Administrators are subject to the same platform rules as other users when interacting with community content, except when performing authorized moderation or administrative actions.

## 4. System Constraints
