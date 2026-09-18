## 1. Actors

### Guest

An unauthenticated visitor who can access public GameTrack content.

### User

An authenticated user who can manage personal gaming information and participate in the GameTrack community.

### Administrator

An authorized user responsible for platform administration and community moderation.

## 2. Use Case List

## Account Management:
- UC-001 — Register Account
- UC-002 — Log In
- UC-003 — Manage Account
- Profile Management
- UC-004 — Manage Profile
- UC-005 — Manage Gaming Platform IDs
  
## Game Library
- UC-006 — Add Game to Library
- UC-007 — Remove Game from Library
- UC-008 — Update Game Status
- UC-009 — Rate Game
- UC-010 — Write Game Review
- UC-011 — Record Game Dates
  
## Social Features
- UC-012 — View User Profile
- UC-013 — Send Friend Request
- UC-014 — Manage Friend Request
- UC-015 — Remove Friend
  
## Community
- UC-016 — View Discussion
- UC-017 — Create Discussion
- UC-018 — Edit Discussion
- UC-019 — Delete Discussion
- UC-020 — View Guide
- UC-021 — Create Guide
- UC-022 — Edit Guide
- UC-023 — Delete Guide
- UC-024 — Report Community Content
  
## Administration
- UC-025 — Manage Users
- UC-026 — Review Content Report
- UC-027 — Moderate Community Content

## 3. Use Case Descriptions

## UC-001 - Register Account

**Actor:** Guest

**Goal:**
Create a new GameTrack account.

**Preconditions:**
- This user is not authenticated.
- The registration page is accessible

**Main Flow:**
1. The guest access the registration page.
2. The guest provides the required registration information.
3. The system validates the provided information.
4. The system creates the user account.
5. the system confirms the successful registration.

**Alternative Flows:**
- If the provided information is invalid, the system displays an appropriate validation message.
- If the email or username is already registered, the system informs the guest and does not create the account.

**Postconditions:**
- A new GameTrack user account has been created.

**Related Requirements:**
- FR-001

## UC-002 - Log In

**Actor:** Guest

**Goal:**
- Log In to an existing account

**Preconditions:**
1. The guest must have an existing GameTrack account.
2. The login page must be accessible.

**Main Flow**
1. The guest accesses the login page.
2. The guest enters their email and password.
3. The system validates the provided credentials.
4. The system authenticates the guest.
5. The system grants access to the user's account.

**Alternative Flows:**
- If the provided email or password does not match the stored credentials, the system displays an appropriate message.

**Postconditions:**
- The guest is authenticated and logged in to the account.

**Related Requirements:**
- FR-002
