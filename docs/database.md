# Database Design

## 1. Overview

This document describes the database structure of GameTrack.

The database is responsible for storing users, games, personal game libraries, reviews, friendships, platform accounts, community content, and reports.

---

## 2. Tables

### 2.1 User

Purpose: Stores registered GameTrack users.

Fields:

- userId
- username
- email
- passwordHash
- profilePicture

Primary Key:
- userId

Constraints:
- username must be unique
- email must be unique

---

### 2.2 Game

Purpose: Stores games available in GameTrack.

Fields:

- gameId
- title
- releaseYear

Primary Key:
- gameId

---

### 2.3 GameLibraryEntry

Purpose: Represents a game added to a user's personal library.

Fields:

- gameLibraryEntryId
- userId
- gameId
- status
- rating
- startDate
- completionDate

Primary Key:
- gameLibraryEntryId

Foreign Keys:
- userId → User.userId
- gameId → Game.gameId

---

### 2.4 Review

Purpose: Stores a review written for a game library entry.

Fields:

- reviewId
- gameLibraryEntryId
- content
- createdAt
- updatedAt

Primary Key:
- reviewId

Foreign Keys:
- gameLibraryEntryId → GameLibraryEntry.gameLibraryEntryId

---

### 2.5 PlatformAccount

Purpose: Stores gaming platform accounts linked to a user.

Fields:

- platformAccountId
- userId
- platform
- identifier
- isVisible

Primary Key:
- platformAccountId

Foreign Keys:
- userId → User.userId

---

### 2.6 Friendship

Purpose: Represents a friendship request or friendship between two users.

Fields:

- friendshipId
- requesterId
- recipientId
- status
- createdAt

Primary Key:
- friendshipId

Foreign Keys:
- requesterId → User.userId
- recipientId → User.userId

---

### 2.7 Discussion

Purpose: Stores community discussion posts related to games.

Fields:

- discussionId
- userId
- gameId
- title
- content
- createdAt
- updatedAt

Primary Key:
- discussionId

Foreign Keys:
- userId → User.userId
- gameId → Game.gameId

---

### 2.8 Guide

Purpose: Stores guides created by users and related to games.

Fields:

- guideId
- userId
- gameId
- title
- content
- createdAt
- updatedAt

Primary Key:
- guideId

Foreign Keys:
- userId → User.userId
- gameId → Game.gameId

---

### 2.9 Report

Purpose: Stores reports submitted against community content.

Fields:

- reportId
- userId
- discussionId
- guideId
- reason
- status
- createdAt

Primary Key:
- reportId

Foreign Keys:
- userId → User.userId
- discussionId → Discussion.discussionId
- guideId → Guide.guideId

Rules:
- A report must reference either a discussion or a guide.
- A report must not reference both at the same time.
