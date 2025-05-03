-- AlterTable
ALTER TABLE `Artiste` ADD COLUMN `instagram` VARCHAR(191) NULL,
    ADD COLUMN `spotify` VARCHAR(191) NULL,
    ADD COLUMN `tiktok` VARCHAR(191) NULL,
    ADD COLUMN `youtube` VARCHAR(191) NULL,
    MODIFY `description` VARCHAR(500) NOT NULL;
