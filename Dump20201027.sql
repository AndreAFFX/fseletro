CREATE DATABASE  IF NOT EXISTS `fseletro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fseletro`;
-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

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
-- Table structure for table `Pedidos`
--

DROP TABLE IF EXISTS `Pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pedidos` (
  `idPedidos` int NOT NULL AUTO_INCREMENT,
  `cliente` varchar(80) NOT NULL,
  `endereço` varchar(90) NOT NULL,
  `telefone` varchar(14) NOT NULL,
  `produto` varchar(100) DEFAULT NULL,
  `valor unitário` decimal(8,2) DEFAULT NULL,
  `quantidade` tinyint DEFAULT NULL,
  `valor total` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`idPedidos`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pedidos`
--

LOCK TABLES `Pedidos` WRITE;
/*!40000 ALTER TABLE `Pedidos` DISABLE KEYS */;
INSERT INTO `Pedidos` VALUES (1,'João Almeida Sousa','Rua Caiubi, 100 Apto 501 – Barra Funda/SP','(11)1111-1111','Geladeira Brastemp Frost free Evox Inverse 540,6Lt',3250.00,2,6500.00),(2,'Maria Lucíola Bianco','Rua Emílio Wolf, 20 Apto 33 – Barra da Tijuca RJ','(21)8888-8888','Lavadora de Roupas Consul 11kg branca',1599.90,1,1599.90),(3,'Kaíque Santos','Avenida Santa Catarina, 262 Apto 100 – Tabuleiro – Camboriú/SC','(47)7777-7777','Fogão 5 Bocas Consul Acendimento automático',399.99,2,799.98),(4,'Osmar Silva Santos','Rua Caim, 20 Jardim São Pedro – Barueri/SP','(11)1122-2211','Micro-ondas Electrolux 20l',490.00,4,1960.00),(5,'Luíza Vieira','Rua Professor Hermes Lima, 500 Apto 1001 – Recreio dos Bandeirantes/RJ','(21)4545-4545','Lava - louças Brastemp',3999.90,2,7999.80),(6,'Ione Marta Silva','Rua Itapeva, 10 Itacorubi – Florianópolis/SC','(47)8383-8383','Micro-ondas LG solo 30Lt Prata',590.99,1,590.99);
/*!40000 ALTER TABLE `Pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idproduto` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  `descrição` varchar(150) NOT NULL,
  `imagem` varchar(200) DEFAULT NULL,
  `preço` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE KEY `imagem_UNIQUE` (`imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'geladeira','Geladeira Brastemp Frost free Evox Inverse 540,6Lt','Imagens/produtos/Geladeira/Geladeira%20Brastemp/geladeirabrastempfrostfree.jpg',3250.00),(2,'geladeira','Geladeira Electrolux 2p Cycle defrost 260Lt branco','Imagens/produtos/Geladeira/Geladeira%20Electrolux/geladeira%20electrolux%202p%20cycle%20defrost%20260l%20%20branco.jpg',3250.00),(3,'geladeira','Geladeira Frost Free Panasonic 425Lt 2p Preto','Imagens/produtos/Geladeira/Geladeira%20Panasonic/geladeira-frost-free%20panasonic-425-litros%20%202p%20preto.jpg',3134.05),(4,'fogão','Fogão 4 Bocas Electrolux Preto Acendimento automático','Imagens/produtos/Fog%C3%A3o/Fog%C3%A3o%20Electrolux/fog%C3%A3o%204%20bocas%20electrolux%20preto%20acendimento%20autom%C3%A1tico.jpg',259.99),(5,'fogão','Fogão 5 Bocas Consul Acendimento automático','Imagens/produtos/Fog%C3%A3o/Fog%C3%A3o%20Consul/fog%C3%A3o%205%20bocas%20consul%20acendimento%20autom%C3%A1tico%20inox.jpg',399.99),(6,'micro-ondas','Micro-ondas Electrolux 20l','Imagens/produtos/micro-ondas/Micro-ondas%20Electrolux/micro-ondas%20electrolux%20%2020l.jpg',490.00),(7,'micro-ondas','Micro-ondas LG solo 30Lt Prata','Imagens/produtos/micro-ondas/Micro-ondas%20LG/micro-ondas%20lg%20solo%2030lt%20prata.jpg',599.99),(8,'micro-ondas','Micro-ondas Midea branco 20Lt','Imagens/produtos/micro-ondas/Micro-ondas%20Midea/micro-ondas%20midea%20branco%2020l.jpg',350.90),(9,'lavadora de roupas','Lavadora de Roupas Consul 11kg branca','Imagens/produtos/lavadora%20de%20roupas/Lavadora%20de%20roupas%20Consul/lavadora%20de%20de%20roupas%20consul%2011kg%20branca.jpg',1599.90),(10,'lavadora de roupas','Lavadora de Roupas Electrolux 11kg branca','Imagens/produtos/lavadora%20de%20roupas/Lavadora%20de%20Roupas%20Electrolux/lavadora%20electrolux%20lac13.jpg',1200.00),(11,'lava-louças','Lava - louças branca Electrolux','Imagens/produtos/lava-lou%C3%A7as/Lava-lou%C3%A7as%20Electrolux/lava-lou%C3%A7as%20branca%20electrolux.jpg',4099.90),(12,'lava-louças','Lava - louças Brastemp','Imagens/produtos/lava-lou%C3%A7as/Lava-lou%C3%A7as%20Brastemp/lava-lou%C3%A7as%20brastemp.jpg',3999.90);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-27 21:04:30
