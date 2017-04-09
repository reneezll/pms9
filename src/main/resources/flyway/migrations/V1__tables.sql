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


-- pms9 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `pms9` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pms9`;

-- 테이블 pms9.com_code 구조 내보내기
CREATE TABLE IF NOT EXISTS `com_code` (
  `CLASSNO` int(11) NOT NULL,
  `CODECD` varchar(10) NOT NULL,
  `CODENM` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CLASSNO`,`CODECD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.com_dept 구조 내보내기
CREATE TABLE IF NOT EXISTS `com_dept` (
  `DEPTNO` int(11) NOT NULL,
  `DEPTNM` varchar(20) DEFAULT NULL,
  `PARENTNO` int(11) DEFAULT NULL,
  `DELETEFLAG` char(1) DEFAULT NULL,
  PRIMARY KEY (`DEPTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.com_loginout 구조 내보내기
CREATE TABLE IF NOT EXISTS `com_loginout` (
  `LNO` int(11) NOT NULL AUTO_INCREMENT,
  `USERNO` int(11) DEFAULT NULL,
  `LTYPE` char(1) DEFAULT NULL,
  `LDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`LNO`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.com_user 구조 내보내기
CREATE TABLE IF NOT EXISTS `com_user` (
  `USERNO` int(11) NOT NULL AUTO_INCREMENT,
  `USERID` varchar(20) DEFAULT NULL,
  `USERNM` varchar(20) DEFAULT NULL,
  `USERPW` varchar(100) DEFAULT NULL,
  `USERROLE` char(1) DEFAULT NULL,
  `PHOTO` varchar(50) DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL,
  `DELETEFLAG` char(1) DEFAULT NULL,
  PRIMARY KEY (`USERNO`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.cq_swmd_result 구조 내보내기
CREATE TABLE IF NOT EXISTS `cq_swmd_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `swmd_key` varchar(100) NOT NULL COMMENT 'project key on',
  `compare_date` date DEFAULT NULL,
  `signal_date` date DEFAULT NULL,
  `signal_dict` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='code quality';


CREATE TABLE `jira_bounce` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`projectkey` VARCHAR(50) NULL DEFAULT '0',
	`issueno` VARCHAR(50) NULL DEFAULT '0',
	`userid` VARCHAR(50) NULL DEFAULT '0',
	`reopendate` DATE NULL DEFAULT NULL,
	`reopentype` INT(11) NULL DEFAULT '0' COMMENT 'resolved->reopen(0), closed->reopen(1)',
	`deleteflag` CHAR(1) NULL DEFAULT 'N',
	PRIMARY KEY (`id`)
)
COMMENT='bounce back rate '
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

-- 테이블 pms9.jira_bounce_back_rate 구조 내보내기
CREATE TABLE IF NOT EXISTS `jira_bounce_back_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectkey` varchar(50) DEFAULT '0' COMMENT 'project key',
  `bbr_numerator` int(11) DEFAULT '0' COMMENT 'numerator of bounce back rate',
  `bbr_denominator` int(11) DEFAULT '0' COMMENT 'denominator of bounce back rate',
  `reopentype` int(11) DEFAULT '0' COMMENT 'resolved->reopen(0), closed->reopen(1)',
  `bbr_date` date DEFAULT NULL,
  `issue_details` mediumtext COMMENT 'list of reopen issues',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='bounce back rate : daily stastics';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.prj_project 구조 내보내기
CREATE TABLE IF NOT EXISTS `prj_project` (
  `PRNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '프로젝트 번호',
  `PRSTARTDATE` varchar(10) DEFAULT NULL COMMENT '시작일자',
  `PRENDDATE` varchar(10) DEFAULT NULL COMMENT '종료일자',
  `PRTITLE` varchar(100) DEFAULT NULL COMMENT '프로젝트 제목',
  `PRDATE` datetime DEFAULT NULL COMMENT '작성일자',
  `USERNO` int(11) DEFAULT NULL COMMENT '사용자번호',
  `PRSTATUS` char(1) DEFAULT NULL COMMENT '상태',
  `DELETEFLAG` char(1) DEFAULT NULL COMMENT '삭제',
  PRIMARY KEY (`PRNO`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='프로젝트';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.prj_task 구조 내보내기
CREATE TABLE IF NOT EXISTS `prj_task` (
  `PRNO` int(11) DEFAULT NULL COMMENT '프로젝트 번호',
  `TSNO` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '업무번호',
  `TSPARENT` bigint(20) DEFAULT NULL COMMENT '부모업무번호',
  `TSSORT` mediumint(10) DEFAULT NULL COMMENT '정렬',
  `TSTITLE` varchar(100) DEFAULT NULL COMMENT '업무 제목',
  `TSSTARTDATE` varchar(10) DEFAULT NULL COMMENT '시작일자',
  `TSENDDATE` varchar(10) DEFAULT NULL COMMENT '종료일자',
  `TSENDREAL` varchar(10) DEFAULT NULL COMMENT '종료일자(실제)',
  `TSRATE` smallint(6) DEFAULT NULL COMMENT '진행율',
  `OLDNO` bigint(20) DEFAULT NULL COMMENT '이전업무번호',
  `DELETEFLAG` char(1) DEFAULT NULL COMMENT '삭제',
  PRIMARY KEY (`TSNO`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 COMMENT='프로젝트 업무';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.prj_taskfile 구조 내보내기
CREATE TABLE IF NOT EXISTS `prj_taskfile` (
  `TSNO` bigint(20) DEFAULT NULL COMMENT '업무번호',
  `FILENO` int(10) NOT NULL AUTO_INCREMENT COMMENT '파일번호',
  `FILENAME` varchar(100) DEFAULT NULL COMMENT '파일명',
  `REALNAME` varchar(30) DEFAULT NULL COMMENT '실제파일명',
  `FILESIZE` int(10) DEFAULT NULL COMMENT '파일크기',
  PRIMARY KEY (`FILENO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='첨부파일';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.prj_taskuser 구조 내보내기
CREATE TABLE IF NOT EXISTS `prj_taskuser` (
  `TSNO` bigint(20) NOT NULL COMMENT '업무번호',
  `USERNO` int(11) NOT NULL COMMENT '사용자번호',
  PRIMARY KEY (`TSNO`,`USERNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='업무할당';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.tbl_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_board` (
  `BGNO` int(11) DEFAULT NULL,
  `BRDNO` int(11) NOT NULL AUTO_INCREMENT,
  `BRDTITLE` varchar(255) DEFAULT NULL,
  `USERNO` int(11) DEFAULT NULL,
  `BRDMEMO` mediumtext,
  `BRDDATE` datetime DEFAULT NULL,
  `BRDNOTICE` varchar(1) DEFAULT NULL,
  `LASTDATE` datetime DEFAULT NULL,
  `LASTUSERNO` int(11) DEFAULT NULL,
  `BRDLIKE` int(11) DEFAULT '0',
  `BRDDELETEFLAG` char(1) DEFAULT NULL,
  PRIMARY KEY (`BRDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.tbl_boardfile 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_boardfile` (
  `FILENO` int(11) NOT NULL AUTO_INCREMENT,
  `BRDNO` int(11) DEFAULT NULL,
  `FILENAME` varchar(100) DEFAULT NULL,
  `REALNAME` varchar(30) DEFAULT NULL,
  `FILESIZE` int(11) DEFAULT NULL,
  PRIMARY KEY (`FILENO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.tbl_boardgroup 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_boardgroup` (
  `BGNO` int(11) NOT NULL AUTO_INCREMENT,
  `BGNAME` varchar(50) DEFAULT NULL,
  `BGPARENT` int(11) DEFAULT NULL,
  `BGDELETEFLAG` char(1) DEFAULT NULL,
  `BGUSED` char(1) DEFAULT NULL,
  `BGREPLY` char(1) DEFAULT NULL,
  `BGREADONLY` char(1) DEFAULT NULL,
  `BGNOTICE` char(1) DEFAULT NULL,
  `BGDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`BGNO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.tbl_boardlike 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_boardlike` (
  `BLNO` int(11) NOT NULL AUTO_INCREMENT,
  `BRDNO` int(11) DEFAULT NULL,
  `USERNO` int(11) DEFAULT NULL,
  `BLDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`BLNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.tbl_boardread 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_boardread` (
  `BRDNO` int(11) NOT NULL,
  `USERNO` int(11) NOT NULL,
  `READDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`BRDNO`,`USERNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.tbl_boardreply 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_boardreply` (
  `BRDNO` int(11) NOT NULL,
  `RENO` int(11) NOT NULL,
  `USERNO` int(11) DEFAULT NULL,
  `REMEMO` varchar(500) DEFAULT NULL,
  `REPARENT` int(11) DEFAULT NULL,
  `REDEPTH` int(11) DEFAULT NULL,
  `REORDER` int(11) DEFAULT NULL,
  `REDATE` datetime DEFAULT NULL,
  `REDELETEFLAG` varchar(1) NOT NULL,
  `LASTDATE` datetime DEFAULT NULL,
  `LASTUSERNO` int(11) DEFAULT NULL,
  PRIMARY KEY (`RENO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 pms9.tbl_crud 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbl_crud` (
  `CRNO` int(11) NOT NULL AUTO_INCREMENT,
  `CRTITLE` varchar(255) DEFAULT NULL,
  `USERNO` int(11) DEFAULT NULL,
  `CRMEMO` mediumtext,
  `CRDATE` datetime DEFAULT NULL,
  `CRDELETEFLAG` char(1) DEFAULT NULL,
  PRIMARY KEY (`CRNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `proj_project` (
	`prno` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'Project Number',
	`prstartdate` VARCHAR(10) NULL DEFAULT NULL COMMENT 'Start date',
	`prenddate` VARCHAR(10) NULL DEFAULT NULL COMMENT 'End date',
	`prtitle` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Project title',
	`prdate` DATETIME NULL DEFAULT NULL COMMENT 'Register date',
	`userid` VARCHAR(50) NULL DEFAULT NULL COMMENT 'User id',
	`prstatus` CHAR(1) NULL DEFAULT NULL COMMENT 'Project status(in-progress/done)',
	`deleteflag` CHAR(1) NULL DEFAULT NULL COMMENT 'delete flag',
	`projectkey` VARCHAR(50) NOT NULL COMMENT 'Project key',
	`org` VARCHAR(50) NULL DEFAULT NULL COMMENT 'organization(ex. AVN2 ED)',
	`oem` VARCHAR(50) NULL DEFAULT NULL COMMENT 'OEM (ex. GM)',
	PRIMARY KEY (`prno`)
)
COMMENT='프로젝트'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

CREATE TABLE `jenkins_conf` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`host` VARCHAR(100) NOT NULL DEFAULT '0',
	`userid` VARCHAR(100) NOT NULL DEFAULT '0',
	`userpw` VARCHAR(100) NOT NULL DEFAULT '0',
	`viewname` VARCHAR(100) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
)
COMMENT='jenkins config(host, id,pw)'
COLLATE='utf8_general_ci'
ENGINE=InnoDB

DELIMITER $$

DROP FUNCTION IF EXISTS uf_datetime2string$$

CREATE FUNCTION `uf_datetime2string`(dt_ Datetime) RETURNS varchar(10) CHARSET utf8
BEGIN
	DECLARE ti INTEGER ;
	DECLARE ret_ VARCHAR(10);

	SET ti :=  TIMESTAMPDIFF(MINUTE, dt_, NOW());

      IF ti < 1 THEN SET ret_:='방금';
      ELSEIF ti < 60 THEN SET ret_:= CONCAT(TRUNCATE(ti ,0), '분전');
      ELSEIF ti < 60*24 THEN 
            IF ( DATEDIFF(NOW(), dt_)=1) THEN 
                SET ret_:= '어제';
            ELSE
                SET ret_:= CONCAT(TRUNCATE(ti/60 ,0), '시간전');
            END IF;
      ELSEIF ti < 60*24*7 THEN SET ret_:= CONCAT(TRUNCATE(ti/60/24 ,0), '일전');
      ELSEIF ti < 60*24*7*4 THEN SET ret_:= CONCAT(TRUNCATE(ti/60/24/7 ,0), '주전');
      ELSEIF (TIMESTAMPDIFF (MONTH, dt_, NOW())=1) THEN SET ret_:= '지난달';
      ELSEIF (TIMESTAMPDIFF (MONTH, dt_, NOW())<13) THEN 
            IF ( TIMESTAMPDIFF (YEAR, dt_, NOW())=1) THEN 
                SET ret_:= '작년';
            ELSE
                SET ret_:= CONCAT(TRUNCATE(TIMESTAMPDIFF (MONTH, dt_, NOW()) ,0), '달전');
            END IF;
      ELSE SET ret_:= CONCAT(TIMESTAMPDIFF (YEAR, dt_, NOW()), '년전');
      END IF;
      
RETURN ret_;
END $$

DELIMITER $$

DROP FUNCTION IF EXISTS getColor4Alert$$

CREATE FUNCTION `getColor4Alert`(tsstartdate_ VARCHAR(10), tsenddate_ VARCHAR(10), tsendreal_ VARCHAR(10), tsrate_ Integer) RETURNS varchar(10) CHARSET utf8
BEGIN
    DECLARE bgcolor_ VARCHAR(10);
    DECLARE today_ Datetime;
/*  
  오늘 날짜가 시작일자보다 작으면 회색
  오늘 날짜가 종료일자를 지났으면 빨강
  오늘 날짜가 주어진 기간의 50% 미만이면 녹색
  오늘 날짜가 주어진 기간의 50% 이상이면 노랑
  진행율이 기간내에 100이 되었으면 녹색, 지난뒤에 100이면 검정색
*/    
    SET today_ := now();
    SET bgcolor_ := 'gray'; -- tsstartdate < today
    
    IF tsrate_ < 100 THEN
        IF tsstartdate_ > today_ THEN
            SET bgcolor_ := 'gray';
        ELSEIF tsenddate_ < today_ THEN
            SET bgcolor_ := 'red';
        ELSEIF TIMESTAMPDIFF(DAY, tsstartdate_, today_) < TIMESTAMPDIFF(DAY, today_, tsenddate_) THEN
            SET bgcolor_ := 'green';
        ELSEIF TIMESTAMPDIFF(DAY, tsstartdate_, today_) >= TIMESTAMPDIFF(DAY, today_, tsenddate_) THEN
            SET bgcolor_ := 'yellow';
        END IF;
    ELSE
        IF tsendreal_!="" AND tsendreal_ <= tsenddate_ THEN
            SET bgcolor_ := 'green';
        ELSE
            SET bgcolor_ := 'orange';
        END IF;
    END IF;

RETURN bgcolor_;
END $$

-- 내보낼 데이터가 선택되어 있지 않습니다.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
