/*
  Warnings:

  - You are about to drop the `DatePass` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `DatePass` DROP FOREIGN KEY `DatePass_passId_fkey`;

-- AlterTable
ALTER TABLE `Pass` ADD COLUMN `dates` VARCHAR(191) NULL;

-- DropTable
DROP TABLE `DatePass`;
