-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.7.17-log - MySQL Community Server (GPL)
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- gsqb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `gsqb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gsqb`;

-- 테이블 gsqb.tb_jenkins_build_result 구조 내보내기
CREATE TABLE IF NOT EXISTS `tb_jenkins_build_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `build_number` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL COMMENT 'build duration(timestamp)',
  `build_result` varchar(50) DEFAULT NULL COMMENT 'build result( from result)',
  `url` varchar(1000) DEFAULT NULL COMMENT 'build url',
  `server_name` varchar(100) DEFAULT NULL,
  `job_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='jenkins server의 build result 테이블';

-- 테이블 데이터 gsqb.tb_jenkins_build_result:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tb_jenkins_build_result` DISABLE KEYS */;
INSERT INTO `tb_jenkins_build_result` (`id`, `build_number`, `duration`, `build_result`, `url`, `server_name`, `job_name`) VALUES
	(1, 59, 13896, 'SUCCESS', 'https://hub.spigotmc.org/jenkins/job/BuildTools/59/', 'jenkins', 'BuildTools');
/*!40000 ALTER TABLE `tb_jenkins_build_result` ENABLE KEYS */;

-- 테이블 gsqb.tb_jenkins_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `tb_jenkins_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'jenkins server id',
  `url` varchar(100) DEFAULT NULL COMMENT 'jenkins server url',
  `desc` varchar(100) DEFAULT NULL COMMENT 'jenkins server name',
  `active_flag` int(11) DEFAULT NULL COMMENT 'jenkins server active flag(1/0)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='jenkins server info table';

-- 테이블 데이터 gsqb.tb_jenkins_info:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `tb_jenkins_info` DISABLE KEYS */;
INSERT INTO `tb_jenkins_info` (`id`, `url`, `desc`, `active_flag`) VALUES
	(1, 'dummyhost', '', 0),
	(2, 'https://hub.spigotmc.org/jenkins/view/RSS/', 'spigotmc/rss', 1),
	(3, 'https://hub.spigotmc.org/jenkins/', 'spigotmc/jenkins', 1);
/*!40000 ALTER TABLE `tb_jenkins_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
