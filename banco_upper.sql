create database banco_upper; 
create table `Article`(
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`title` VARCHAR(100) NOT NULL,
`description` VARCHAR(150) NOT NULL,
`image` MEDIUMBLOB NOT NULL,
`category_id` SMALLINT UNSIGNED NOT NULL ,
`author_id` SMALLINT NOT NULL,
`status` BOOLEAN,
`create_at` DATE NOT NULL,
`updated_at` DATE NOT NULL,
`deleted_at` DATE NOT NULL
);

create table `Category`(
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(20) NOT NULL,
`slug` VARCHAR(20) NOT NULL,
`status` boolean,
`created_at` DATE NOT NULL,
`updated_at` DATE NOT NULL,
constraint fk_category_article FOREIGN KEY(`id`) REFERENCES article (`category_id`)
);

create table `Author`(
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(20) NOT NULL,
`bio` VARCHAR(20) NOT NULL,
`created_at` DATE NOT NULL,
`updated_at` DATE NOT NULL

);

create table `Newsletter`(
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(20) NOT NULL,
`email` VARCHAR(10) NOT NULL,
`status` boolean,
`created_at` DATE NOT NULL,
`updated_at` DATE NOT NULL
);


create table `download`(
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`title` VARCHAR(20) NOT NULL,
`description` VARCHAR(150) NOT NUll,
`image` MEDIUMBLOB NOT NULL,
`link` VARCHAR(100) NOT NULL,
`status` BOOLEAN,
`created_at` DATE NOT NULL,
`updated_at` DATE NOT NULL

);

create table `video`(
`id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
`title` VARCHAR(20) NOT NULL,
`video_id` VARCHAR(150) NOT NUll,
`status` BOOLEAN,
`created_at` DATE NOT NULL,
`updated_at` DATE NOT NULL

);


