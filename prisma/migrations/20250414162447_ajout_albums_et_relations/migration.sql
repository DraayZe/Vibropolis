/*
  Warnings:

  - You are about to drop the column `album` on the `Artiste` table. All the data in the column will be lost.
  - Made the column `description` on table `Artiste` required. This step will fail if there are existing NULL values in that column.
  - Made the column `datePerformance` on table `Artiste` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `Artiste` DROP COLUMN `album`,
    MODIFY `description` VARCHAR(191) NOT NULL,
    MODIFY `datePerformance` DATETIME(3) NOT NULL;

-- CreateTable
CREATE TABLE `Album` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `titre` VARCHAR(191) NOT NULL,
    `dateSortie` DATETIME(3) NOT NULL,
    `artisteId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Album` ADD CONSTRAINT `Album_artisteId_fkey` FOREIGN KEY (`artisteId`) REFERENCES `Artiste`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
