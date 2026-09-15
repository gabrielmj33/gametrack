## 1. Project Vision.
GameTrack is a platform designed for gamers across all platforms to post reviews of the games they have played or are currently playing. 
The goal is for GameTrack to serve not only as a review site but also as a community hub, bringing gamers together through dedicated tabs for guides and discussions about the titles they are playing or have played.

## 2. Problem.
The problem I want to solve is the issue of "gaming bubbles": someone who played *Diablo 3* on the Switch is unlikely to read a review by someone who played it on PlayStation, and it is even less likely that these two people would ever meet, discuss the game, or help each other out with things like class guides.
With this platform, I aim to solve this problem and bring gamers from different platforms closer together, while also making it easier for them to organize their progress across the various platforms they play on.

## 3. Solution.
GameTrack will allow you to catalog the games you’ve finished, are currently playing, or have dropped.
It will also let you create discussions and guides for the games you’ve just cataloged, enabling you to discuss and share experiences with others regarding the games you’ve beaten and enjoyed so much.

## 4. Target Audience.
GameTrack is primarily intended for players who want to organize and document their gaming experiences and share with another players.
The initial target audience includes:

- Gamers who want to track their progress across all platforms
- Gamers looking for someone to talk to about that game they just played.
- Gamers looking for guides/walkthroughs

## 5. Objectives.
The main objectives of GameTrack are:

- Provide users with a centralized gaming profile.
- Allow users to organize their personal game library.
- Allow users to track the current status of each game.
- Allow users to record personal ratings and reviews.
- Allow users to record relevant gaming dates.
- Allow users to associate gaming account identifiers from different platforms.
- Provide a simple and intuitive user experience.
- Establish a foundation for future social and community-oriented features.
- Demonstrate the application of software engineering principles through a complete software project.

## 6. Core Features.
The initial version of GameTrack will contain the following core features:

- User Profile

- Users will have a personal profile containing their basic information and gaming-related data.

Gaming Platform Accounts

Users will be able to associate identifiers from supported gaming platforms with their GameTrack profile.

Initially supported platforms are expected to include:

- PlayStation
- Xbox
- Steam
- Nintendo
- GOG
- Epic Games

Users will be able to designate which platform identifiers should be prominently displayed on their profile.

Game Library

Users will be able to maintain a personal library containing the games they want to track.

Game Status

Each game in a user's library can have a status representing the user's relationship with that game.

Initial statuses:

- Playing
- Completed
- Dropped
- Ratings

Users will be able to assign a personal rating to games in their library.

Reviews

Users will be able to write personal reviews for games they have added to their library.

Start and Completion Dates

Users will be able to record when they started and completed a game.

Friends

Users will be able to establish friendships with other GameTrack users.

The initial friendship system will focus on connecting users and viewing relevant profile information.

Community tab:

- Discussion topic linked to the game
- Guide page linked to the game

## 7. MVP Scope.

The Minimum Viable Product (MVP) will focus on the fundamental functionality required to make GameTrack usable as a personal gaming tracking platform.

The MVP will include:

- User registration and authentication.
- User profile.
- Gaming platform identifiers.
- Game library.
- Game status management.
- Personal game ratings.
- Game reviews.
- Start and completion dates.
- Basic friendship functionality.
- Basic profile visualization.
- Basic game information and library organization.
- Game discussion tabs.

## 8. Out of Scope.
The following features will not be part of the initial MVP:

- Automatic synchronization with external gaming accounts.
- Automatic achievement synchronization.
- Automatic trophy synchronization.
- Game price tracking.
- Game purchasing.
- Direct integration with gaming stores.
- Real-time multiplayer functionality.
- Private messaging.
- Advanced social feeds.
- Recommendation algorithms.
- Advanced statistics and analytics.
- Mobile applications.
- Monetization systems.

These features may be considered for future versions after the core platform has been implemented and evaluated.

## 9. Business Rule.
The initial business rules of GameTrack include:

- Each user must have a unique account.
- A user can have multiple games in their personal library.
- A game can exist in the library of multiple users.
- A user can assign one current status to each game in their library.
- A user can rate a game according to the platform's defined rating system.
- A user can write a review for a game in their library.
- A user can define a start date for a game.
- A user can define a completion date for a game.
- A completion date should not occur before the start date.
- Platform identifiers must belong to supported gaming platforms.
- A user cannot associate the same platform identifier multiple times with the same platform.
- Friendship relationships must follow the rules defined by the platform's friendship system.
- Users can only modify information belonging to their own accounts and libraries.

These rules will be refined during the requirements analysis and domain modeling phases.

## 10. Differenciators

What sets GameTrack apart isn't just that it’s a site bringing together all existing gaming platforms—though that is certainly very useful for gamers.

The idea is to foster a united community on the site, where gamers can share their experiences and post their guides in an organized way.

## 11. User Flow.
11. User Flow

The initial user experience is expected to follow this general flow:

User:
- Register
- Create / Configure Profile
- Add Gaming Platform IDs
- Add Games to Library
- Define Game Status
- Record Start / Completion Dates
- Rate Games
-  Write Reviews
- Connect with Other Users

A typical user interaction with a game may follow:

Game:
- Add to Library
- Set Status → Playing
- Set Start Date
- Play
- Set Status → Completed
- Set Completion Date
- Rate Game
- Write Review

Community Post:
- Create a post
- Title 
- Description  
- Select the game that is the subject of the post.

Community Guide:
- Create a guide
- Title 
- Create chapters
- Chapter description
- Select the game that is the subject of the post.

This flow represents the expected high-level behavior of the system and will be refined during requirements analysis.

## 12. Future Expansion
After the MVP has been successfully implemented, GameTrack may be expanded with additional functionality.

Potential future features include:

- Achievement and trophy tracking.
- Automatic synchronization with gaming platforms.
- Advanced gaming statistics.
- Gaming activity timeline.
- Social feed.
- Comments and reactions.
- Private messaging.
- Game recommendations.
- Advanced search and filtering.
- Custom game lists.
- Backlog prioritization.
- Playtime tracking.
- Multiple gaming profiles or identities.
- Mobile applications.
- Public APIs.
- Integration with additional gaming platforms.
- Community features.
- Personalized dashboards.

Future features will be evaluated based on user needs, technical feasibility, project complexity, and the goals of the platform.

## FINAL CONSIDERATION

I’m using AI to help develop *everything* in this project. It’s my first portfolio project; I welcome tips and am eager to learn and keep improving.

Note that I use AI to assist me, not to do everything for me—which is exactly how it should be.
