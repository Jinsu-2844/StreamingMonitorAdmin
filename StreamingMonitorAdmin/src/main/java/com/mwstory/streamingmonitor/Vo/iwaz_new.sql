-- --------------------------------------------------------
-- 호스트:                          192.168.10.170
-- 서버 버전:                        10.2.6-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- iwaz_osp_monitor 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `iwaz_osp_monitor` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `iwaz_osp_monitor`;

-- 테이블 iwaz_osp_monitor.osp_management_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `osp_management_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '키',
  `site_name` varchar(45) DEFAULT NULL COMMENT '사이트 명',
  `host` varchar(45) DEFAULT NULL COMMENT '사이트 홈',
  `terminal_working_flag` char(1) DEFAULT NULL COMMENT '단말기 수집 동작 유무',
  `site_change_flag` char(1) DEFAULT NULL COMMENT '사이트 변경 감지',
  `start_time` varchar(45) DEFAULT NULL COMMENT '수집 시작 시간',
  `end_time` varchar(45) DEFAULT NULL COMMENT '수집 종료 시간',
  `cumulative_minute` int(11) DEFAULT NULL COMMENT '수집 누적 시간',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='수집 관리';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 iwaz_osp_monitor.osp_monitoring_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `osp_monitoring_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '키',
  `terminal_id` varchar(45) DEFAULT NULL COMMENT '단말기 식별 아이디',
  `seed_id` int(11) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL COMMENT '사이트 명',
  `host` varchar(100) DEFAULT NULL COMMENT '사이트 홈',
  `url` varchar(2000) DEFAULT NULL COMMENT '수집된 페이지 url',
  `title` varchar(500) DEFAULT NULL COMMENT '콘텐츠 명',
  `contents_name` varchar(500) DEFAULT NULL COMMENT '콘텐츠 명',
  `contents` blob DEFAULT NULL COMMENT '콘텐츠 데이터',
  `streaming_url` varchar(4000) DEFAULT NULL COMMENT '스트리밍 url',
  `collect_ver` varchar(45) DEFAULT NULL COMMENT '수집 버전',
  `collect_time` datetime DEFAULT NULL COMMENT '수집 시간',
  `lead_time` varchar(45) DEFAULT NULL COMMENT '소요시간(초)',
  `confirm_flag` char(1) DEFAULT 'n' COMMENT '분석 여부 플래그',
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11874 DEFAULT CHARSET=utf8 COMMENT='수집 데이터 저장';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 iwaz_osp_monitor.osp_seed_url_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `osp_seed_url_info` (
  `seed_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '키',
  `terminal_id` int(11) DEFAULT NULL COMMENT '단말기 식별 아이디',
  `site_name` varchar(45) DEFAULT NULL COMMENT '사이트 명',
  `site_url` varchar(255) DEFAULT NULL COMMENT '사이트 url',
  `seed_name` varchar(45) DEFAULT NULL,
  `seed_url` varchar(255) DEFAULT NULL COMMENT '수집 대상 seed url',
  `seed_category` varchar(45) DEFAULT NULL COMMENT '수집 대상 seed의 카테고리',
  PRIMARY KEY (`seed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='osp 사이트 수집 seed 정보';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 iwaz_osp_monitor.osp_seed_url_result_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `osp_seed_url_result_info` (
  `seed_id` int(11) NOT NULL DEFAULT 0,
  `terminal_id` int(11) DEFAULT NULL,
  `url` varchar(5000) DEFAULT NULL,
  `startTime` datetime DEFAULT '0000-00-00 00:00:00',
  `endTime` datetime DEFAULT NULL,
  `isSuccess` int(2) DEFAULT 0,
  `failPage` int(10) DEFAULT 0,
  `successPage` int(10) DEFAULT 0,
  `totalPage` int(10) DEFAULT 0,
  PRIMARY KEY (`seed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Seed URL 수집 완료 정보';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 iwaz_osp_monitor.osp_statistics_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `osp_statistics_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '키',
  `site_name` varchar(45) DEFAULT NULL COMMENT '사이트 명',
  `host` varchar(45) DEFAULT NULL,
  `cumulative_time` varchar(45) DEFAULT NULL COMMENT '수집 누적 시간',
  `collect_count` int(11) DEFAULT NULL COMMENT '수집 게시물 카운트',
  `collect_time_avg` varchar(45) DEFAULT NULL COMMENT '게시물 당 평균 수집 시간',
  `site_change_count` int(11) DEFAULT NULL COMMENT '사이트 변경 감지 카운트',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COMMENT='수집 통계 정보';

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 iwaz_osp_monitor.osp_terminal_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `osp_terminal_info` (
  `terminal_id` int(11) NOT NULL,
  `os` varchar(45) DEFAULT NULL,
  `os_ver` varchar(45) DEFAULT NULL,
  `sw_ver` varchar(45) DEFAULT NULL,
  `working_flag` char(1) DEFAULT NULL,
  `start_time` varchar(45) DEFAULT NULL,
  `end_time` varchar(45) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `monitoring_site` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`terminal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 내보낼 데이터가 선택되어 있지 않습니다.
-- 테이블 iwaz_osp_monitor.osp_url_meta_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `osp_url_meta_info` (
  `seed_id` int(11) NOT NULL DEFAULT 0,
  `terminal_id` varchar(45) DEFAULT NULL,
  `urlID` int(11) NOT NULL DEFAULT 0,
  `url` varchar(5000) DEFAULT NULL,
  `host` varchar(500) DEFAULT NULL,
  `startTime` datetime DEFAULT '0000-00-00 00:00:00',
  `endTime` datetime DEFAULT '0000-00-00 00:00:00',
  `isSuccess` int(2) DEFAULT 0,
  `retryCnt` int(2) DEFAULT 0,
  `depth` int(5) DEFAULT 0,
  `failReason` varchar(500) DEFAULT NULL,
  `fileType` varchar(10) DEFAULT NULL,
  `fileSize` int(10) DEFAULT 0,
  `filePath` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='수집 메타 정보';

-- 내보낼 데이터가 선택되어 있지 않습니다.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
