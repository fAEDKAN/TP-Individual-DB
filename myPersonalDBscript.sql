-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema myPersonalDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `myPersonalDB` DEFAULT CHARACTER SET utf8 ;
USE `myPersonalDB` ;

-- -----------------------------------------------------
-- Table `myPersonalDB`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myPersonalDB`.`users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES (1, 'dmartygin0', 'wkeningham0@state.tx.us'),(2, 'wquarlis1', 'nkharchinski1@linkedin.com'),(3, 'gtattoo2', 'fmassey2@webmd.com'),(4, 'rfilipiak3', 'mbugbird3@ezinearticles.com'),(5, 'cstrutton4', 'skarolowski4@sogou.com'),(6, 'ccobelli5', 'aschiesterl5@jigsy.com'),(7, 'mbrinsford6', 'lduckerin6@umich.edu'),(8, 'tgoodred7', 'bnoah7@java.com'),(9, 'rjenkins8', 'dough8@ucsd.edu'),(10, 'dkynman9', 'mseeler9@vk.com');

-- -----------------------------------------------------
-- Table `myPersonalDB`.`notes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myPersonalDB`.`notes` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `description` TEXT NOT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT NULL,
  `created_at` TIMESTAMP NULL DEFAULT NULL,
  `user_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_notes_users_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_notes_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `myPersonalDB`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

--
-- Dumping data for table `notes`
--

INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (1, 'Lamiaceae', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', null, null, 1);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (2, 'Ranunculaceae', 'Aliquam non mauris. Morbi non lectus.', null, null, 2);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (3, 'Caprifoliaceae', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', null, null, 3);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (4, 'Liliaceae', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', null, null, 4);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (5, 'Apiaceae', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', null, null, 5);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (6, 'Onagraceae', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', null, null, 6);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (7, 'Onagraceae', 'Duis consequat dui nec nisi volutpat eleifend.', null, null, 7);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (8, 'Lauraceae', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', null, null, 8);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (9, 'Fabaceae', 'Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', null, null, 9);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (10, 'Fabaceae', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', null, null, 10);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (11, 'Fabaceae', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', null, null, 3);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (12, 'Violaceae', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', null, null, 4);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (13, 'Parmeliaceae', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', null, null, 9);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (14, 'Agavaceae', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', null, null, 3);
INSERT INTO notes (id, title, description, updated_at, created_at, user_id) VALUES (15, 'Celastraceae', 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', null, null, 9);

-- -----------------------------------------------------
-- Table `myPersonalDB`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myPersonalDB`.`categories` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

--
-- Dumping data for table `categories`
--

INSERT INTO categories (id, name) VALUES (1, 'Black-winged stilt');
INSERT INTO categories (id, name) VALUES (2, 'Gecko, bent-toed');
INSERT INTO categories (id, name) VALUES (3, 'Yellow-crowned night heron');
INSERT INTO categories (id, name) VALUES (4, 'Caribou');
INSERT INTO categories (id, name) VALUES (5, 'Kingfisher, white-throated');
INSERT INTO categories (id, name) VALUES (6, 'Snowy sheathbill');
INSERT INTO categories (id, name) VALUES (7, 'Toucan, red-billed');
INSERT INTO categories (id, name) VALUES (8, 'Ring-necked pheasant');
INSERT INTO categories (id, name) VALUES (9, 'Shelduck, european');
INSERT INTO categories (id, name) VALUES (10, 'Albatross, galapagos');

-- -----------------------------------------------------
-- Table `myPersonalDB`.`notes_categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `myPersonalDB`.`notes_categories` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` INT UNSIGNED NOT NULL,
  `note_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_notes_categories_categories_idx` (`category_id` ASC) VISIBLE,
  INDEX `fk_notes_categories_notes_idx` (`note_id` ASC) VISIBLE,
  CONSTRAINT `fk_notes_categories_categories`
    FOREIGN KEY (`category_id`)
    REFERENCES `myPersonalDB`.`categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_notes_categories_notes`
    FOREIGN KEY (`note_id`)
    REFERENCES `myPersonalDB`.`notes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

--
-- Dumping data for table `notes_categories`
--

INSERT INTO notes_categories (id, category_id, note_id) VALUES (1, 1, 1);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (2, 2, 2);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (3, 3, 3);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (4, 4, 4);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (5, 5, 5);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (6, 6, 6);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (7, 7, 7);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (8, 8, 8);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (9, 9, 9);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (10, 1, 10);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (11, 7, 8);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (12, 6, 12);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (13, 2, 9);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (14, 3, 5);
INSERT INTO notes_categories (id, category_id, note_id) VALUES (15, 10, 1);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
