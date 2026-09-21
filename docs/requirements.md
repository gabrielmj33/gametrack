# GameTrack — Requirements

## 1. Functional Requirements

### FR-001 — User Registration

The system shall allow a new user to create a GameTrack account by providing the required registration information.

### FR-002 — User Login

The system shall allow a registered user to log in to their GameTrack account using valid credentials.

### FR-003 — Create Profile

The system shall allow a user to create and manage their GameTrack profile, including a profile photo.

### FR-004 — Add Steam ID

The system shall allow a user to add their Steam ID to their GameTrack profile.

### FR-005 — Add Xbox Gamertag

The system shall allow a user to add their Xbox Gamertag to their GameTrack profile.

### FR-006 — Add PlayStation ID

The system shall allow a user to add their PlayStation ID to their GameTrack profile.

### FR-007 — Add Nintendo ID

The system shall allow a user to add their Nintendo ID to their GameTrack profile.

### FR-008 — Add GOG ID

The system shall allow a user to add their GOG ID to their GameTrack profile.

### FR-009 — Add Epic Games Account

The system shall allow a user to add their Epic Games account identifier to their GameTrack profile.

### FR-010 — Add Game

The system shall allow a user to add games to their personal library.

### FR-011 — Remove Game

The system shall allow a user to remove games from their personal library.

### FR-012 — Mark Game as Playing

The system shall allow a user to mark a game as currently playing.

### FR-013 — Mark Game as Completed

The system shall allow a user to mark a game as completed.

### FR-014 — Mark Game as Dropped

The system shall allow a user to mark a game as dropped.

### FR-015 — Rate Game

The system shall allow a user to rate a game using a rating from 1 to 10.

### FR-016 — Write Game Review

The system shall allow a user to write and manage a review for a game in their personal library.

### FR-017 — Record Game Start Date

The system shall allow a user to record the date they started playing a game.

### FR-018 — Record Game Completion Date

The system shall allow a user to record the date they completed a game.

### FR-019 — Add Friends

The system shall allow a user to send friendship requests to other GameTrack users.

### FR-020 — Manage Friend Requests

The system shall allow a user to accept or reject received friendship requests.

### FR-021 — Remove Friend

The system shall allow a user to remove an existing friendship.

### FR-022 — View User Profile

The system shall allow guests, users, and administrators to access publicly available GameTrack profiles.

### FR-023 — View Community Content

The system shall allow guests, users, and administrators to view publicly available community content.

### FR-024 — Create Discussion

The system shall allow authenticated users to create discussion posts related to a specific game.

### FR-025 — Edit Discussion

The system shall allow users to edit discussion posts they have created.

### FR-026 — Delete Discussion

The system shall allow users to delete discussion posts they have created.

### FR-027 — Create Guide

The system shall allow authenticated users to create gaming guides related to a specific game.

### FR-028 — Edit Guide

The system shall allow users to edit guides they have created.

### FR-029 — Delete Guide

The system shall allow users to delete guides they have created.

### FR-030 — Report Community Content

The system shall allow authenticated users to report community content that violates GameTrack rules.

### FR-031 — Manage Users

The system shall allow administrators to manage GameTrack user accounts.

### FR-032 — Review Content Reports

The system shall allow administrators to review reports submitted about community content.

### FR-033 — Moderate Community Content

The system shall allow administrators to moderate community content that violates GameTrack rules.

## 2. Non-Functional Requirements

### NFR-001 — Security

The system shall securely store user credentials and protect sensitive user information.

### NFR-002 — Performance

The system should provide a responsive experience for users during normal operation.

### NFR-003 — Usability

The system should provide an intuitive interface that allows users to manage their game library and community content with minimal effort.

### NFR-004 — Maintainability

The system should be structured in a way that allows future features and modifications to be implemented without unnecessary changes to unrelated components.

### NFR-005 — Availability

The system should be available to users whenever the service is operational, except during planned maintenance or unexpected service interruptions.

## 3. User Roles

### Guest

A guest is an unauthenticated visitor who can access the public areas of GameTrack.

The guest user may:

* Access the public pages of the platform.
* View publicly available user profiles.
* View publicly available game information.
* View community discussions.
* View community guides.

The guest user may not:

* Manage a personal game library.
* Add or modify gaming platform identifiers.
* Rate games.
* Write game reviews.
* Send or manage friendship requests.
* Create discussion posts.
* Create gaming guides.
* Interact with community content in ways that require authentication.
* Modify user account information.

### User

A user is an authenticated GameTrack account holder who can manage their personal gaming information and participate in the GameTrack community.

The user may:

#### Profile and Account

* Manage their personal profile.
* Manage their account information.
* Add and manage gaming platform identifiers.
* Choose which platform identifiers are displayed on their public profile.

#### Game Library

* Manage their personal game library.
* Add games to their library.
* Remove games from their library.
* Change the status of games.
* Rate games.
* Write and manage game reviews.
* Record game start dates.
* Record game completion dates.

#### Social Features

* View other users' public profiles.
* Send friendship requests.
* Accept or reject friendship requests.
* Remove existing friendships.

#### Community

* View community discussions.
* Create discussion posts.
* Edit their own discussion posts.
* Delete their own discussion posts.
* View community guides.
* Create gaming guides.
* Edit their own gaming guides.
* Delete their own gaming guides.
* Report community content that violates platform rules.

A user may only modify content and personal information they own, unless the system explicitly grants them additional permissions.

### Administrator

An administrator is an authorized user responsible for managing and moderating the GameTrack platform.

The administrator may:

#### User Management

* Manage user accounts.
* Suspend or restrict user accounts when required.
* Perform administrative actions necessary to maintain the platform.

#### Community Moderation

* Review reported community content.
* Moderate discussion posts.
* Moderate gaming guides.
* Remove community content that violates platform rules.
* Take appropriate action against users who repeatedly violate community rules.

#### Platform Management

* Manage platform-level data and configurations.
* Perform administrative actions required to maintain the GameTrack platform.
* Access administrative functionality unavailable to regular users.

Administrators are subject to the same platform rules as other users when interacting with community content, except when performing authorized moderation or administrative actions.

## 4. System Constraints

* The GameTrack system must operate as a web-based application accessible through modern web browsers.

* The system must require user authentication for actions that modify personal data, gaming libraries, reviews, friendships, or community content.

* Users must only be allowed to modify data and content they own, unless they have authorized administrative permissions.

* Community content must be subject to moderation mechanisms to allow administrators to handle content that violates the platform's rules.

* The system must protect user credentials and sensitive account information from unauthorized access.

* The system should be designed with a modular structure that allows additional gaming platforms, community features, and game-related functionality to be added in future versions.

* The initial version of the system should prioritize the core gaming tracking and community functionality rather than attempting to integrate with every external gaming platform.
