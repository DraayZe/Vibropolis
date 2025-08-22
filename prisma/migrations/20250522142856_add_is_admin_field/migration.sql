/*
  Warnings:

  - You are about to drop the column `role` on the `Utilisateur` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `Utilisateur` DROP COLUMN `role`,
    ADD COLUMN `isAdmin` BOOLEAN NOT NULL DEFAULT false;
