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

### UC-012 - View User Profile

**Actor:** Guest, User, Administrator

**Goal:**
- View a user's public profile.

**Preconditions:**
1. None.

**Main Flow**
1. The actor searches for a GameTrack user or accesses a GameTrack profile URL.
2. The system searches for the requested user profile.
3. The system displays the user's public profile.

**Alternative Flows:**
- If the requested user does not exist, the system displays an appropriate error message.

**Postconditions:**
- The actor can view the requested user's public profile.

**Related Requirements:**
- FR-014

### UC-016 - View Discussion

**Actor:** Guest, User, Administrator

**Goal:**
- View a Discussion in comunity tab

**Preconditions:**
- Have the link of the post or access by the comunity tab

**Main Flow:**
1. Guest, user or admin access the comunity page
2. Click in the post
3. Access the poost

**Alternative Flows:**
1. Access a URL of that post has been deleted
2. Return a error

**Postconditions:**
- Access the post

**Related Requirements:**
- FR-015

### UC-003 - Manage Account

**Actor:** User, Administrator

**Goal:**

* Manage account information and account-related settings.

**Preconditions:**

1. The user must be authenticated.

**Main Flow:**

1. The user accesses the account settings.
2. The system displays the current account information.
3. The user modifies the desired information.
4. The system validates the changes.
5. The system saves the updated account information.

**Alternative Flows:**

* If the provided information is invalid, the system displays an appropriate error message.

**Postconditions:**

* The account information has been updated.

**Related Requirements:**

* FR-003

### UC-004 - Manage Profile

**Actor:** User

**Goal:**

* Create and manage personal profile information.

**Preconditions:**

1. The user must be authenticated.

**Main Flow:**

1. The user accesses their profile.
2. The system displays the current profile information.
3. The user adds or modifies profile information.
4. The system validates the provided information.
5. The system saves the updated profile.

**Alternative Flows:**

* If the provided information is invalid, the system displays an appropriate error message.

**Postconditions:**

* The user's profile information has been updated.

**Related Requirements:**

* FR-004

### UC-005 - Manage Gaming Platform IDs

**Actor:** User

**Goal:**

* Add, update, or remove gaming platform identifiers from the user's profile.

**Preconditions:**

1. The user must be authenticated.

**Main Flow:**

1. The user accesses the gaming platform settings.
2. The user selects a supported gaming platform.
3. The user enters or modifies their platform identifier.
4. The system validates the provided information.
5. The system saves the platform identifier.

**Alternative Flows:**

* If the platform is not supported, the system prevents the operation.
* If the identifier is invalid, the system displays an appropriate error message.

**Postconditions:**

* The user's gaming platform identifier has been updated.

**Related Requirements:**

* FR-005

### UC-006 - Add Game to Library

**Actor:** User

**Goal:**

* Add a game to the user's personal game library.

**Preconditions:**

1. The user must be authenticated.
2. The requested game must exist in the GameTrack game database.

**Main Flow:**

1. The user searches for a game.
2. The system displays the matching game.
3. The user selects the game.
4. The user chooses to add the game to their library.
5. The system adds the game to the user's library.

**Alternative Flows:**

* If the game does not exist, the system displays an appropriate message.
* If the game is already in the user's library, the system informs the user.

**Postconditions:**

* The selected game is added to the user's library.

**Related Requirements:**

* FR-006

### UC-007 - Remove Game from Library

**Actor:** User

**Goal:**

* Remove a game from the user's personal library.

**Preconditions:**

1. The user must be authenticated.
2. The game must exist in the user's library.

**Main Flow:**

1. The user accesses their game library.
2. The user selects a game.
3. The user chooses to remove the game.
4. The system removes the game from the user's library.

**Alternative Flows:**

* If the game is not in the user's library, the system prevents the operation.

**Postconditions:**

* The selected game is no longer in the user's library.

**Related Requirements:**

* FR-007

### UC-008 - Update Game Status

**Actor:** User

**Goal:**

* Update the current status of a game in the user's library.

**Preconditions:**

1. The user must be authenticated.
2. The game must exist in the user's library.

**Main Flow:**

1. The user selects a game from their library.
2. The user selects a new status.
3. The system validates the selected status.
4. The system updates the game's status.

**Alternative Flows:**

* If the selected status is invalid, the system displays an appropriate error message.

**Postconditions:**

* The game's status has been updated.

**Related Requirements:**

* FR-008

### UC-009 - Rate Game

**Actor:** User

**Goal:**

* Assign a personal rating to a game.

**Preconditions:**

1. The user must be authenticated.
2. The game must exist in the user's library.

**Main Flow:**

1. The user selects a game from their library.
2. The user selects a rating.
3. The system validates the rating.
4. The system saves the rating.

**Alternative Flows:**

* If the rating is outside the allowed range, the system displays an appropriate error message.

**Postconditions:**

* The user's rating is associated with the selected game.

**Related Requirements:**

* FR-009

### UC-010 - Write Game Review

**Actor:** User

**Goal:**

* Write a personal review for a game.

**Preconditions:**

1. The user must be authenticated.
2. The game must exist in the user's library.

**Main Flow:**

1. The user selects a game from their library.
2. The user chooses to write a review.
3. The user enters the review content.
4. The system validates the content.
5. The system saves the review.

**Alternative Flows:**

* If the review does not meet the system requirements, the system displays an appropriate error message.

**Postconditions:**

* The review is associated with the selected game and user.

**Related Requirements:**

* FR-010

### UC-011 - Record Game Dates

**Actor:** User

**Goal:**

* Record the start and completion dates of a game.

**Preconditions:**

1. The user must be authenticated.
2. The game must exist in the user's library.

**Main Flow:**

1. The user selects a game.
2. The user enters the game start date.
3. The user optionally enters the completion date.
4. The system validates the dates.
5. The system saves the dates.

**Alternative Flows:**

* If the completion date occurs before the start date, the system displays an appropriate error message.

**Postconditions:**

* The game's recorded dates have been updated.

**Related Requirements:**

* FR-011

### UC-013 - Send Friend Request

**Actor:** User

**Goal:**

* Send a friendship request to another user.

**Preconditions:**

1. The user must be authenticated.
2. The target user must exist.
3. The target user must not already be a friend.

**Main Flow:**

1. The user accesses another user's profile.
2. The user selects the friendship option.
3. The system creates a friendship request.
4. The system notifies the target user.

**Alternative Flows:**

* If a friendship request already exists, the system informs the user.
* If the users are already friends, the system prevents the operation.

**Postconditions:**

* A friendship request has been created.

**Related Requirements:**

* FR-012

### UC-014 - Manage Friend Request

**Actor:** User

**Goal:**

* Accept or reject a received friendship request.

**Preconditions:**

1. The user must be authenticated.
2. The user must have a pending friendship request.

**Main Flow:**

1. The user accesses their friendship requests.
2. The user selects a pending request.
3. The user chooses to accept or reject the request.
4. The system processes the selected action.

**Alternative Flows:**

* If the request is no longer available, the system informs the user.

**Postconditions:**

* The friendship request has been accepted or rejected.

**Related Requirements:**

* FR-013

### UC-015 - Remove Friend

**Actor:** User

**Goal:**

* Remove an existing friendship.

**Preconditions:**

1. The user must be authenticated.
2. The target user must be an existing friend.

**Main Flow:**

1. The user accesses their friends list.
2. The user selects a friend.
3. The user chooses to remove the friendship.
4. The system removes the friendship.

**Postconditions:**

* The friendship no longer exists.

**Related Requirements:**

* FR-014

### UC-017 - Create Discussion

**Actor:** User

**Goal:**

* Create a discussion post in the GameTrack community.

**Preconditions:**

1. The user must be authenticated.
2. The selected game must exist in the GameTrack game database.

**Main Flow:**

1. The user accesses the community.
2. The user selects the option to create a discussion.
3. The user selects the related game.
4. The user enters the discussion title and content.
5. The system validates the provided information.
6. The system creates the discussion post.

**Alternative Flows:**

* If the required information is invalid, the system displays an appropriate error message.
* If the selected game does not exist, the system prevents the post from being created.

**Postconditions:**

* A new discussion post has been created and associated with the selected game.

**Related Requirements:**

* FR-017

### UC-018 - Edit Discussion

**Actor:** User

**Goal:**

* Edit a discussion created by the user.

**Preconditions:**

1. The user must be authenticated.
2. The discussion must belong to the user.

**Main Flow:**

1. The user accesses one of their discussions.
2. The user selects the edit option.
3. The user modifies the discussion content.
4. The system validates the changes.
5. The system saves the updated discussion.

**Alternative Flows:**

* If the discussion does not belong to the user, the system prevents the modification.

**Postconditions:**

* The discussion has been updated.

**Related Requirements:**

* FR-018

### UC-019 - Delete Discussion

**Actor:** User

**Goal:**

* Delete a discussion created by the user.

**Preconditions:**

1. The user must be authenticated.
2. The discussion must belong to the user.

**Main Flow:**

1. The user accesses one of their discussions.
2. The user selects the delete option.
3. The system requests confirmation.
4. The user confirms the deletion.
5. The system removes the discussion.

**Alternative Flows:**

* If the user cancels the operation, the discussion remains unchanged.

**Postconditions:**

* The discussion is no longer available.

**Related Requirements:**

* FR-019

### UC-020 - View Guide

**Actor:** Guest, User, Administrator

**Goal:**

* View a gaming guide published in the GameTrack community.

**Preconditions:**

1. None.

**Main Flow:**

1. The actor searches for a guide or accesses a guide through the community.
2. The system searches for the requested guide.
3. The system displays the guide and its related game.

**Alternative Flows:**

* If the requested guide does not exist, the system displays an appropriate error message.

**Postconditions:**

* The actor can view the requested guide.

**Related Requirements:**

* FR-020

### UC-021 - Create Guide

**Actor:** User

**Goal:**

* Create a gaming guide in the GameTrack community.

**Preconditions:**

1. The user must be authenticated.
2. The selected game must exist in the GameTrack game database.

**Main Flow:**

1. The user accesses the community.
2. The user selects the option to create a guide.
3. The user selects the related game.
4. The user enters the guide title and content.
5. The system validates the provided information.
6. The system creates the guide.

**Alternative Flows:**

* If the required information is invalid, the system displays an appropriate error message.
* If the selected game does not exist, the system prevents the guide from being created.

**Postconditions:**

* A new guide has been created and associated with the selected game.

**Related Requirements:**

* FR-021

### UC-022 - Edit Guide

**Actor:** User

**Goal:**

* Edit a guide created by the user.

**Preconditions:**

1. The user must be authenticated.
2. The guide must belong to the user.

**Main Flow:**

1. The user accesses one of their guides.
2. The user selects the edit option.
3. The user modifies the guide content.
4. The system validates the changes.
5. The system saves the updated guide.

**Alternative Flows:**

* If the guide does not belong to the user, the system prevents the modification.

**Postconditions:**

* The guide has been updated.

**Related Requirements:**

* FR-022

### UC-023 - Delete Guide

**Actor:** User

**Goal:**

* Delete a guide created by the user.

**Preconditions:**

1. The user must be authenticated.
2. The guide must belong to the user.

**Main Flow:**

1. The user accesses one of their guides.
2. The user selects the delete option.
3. The system requests confirmation.
4. The user confirms the deletion.
5. The system removes the guide.

**Alternative Flows:**

* If the user cancels the operation, the guide remains unchanged.

**Postconditions:**

* The guide is no longer available.

**Related Requirements:**

* FR-023

### UC-024 - Report Community Content

**Actor:** User

**Goal:**

* Report community content that violates the platform rules.

**Preconditions:**

1. The user must be authenticated.
2. The reported content must exist.

**Main Flow:**

1. The user accesses a community post or guide.
2. The user selects the report option.
3. The user provides a reason for the report.
4. The system validates the report.
5. The system creates a content report.

**Alternative Flows:**

* If the content has already been removed, the system informs the user that the report can no longer be submitted.

**Postconditions:**

* A report has been created for the selected community content.

**Related Requirements:**

* FR-024

### UC-025 - Manage Users

**Actor:** Administrator

**Goal:**

* Manage GameTrack user accounts when administrative action is required.

**Preconditions:**

1. The administrator must be authenticated.
2. The administrator must have administrative permissions.

**Main Flow:**

1. The administrator accesses the user management area.
2. The administrator searches for a user.
3. The system displays the user's relevant administrative information.
4. The administrator selects an administrative action.
5. The system validates the administrator's permissions.
6. The system performs the selected action.

**Alternative Flows:**

* If the administrator does not have sufficient permissions, the system prevents the action.

**Postconditions:**

* The selected administrative action has been performed.

**Related Requirements:**

* FR-025

### UC-026 - Review Content Report

**Actor:** Administrator

**Goal:**

* Review a report submitted about community content.

**Preconditions:**

1. The administrator must be authenticated.
2. The administrator must have administrative permissions.
3. A community content report must exist.

**Main Flow:**

1. The administrator accesses the content reports.
2. The administrator selects a report.
3. The system displays the reported content and report information.
4. The administrator reviews the report.
5. The administrator decides whether further moderation is required.

**Alternative Flows:**

* If the reported content is no longer available, the administrator can close the report.

**Postconditions:**

* The report has been reviewed and assigned an appropriate status.

**Related Requirements:**

* FR-026

### UC-027 - Moderate Community Content

**Actor:** Administrator

**Goal:**

* Moderate community content that violates GameTrack rules.

**Preconditions:**

1. The administrator must be authenticated.
2. The administrator must have administrative permissions.
3. The content must exist.

**Main Flow:**

1. The administrator accesses reported community content.
2. The administrator reviews the content.
3. The administrator determines whether the content violates platform rules.
4. The administrator selects an appropriate moderation action.
5. The system applies the selected action.
6. The system records the moderation action.

**Alternative Flows:**

* If the content does not violate platform rules, the administrator can dismiss the report.

**Postconditions:**

* The community content has been moderated or the report has been dismissed.

**Related Requirements:**

* FR-027

