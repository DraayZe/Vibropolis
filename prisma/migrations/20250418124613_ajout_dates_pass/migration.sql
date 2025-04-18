/*
  Warnings:

  - You are about to drop the column `date` on the `Pass` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `Pass` DROP COLUMN `date`;

-- CreateTable
CREATE TABLE `DatePass` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `date` DATETIME(3) NOT NULL,
    `passId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `DatePass` ADD CONSTRAINT `DatePass_passId_fkey` FOREIGN KEY (`passId`) REFERENCES `Pass`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
