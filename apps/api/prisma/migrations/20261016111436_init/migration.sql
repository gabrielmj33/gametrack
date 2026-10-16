-- CreateEnum
CREATE TYPE "UserRole" AS ENUM ('USER', 'ADMIN');

-- CreateEnum
CREATE TYPE "GameStatus" AS ENUM ('PLAYING', 'COMPLETED', 'DROPPED');

-- CreateEnum
CREATE TYPE "GamingPlatform" AS ENUM ('STEAM', 'PLAYSTATION', 'XBOX', 'NINTENDO', 'GOG', 'EPIC_GAMES');

-- CreateEnum
CREATE TYPE "FriendshipStatus" AS ENUM ('PENDING', 'ACCEPTED', 'REJECTED');

-- CreateEnum
CREATE TYPE "ReportStatus" AS ENUM ('PENDING', 'REVIEWED', 'RESOLVED', 'DISMISSED');

-- CreateTable
CREATE TABLE "users" (
    "userId" UUID NOT NULL,
    "username" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "passwordHash" TEXT NOT NULL,
    "profilePicture" TEXT,
    "role" "UserRole" NOT NULL DEFAULT 'USER',

    CONSTRAINT "users_pkey" PRIMARY KEY ("userId")
);

-- CreateTable
CREATE TABLE "games" (
    "gameId" UUID NOT NULL,
    "title" TEXT NOT NULL,
    "releaseYear" INTEGER,

    CONSTRAINT "games_pkey" PRIMARY KEY ("gameId")
);

-- CreateTable
CREATE TABLE "game_library_entries" (
    "gameLibraryEntryId" UUID NOT NULL,
    "userId" UUID NOT NULL,
    "gameId" UUID NOT NULL,
    "status" "GameStatus" NOT NULL,
    "rating" INTEGER,
    "startDate" TIMESTAMP(3),
    "completionDate" TIMESTAMP(3),

    CONSTRAINT "game_library_entries_pkey" PRIMARY KEY ("gameLibraryEntryId")
);

-- CreateTable
CREATE TABLE "reviews" (
    "reviewId" UUID NOT NULL,
    "gameLibraryEntryId" UUID NOT NULL,
    "content" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "reviews_pkey" PRIMARY KEY ("reviewId")
);

-- CreateTable
CREATE TABLE "platform_accounts" (
    "platformAccountId" UUID NOT NULL,
    "userId" UUID NOT NULL,
    "platform" "GamingPlatform" NOT NULL,
    "identifier" TEXT NOT NULL,
    "isVisible" BOOLEAN NOT NULL DEFAULT true,

    CONSTRAINT "platform_accounts_pkey" PRIMARY KEY ("platformAccountId")
);

-- CreateTable
CREATE TABLE "friendship" (
    "friendship" UUID NOT NULL,
    "requesterId" UUID NOT NULL,
    "recipientId" UUID NOT NULL,
    "status" "FriendshipStatus" NOT NULL DEFAULT 'PENDING',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "friendship_pkey" PRIMARY KEY ("friendship")
);

-- CreateTable
CREATE TABLE "guides" (
    "guideId" UUID NOT NULL,
    "userId" UUID NOT NULL,
    "gameId" UUID NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "guides_pkey" PRIMARY KEY ("guideId")
);

-- CreateTable
CREATE TABLE "discussions" (
    "discussionId" UUID NOT NULL,
    "userId" UUID NOT NULL,
    "gameId" UUID NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "discussions_pkey" PRIMARY KEY ("discussionId")
);

-- CreateTable
CREATE TABLE "reports" (
    "reportId" UUID NOT NULL,
    "userId" UUID NOT NULL,
    "discussionId" UUID,
    "guideId" UUID,
    "reason" TEXT NOT NULL,
    "status" "ReportStatus" NOT NULL DEFAULT 'PENDING',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "reports_pkey" PRIMARY KEY ("reportId")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_username_key" ON "users"("username");

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "users_passwordHash_key" ON "users"("passwordHash");

-- CreateIndex
CREATE UNIQUE INDEX "game_library_entries_userId_gameId_key" ON "game_library_entries"("userId", "gameId");

-- CreateIndex
CREATE UNIQUE INDEX "reviews_gameLibraryEntryId_key" ON "reviews"("gameLibraryEntryId");

-- CreateIndex
CREATE UNIQUE INDEX "platform_accounts_userId_platform_key" ON "platform_accounts"("userId", "platform");

-- CreateIndex
CREATE UNIQUE INDEX "friendship_requesterId_recipientId_key" ON "friendship"("requesterId", "recipientId");

-- AddForeignKey
ALTER TABLE "game_library_entries" ADD CONSTRAINT "game_library_entries_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "game_library_entries" ADD CONSTRAINT "game_library_entries_gameId_fkey" FOREIGN KEY ("gameId") REFERENCES "games"("gameId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reviews" ADD CONSTRAINT "reviews_gameLibraryEntryId_fkey" FOREIGN KEY ("gameLibraryEntryId") REFERENCES "game_library_entries"("gameLibraryEntryId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "platform_accounts" ADD CONSTRAINT "platform_accounts_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "friendship" ADD CONSTRAINT "friendship_requesterId_fkey" FOREIGN KEY ("requesterId") REFERENCES "users"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "friendship" ADD CONSTRAINT "friendship_recipientId_fkey" FOREIGN KEY ("recipientId") REFERENCES "users"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "guides" ADD CONSTRAINT "guides_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "guides" ADD CONSTRAINT "guides_gameId_fkey" FOREIGN KEY ("gameId") REFERENCES "games"("gameId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discussions" ADD CONSTRAINT "discussions_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "discussions" ADD CONSTRAINT "discussions_gameId_fkey" FOREIGN KEY ("gameId") REFERENCES "games"("gameId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("userId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_discussionId_fkey" FOREIGN KEY ("discussionId") REFERENCES "discussions"("discussionId") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "reports" ADD CONSTRAINT "reports_guideId_fkey" FOREIGN KEY ("guideId") REFERENCES "guides"("guideId") ON DELETE SET NULL ON UPDATE CASCADE;
