-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: repair
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Петров Иван Сергеевич','petrov@mail.ru','+79991234567','ул. Ленина, д. 10, кв. 5','2025-11-20 07:11:59'),(2,'Сидорова Мария Петровна','sidorova@gmail.com','+79997654321','ул. Пушкина, д. 25, кв. 12','2025-11-20 07:11:59'),(3,'Козлов Андрей Викторович','kozlov@yandex.ru','+79992345678','пр. Мира, д. 15, кв. 8','2025-11-20 07:11:59'),(4,'Новикова Елена Дмитриевна','novikova@mail.ru','+79993456789','ул. Садовая, д. 3, кв. 20','2025-11-20 07:11:59'),(5,'Волков Сергей Иванович','volkov@gmail.com','+79994567890','ул. Центральная, д. 7, кв. 14','2025-11-20 07:11:59'),(6,'ООО \"ТехноПрофи\"','info@technoprofi.ru','+74951234567','ул. Промышленная, д. 15','2025-11-20 07:11:59'),(7,'ИП \"Компьютерный мастер\"','ip@compmaster.ru','+74959876543','ул. Рабочая, д. 22','2025-11-20 07:11:59'),(8,'Федоров Денис Олегович','fedorov@yandex.ru','+79995678901','ул. Молодежная, д. 11, кв. 9','2025-11-20 07:11:59'),(9,'Антонова Ольга Сергеевна','antonova@mail.ru','+79996789012','пр. Строителей, д. 18, кв. 6','2025-11-20 07:11:59'),(10,'Группа компаний \"ИТ Сервис\"','service@itservice.ru','+74957654321','ул. Техническая, д. 33','2025-11-20 07:11:59');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `director` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Ремонтный отдел','Иванов Алексей Петрович'),(2,'Диагностика','Смирнова Ольга Владимировна'),(3,'Склад запчастей','Кузнецов Дмитрий Сергеевич'),(4,'Приемка оборудования','Петрова Марина Игоревна'),(5,'Сервисный центр','Сидоров Андрей Николаевич'),(6,'Техническая поддержка','Васильева Екатерина Дмитриевна'),(7,'Гарантийный отдел','Николаев Павел Олегович'),(8,'Логистика','Орлова Анна Викторовна'),(9,'IT отдел','Белов Максим Александрович'),(10,'Администрация','Громова Ирина Сергеевна');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_type`
--

DROP TABLE IF EXISTS `device_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_type` (
  `device_type_id` int NOT NULL AUTO_INCREMENT,
  `device_type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`device_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_type`
--

LOCK TABLES `device_type` WRITE;
/*!40000 ALTER TABLE `device_type` DISABLE KEYS */;
INSERT INTO `device_type` VALUES (1,'Ноутбук'),(2,'Смартфон'),(3,'Планшет'),(4,'Монитор'),(5,'Принтер'),(6,'Системный блок'),(7,'Фотоаппарат'),(8,'Игровая консоль'),(9,'Телевизор'),(10,'Сетевое оборудование');
/*!40000 ALTER TABLE `device_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devices` (
  `device_id` int NOT NULL AUTO_INCREMENT,
  `client_id` int DEFAULT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `serial_number` varchar(100) DEFAULT NULL,
  `problem_description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `device_type_id` int NOT NULL,
  PRIMARY KEY (`device_id`),
  KEY `client_id` (`client_id`),
  KEY `device_idx` (`device_type_id`),
  CONSTRAINT `device` FOREIGN KEY (`device_type_id`) REFERENCES `device_type` (`device_type_id`),
  CONSTRAINT `devices_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,1,'Lenovo','ThinkPad T480','SN123456789','Не включается, нет реакции на кнопку питания','2025-11-20 07:11:59',1),(2,2,'Samsung','Galaxy S21','SN987654321','Разбит экран, не работает тачскрин','2025-11-20 07:11:59',2),(3,3,'Dell','U2419H','SN555666777','Мерцание экрана, полосы','2025-11-20 07:11:59',4),(4,4,'HP','LaserJet Pro M404','SN111222333','Зажевывает бумагу, ошибка картриджа','2025-11-20 07:11:59',5),(5,5,'Apple','MacBook Pro 13','SN444555666','Перегревается, выключается при нагрузке','2025-11-20 07:11:59',1),(6,6,'Asus','ROG Strix G15','SN777888999','Не работает клавиатура','2025-11-20 07:11:59',1),(7,7,'Xiaomi','Redmi Note 10','SN333222111','Не заряжается, быстро разряжается','2025-11-20 07:11:59',2),(8,8,'Canon','PIXMA MG3640','SN666777888','Не печатает черный цвет','2025-11-20 07:11:59',5),(9,9,'Sony','PlayStation 5','SN999000111','Не читает диски','2025-11-20 07:11:59',8),(10,10,'LG','OLED55C1','SN222333444','Нет изображения, есть звук','2025-11-20 07:11:59',9);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price`
--

DROP TABLE IF EXISTS `price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price` (
  `price_id` int NOT NULL AUTO_INCREMENT,
  `service` varchar(100) DEFAULT NULL,
  `service_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price`
--

LOCK TABLES `price` WRITE;
/*!40000 ALTER TABLE `price` DISABLE KEYS */;
INSERT INTO `price` VALUES (1,'Диагностика',500.00),(2,'Замена экрана ноутбука',3000.00),(3,'Замена матрицы монитора',2500.00),(4,'Чистка от пыли',1500.00),(5,'Замена термопасты',800.00),(6,'Установка ОС',2000.00),(7,'Восстановление данных',3500.00),(8,'Ремонт материнской платы',5000.00),(9,'Замена разъема питания',1200.00),(10,'Прошивка BIOS',1800.00);
/*!40000 ALTER TABLE `price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_orders`
--

DROP TABLE IF EXISTS `repair_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_id` int DEFAULT NULL,
  `diagnosis` text,
  `repair_description` text,
  `completion_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `price_id` int NOT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `repair_orders_idx1` (`price_id`),
  KEY `repair_orders_idx` (`status_id`),
  KEY `repair_orders_idx2` (`device_id`),
  CONSTRAINT `reapir_orders` FOREIGN KEY (`price_id`) REFERENCES `price` (`price_id`),
  CONSTRAINT `repair_orders` FOREIGN KEY (`device_id`) REFERENCES `devices` (`device_id`),
  CONSTRAINT `repair_orders_ibfk_1` FOREIGN KEY (`price_id`) REFERENCES `price` (`price_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_orders`
--

LOCK TABLES `repair_orders` WRITE;
/*!40000 ALTER TABLE `repair_orders` DISABLE KEYS */;
INSERT INTO `repair_orders` VALUES (1,1,'Неисправен блок питания','Замена блока питания, чистка системы охлаждения','2025-12-01','2025-11-20 07:11:59','2025-11-20 07:11:59',1,4),(2,2,'Разбит дисплейный модуль','Замена дисплейного модуля, калибровка тачскрина','2025-11-28','2025-11-20 07:11:59','2025-11-20 07:11:59',2,6),(3,3,'Неисправна матрица','Замена матрицы, проверка подсветки','2025-12-05','2025-11-20 07:11:59','2025-11-20 07:11:59',3,3),(4,4,'Изношены ролики подачи бумаги','Замена роликов подачи, чистка картриджа','2025-11-30','2025-11-20 07:11:59','2025-11-20 07:11:59',4,4),(5,5,'Забита система охлаждения','Чистка кулера, замена термопасты','2025-12-02','2025-11-20 07:11:59','2025-11-20 07:11:59',5,5),(6,6,'Окисление шлейфа клавиатуры','Чистка контактов, замена шлейфа','2025-12-03','2025-11-20 07:11:59','2025-11-20 07:11:59',6,4),(7,7,'Неисправен разъем charging port','Замена разъема charging port, калибровка АКБ','2025-11-29','2025-11-20 07:11:59','2025-11-20 07:11:59',7,6),(8,8,'Засорение печатающей головки','Прочистка головки, замена картриджа','2025-12-04','2025-11-20 07:11:59','2025-11-20 07:11:59',8,3),(9,9,'Неисправен привод дисков','Замена привода, чистка лазера','2025-12-06','2025-11-20 07:11:59','2025-11-20 07:11:59',9,4),(10,10,'Неисправна панель матрицы','Замена OLED панели, проверка контроллера','2025-12-07','2025-11-20 07:11:59','2025-11-20 07:11:59',10,2);
/*!40000 ALTER TABLE `repair_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_parts`
--

DROP TABLE IF EXISTS `repair_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_parts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `repair_order_id` int DEFAULT NULL,
  `part_name` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `unit_cost` decimal(10,2) DEFAULT NULL,
  `warehouse_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `repair_order_id` (`repair_order_id`),
  KEY `warehouse_id_idx` (`warehouse_id`),
  CONSTRAINT `repair_parts` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`warehouse_id`),
  CONSTRAINT `repair_parts_ibfk_1` FOREIGN KEY (`repair_order_id`) REFERENCES `repair_orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_parts`
--

LOCK TABLES `repair_parts` WRITE;
/*!40000 ALTER TABLE `repair_parts` DISABLE KEYS */;
INSERT INTO `repair_parts` VALUES (1,1,'Блок питания Lenovo 65W',1,2500.00,1),(2,2,'Дисплейный модуль Samsung S21',1,8500.00,9),(3,3,'Матрица Dell U2419H',1,12000.00,7),(4,4,'Ролики подачи бумаги HP',2,800.00,2),(5,5,'Термопаста Arctic MX-4',1,600.00,2),(6,6,'Шлейф клавиатуры Asus G15',1,1500.00,8),(7,7,'Разъем USB-C Xiaomi',1,1200.00,9),(8,8,'Картридж Canon PG-540',1,1800.00,10),(9,9,'Привод дисков PlayStation 5',1,4500.00,3),(10,10,'OLED панель LG 55\"',1,35000.00,7);
/*!40000 ALTER TABLE `repair_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(45) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Принят'),(2,'Диагностика'),(3,'Ожидает запчасти'),(4,'В ремонте'),(5,'Тестирование'),(6,'Готов к выдаче'),(7,'Выдан клиенту'),(8,'Отменен'),(9,'Гарантийный ремонт'),(10,'На согласовании');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` varchar(20) DEFAULT 'technician',
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `department_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `users_idx` (`department_id`),
  CONSTRAINT `users` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@repair.ru','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','admin','Администратор Системы','+79990000001','2025-11-20 07:11:59',10),(2,'tech1','tech1@repair.ru','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','technician','Иванов Алексей Петрович','+79990000002','2025-11-20 07:11:59',1),(3,'tech2','tech2@repair.ru','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','technician','Петров Сергей Владимирович','+79990000003','2025-11-20 07:11:59',1),(4,'diagnost','diagnost@repair.ru','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','diagnostician','Смирнова Ольга Владимировна','+79990000004','2025-11-20 07:11:59',2),(5,'manager1','manager1@repair.ru','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','manager','Кузнецов Дмитрий Сергеевич','+79990000005','2025-11-20 07:11:59',8),(6,'tech3','tech3@repair.ru','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','technician','Сидоров Андрей Николаевич','+79990000006','2025-11-20 07:11:59',5),(7,'tech4','tech4@repair.ru','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','technician','Васильев Игорь Павлович','+79990000007','2025-11-20 07:11:59',1),(8,'warehouse','warehouse@repair.ru','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','warehouse','Орлова Анна Викторовна','+79990000008','2025-11-20 07:11:59',3),(9,'it_support','it@repair.ru','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','it','Белов Максим Александрович','+79990000009','2025-11-20 07:11:59',9),(10,'reception','reception@repair.ru','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','reception','Петрова Марина Игоревна','+79990000010','2025-11-20 07:11:59',4);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `warehouse_id` int NOT NULL,
  `warehouse_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'Основной склад','ул. Складская, д. 1'),(2,'Склад запчастей','ул. Детальная, д. 5'),(3,'Склад б/у запчастей','ул. Вторичная, д. 3'),(4,'Центральный склад','пр. Складов, д. 15'),(5,'Филиал Северный','ул. Северная, д. 22'),(6,'Филиал Южный','ул. Южная, д. 18'),(7,'Склад мониторов','ул. Экранная, д. 7'),(8,'Склад ноутбуков','ул. Компьютерная, д. 12'),(9,'Склад телефонов','ул. Мобильная, д. 9'),(10,'Склад принтеров','ул. Печатная, д. 4');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'repair'
--

--
-- Dumping routines for database 'repair'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-20 12:13:11
