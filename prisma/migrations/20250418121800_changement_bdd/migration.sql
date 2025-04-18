/*
  Warnings:

  - You are about to drop the column `description` on the `Pass` table. All the data in the column will be lost.
  - Added the required column `date` to the `Pass` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Pass` DROP COLUMN `description`,
    ADD COLUMN `date` DATETIME(3) NOT NULL;
