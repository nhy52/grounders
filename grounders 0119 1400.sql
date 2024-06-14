-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.1.0 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- grounders 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `grounders` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `grounders`;

-- 테이블 grounders.grounders_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `grounders_board` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `id` varchar(50) NOT NULL,
  `boardPw` varchar(100) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `fileName` varchar(50) DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  `writeDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `viewCnt` int DEFAULT '0',
  `likeCnt` int DEFAULT '0',
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- 테이블 데이터 grounders.grounders_board:~5 rows (대략적) 내보내기
INSERT IGNORE INTO `grounders_board` (`seq`, `title`, `id`, `boardPw`, `content`, `fileName`, `fileSize`, `writeDate`, `viewCnt`, `likeCnt`) VALUES
	(1, 'test', 'test\r\n', '1234', '1234', '1234', NULL, '2024-01-14 07:23:34', 0, 0),
	(2, 'title', 'id', 'pw', 'content', NULL, NULL, '2024-01-17 08:38:53', 7, 7),
	(3, 'title3', 'id3', 'boardPw2', 'content3', NULL, NULL, '2024-01-17 09:53:13', 3, 3),
	(4, 'title4', 'id3', 'boardPw2', 'content3', NULL, NULL, '2024-01-17 09:53:13', 3, 3),
	(5, 'title5', 'id3', 'boardPw2', 'content3', NULL, NULL, '2024-01-17 09:53:13', 3, 3);

-- 테이블 grounders.grounders_event 구조 내보내기
CREATE TABLE IF NOT EXISTS `grounders_event` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fileName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  `writeDate` datetime NOT NULL DEFAULT (now()),
  PRIMARY KEY (`seq`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 grounders.grounders_event:~4 rows (대략적) 내보내기
INSERT IGNORE INTO `grounders_event` (`seq`, `title`, `content`, `fileName`, `fileSize`, `writeDate`) VALUES
	(1, 'title', 'content', NULL, NULL, '2024-01-17 19:25:52'),
	(2, 'title2', 'content2', NULL, NULL, '2024-01-17 19:25:52'),
	(3, 'title3', 'content3', NULL, NULL, '2024-01-17 19:25:52'),
	(4, 'title4', 'content4', NULL, NULL, '2024-01-17 19:25:52');

-- 테이블 grounders.grounders_notice 구조 내보내기
CREATE TABLE IF NOT EXISTS `grounders_notice` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `fileName` varchar(50) DEFAULT NULL,
  `fileSize` int DEFAULT NULL,
  `writeDate` datetime NOT NULL DEFAULT (now()),
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE `grounders_notice`;

-- 테이블 데이터 grounders.grounders_notice:~4 rows (대략적) 내보내기
grounders_boardINSERT IGNORE INTO `grounders_notice` (`seq`, `title`, `content`, `fileName`, `fileSize`, `writeDate`) VALUES
	(1, 'title', 'content', NULL, NULL, '2024-01-17 19:25:52'),
	(2, 'title2', 'content2', NULL, NULL, '2024-01-17 19:25:52'),
	(3, 'title3', 'content3', NULL, NULL, '2024-01-17 19:25:52'),
	(4, 'title4', 'content4', NULL, NULL, '2024-01-17 19:25:52');

-- 테이블 grounders.grounders_user 구조 내보내기grounders_board
CREATE TABLE IF NOT EXISTS `grounders_user` (
  `userSeq` int NOT NULL AUTO_INCREMENT,
  `id` varchar(50) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `pwRe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,grounders_notice
  `addr1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `addr2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `addr3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `regDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `point` int DEFAULT '0',
  PRIMARY KEY (`userSeq`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 grounders.grounders_user:~2 rows (대략적) 내보내기
INSERT IGNORE INTO `grounders_user` (`userSeq`, `id`, `pw`, `pwRe`, `name`, `gender`, `email`, `tel`, `addr1`, `addr2`, `addr3`, `regDate`, `point`) VALUES
	(1, 'test', '$2a$10$ChGkJMYJhI2Iy/QTJYJuRuaGgc8UXnGGjMi1albwJfG7TgHCP4gB2', '$2a$10$nNACfVkdYTELMJiSu/qsrOolP1U5FOfD/GsLOfNQcMeHMZClOZVEG', 'test', '남자', 'test@gmail.com', '010', NULL, NULL, NULL, '2024-01-16 08:22:13', 0),
	(2, 'asdf', '$2a$10$ssnAYlQD5KHSUuPKsooDru07eRCIAMN9xbk9pFll1kQFt8R6FAHKq', '$2a$10$HH/jiuwMPc7YEMN4rNnZW.WoRjs5bkz8bNMyh/hAD7z9lQ4kEUFNK', 'asdf', '남자', 'asdf@gmail.com', '1', NULL, NULL, NULL, '2024-01-16 08:48:01', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;



create table grounders_game(					
	gameNo int not null,				
	gameName varchar(50) not null,				
	stadium varchar(20) not null,				
	startDate datetime not null,				
	gameDate datetime not null,				
	age int not null,				
	primary key(gameNo)				
);					
					

DROP TABLE grounders_ticket;

create table grounders_ticket(					
	`ticketNo` INT AUTO_INCREMENT,				
	`id` varchar(10) not null,				
	`seat1` varchar(10) not null,				
	`seat2` varchar(10) null,				
	`seat3` varchar(10) null,				
	`gameNo` int NOT null,				
	`state` varchar(20) not null,				
	`cancel` int DEFAULT 1,				
	PRIMARY KEY(`ticketNo`),	
	FOREIGN KEY (`gameNo`) REFERENCES grounders_game(`gameNo`)				
);					

ALTER TABLE grounders_ticket AUTO_INCREMENT=1000;

ALTER TABLE grounders_ticket ADD `buyDate` DATETIME;

INSERT INTO grounders_game 
VALUES(1,'플레이오프 2차전M LG트윈스 vs KIA타이거즈','잠실경기장',
'2023-01-26 12:30','2023-01-28 14:00',0);

INSERT INTO grounders_game 
VALUES(2,'DOSAN베어스 vs SAMSUNG라이온즈','대구삼성라이온즈파크',
'2023-03-15 12:30:00','2023-02-19 14:00:00',0);



select t.ticketNo, t.id, t.seat1, t.seat2, t.seat3, t.gameNo, t.state, t.cancel,
		t.buyDate,g.gameName, g.gameDate, g.stadium
		from grounders_ticket as t
		inner join grounders_game as g on t.gameNo = g.gameNo

insert into grounders_ticket(id,seat1,seat2,seat3,gameNo,state)
		VALUES('aaa123','AF5','','',2,'결제 완료');




SELECT *
from grounders_ticket
WHERE 
cancel=1 AND
buyDate BETWEEN DATE_ADD(NOW(),INTERVAL -3 MONTH) AND NOW();

SELECT DATE_ADD(NOW(),INTERVAL -30 DAY);

select count(*) count
		from grounders_ticket
		where cancel = 0



CREATE TABLE IF NOT EXISTS `mp_file` (
  `FILE_NO` int NOT NULL AUTO_INCREMENT,
  `BNO` int NOT NULL,
  `ORG_FILE_NAME` VARCHAR(200) NOT NULL,
  `STORED_FILE_NAME` VARCHAR(200) NOT NULL,
  `FILE_SIZE` int DEFAULT NULL,
  `REGDATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DEL_GB` varchar(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`FILE_NO`)
);



SELECT DATE_SUB(now(), INTERVAL 5 DAY)



INSERT INTO grounders_game 
VALUES(1,'플레이오프 2차전M LG트윈스 vs KIA타이거즈','잠실경기장',
'2023-01-26 12:30','2023-01-28 14:00',0);

INSERT INTO grounders_game 
VALUES(2,'DOSAN베어스 vs SAMSUNG라이온즈','대구삼성라이온즈파크',
'2023-01-26 12:30','2023-01-28 14:00',0);




INSERT INTO grounders_notice(seq, title, content, fileName, fileSize)
   VALUES (1, '12월 1일 인천 한신전 우천 취소', 

      '안녕하세요. \
      그라운더즈입니다. \
      \
      1일 인천-스트라스필드에서 열릴 예정이었던  한신과의 경기가 우천으로 인한 그라운드 사정으로 취소 됐습니다.  \
      \
      이날 취소된 경기는 추후 편성될 예정입니다.\
      \
      감사합니다.',
      '',0);


INSERT INTO grounders_notice(seq, title, content, fileName, fileSize)
   VALUES (2, '12/5(토) 무인발권기-매표소 오픈 시간 안내',
   
      '안녕하세요.\
      그라운더즈입니다.\
      \
      12월 5일(토) 더블헤더 경기시 무인발권기 이용 가능 시간과 매표소 오픈 시간 안내 드립니다.\
      \
      - 무인발권기 이용 가능 시간\
      11시 30분부터 가능\
      *무인 발권기에서 11시 30분부터 1,2차전 지류티켓 모두 발권 가능 \
      \
      - 매표소 오픈 시간\
      DH1 : 12시 오픈\
      DH2 : 1차전 경기 7회 초 종료 후 오픈\
      \
      감사합니다.',
      '',0);

INSERT INTO grounders_notice(seq, title, content, fileName, fileSize)
   VALUES (3, '재편성 경기 티켓 오픈 일정 안내',
   
      '안녕하세요.\
      그라운더즈입니다.\
      \
      잔여경기 재편성 일정이 확정되어 티켓 예매 오픈 일정 안내 드립니다.\
      \
      감사합니다.',
      '',0);

INSERT INTO grounders_notice(seq, title, content, fileName, fileSize)
   VALUES (4, '팬 여러분께 사과드립니다',
   
      '
      안녕하세요. 
      그라운더즈 프로야구단 이재선 단장입니다.
      
      지난 10월 28일 열렸던 그라운더즈 가족 한마당 행사에서 몇몇 선수들의 그릇된 언행에 대해 그라운더즈를 아껴주시고, 사랑해 주시는 팬 여러분들께 머리 숙여 사죄 드립니다.
      
      올 시즌 응원해 주신 팬 여러분들께 감사의 뜻을 담아 선수단과 팬들이 함께하는 하이파이브 이벤트를 개최했는데 이 과정에서 몇몇 선수들이 프로야구 선수로서 적절치 못한 언행을 하였습니다. 
      
      이번 사안에 대해 그라운더즈는 무거운 책임감을 느끼며, 책임을 통감하고 있습니다. 
      
      이번 일을 깊이 반성하며, 지속적으로 실시해왔던 선수단 윤리 교육 등에 더욱 힘쓰고, 팬을 존중하는 문화를 만드는 데 최선을 다하겠습니다.
      
      그라운더즈를 응원해 주시는 팬 여러분께 다시 한 번 진심으로 사죄의 말씀을 드립니다.
      
      감사합니다.
      
      2023년 12월 30일
      그라운더즈 이재선 단장',
      '',0);

INSERT INTO grounders_notice(seq, title, content, fileName, fileSize)
   VALUES (5, '홈페이지 NICE 본인확인 표준창 웹 서비스 순단 발생 안내',
   
      '안녕하세요.\
      그라운더즈 입니다.\
      \
      당 구단 홈페이지 본인확인 시스템 업체인 WONDER평가정보(주)에서 아래와 같은 일정으로 작업이 진행될 예정입니다.\
      이에 따라 약 2시간 정도 순간적인 끊김 현상이 발생 가능성이 있어 안내 드립니다.\
      \
      팬 여러분들의 이용에 불편을 드려 죄송합니다.\
      \
      감사합니다.\
      \
      \
                              -- 아   래 --\
      \
      - 작업시간 : 2023.11.8(수) 19:00 ~ 21:00 (약 2시간)\
      - 작업내용 : WONDER평가정보 본인확인 시스템 작업                                  \
      - 작업영향 : 작업시간 중 표준창(인증팝업) 내 본인확인(휴대폰/공동인증서) 순단 발생 가능\
      ',
      '',0);

INSERT INTO grounders_notice(seq, title, content, fileName, fileSize)
   VALUES (6, '그라운더즈, 우완 투수 강만석 영입',
   
      '그라운더즈가 23일(토) 불펜 뎁스 강화를 위해 우완 투수 강만호와 연봉 4500만원에 계약을 체결했다.\
      2012년 신생팀 특별지명을 통해 NC 다이노스에 입단한 강만석은 KBO 통산 337경기에 등판하여 33승 24패 28홀드 31세이브 4.88의 평균자책점을 기록했다.\
      강만석은 선발과 불펜을 오가며 전천후 투수로 활약하며 중간 계투로 301경기에 나서 22승 11패 평균자책점 4.27의 성적을 기록했다.\
      만 30세의 비교적 젊은 투수로 21년 군 제대 후 KBO리그 등판 기록은 없지만 트레이닝 강화를 통해 잔부상 없이 시즌을 보낸다면 불펜의 뎁스를 더해주는 투수로서 충분히 경쟁력 있는 있는 모습을 보여줄 것으로 기대한다.\
      ',
      '',0);

INSERT INTO grounders_notice(seq, title, content, fileName, fileSize)
   VALUES (7, '그라운더즈 2024시즌 신인 출신교 용품지원업체 선정',
   
      'A. 입찰에 부치는 사항\
      가) 공 고 명 : 그라운더즈 2024시즌 신인 출신교 용품지원업체 선정\
      나) 사업예산 : 73,000,000원 (부가세별도)\
      다) 용역범위 : 제안 요청서 참조\
      라) 사업기간 : 계약체결일로부터 2개월\
      \
      B. 입찰 및 선정 방식\
      가) 입찰서 제출기간 : 2024년 01월 05일 ~ 2024년 01월 19일 15:00\
      나) 입찰집행(개찰)일시 : 2024년 01월 19일 15:00\
      다) 개찰장소 : 그라운더즈 사무실\
      라) 입찰방법 : 일반경쟁\
      마) 계약방법 : 적격심사 낙찰\
      바) 평가방식 : 제안서 및 그라운더즈가 정한 업체선정 평가 방법에 의한 평가 *[별첨6] 참고\
      사) 기타사항\
      1) 낙찰자 발표 : 개별통지(*상기 일정은 사정에 따라 변동될 수 있음)\
      2) 사업 수행 : 계약 체결 후 즉시\
      \
      입찰 관련 상세 내용은 아래의 <입찰 공고> 및 <제안 요청서>를 참고해주세요.\
      입찰사 여러분의 많은 관심과 참여를 부탁 드립니다.',
      '',0);
   
INSERT INTO grounders_notice(seq, title, content, fileName, fileSize)
   VALUES (8, '언론사 제공 기사·사진 무단 게재, 주제와 벗어난 게시글 삭제 안내',
   
      '안녕하세요~ 그라운더즈 입니다.\
      \
      그라운더즈를 사랑해 주시는 그라운더즈 팬 여러분께 알려드립니다.\
      \
      언론사 기사 혹은 사진 등을 무단으로 게재하실 경우 저작권 문제가 발생하여 팬 여러분께서 법적인 책임을 지게 될 수도 있습니다.\
      \
      이는 출처를 표시하더라도 마찬가지이므로, 저작권법을 준수하여 언론 기사의 무단 게시를 삼가주시기 바랍니다.',
      '',0);
   
INSERT INTO grounders_notice(seq, title, content, fileName, fileSize)
   VALUES (9, '그라운더즈 선수단, 지역 아이들을 위한 기부금 1850만원 전달',
   
      '그라운더즈 선수단은 대구 경북 지역의 취약계층 아동들을 돕기 위해 기부금 1850만원을 전달했다. 이 기부금은 지난 2일(토) 야구팬 초청 삼겹살 파티를 통해 모금되었다.
      기부금 중 1350만원은 대구광역시 아동복지협회에, 300만원은 경북 구미시 취약계층 아동기금으로, 200만원은 경북 포항시 취약계층 아동기금으로 전액 기부했다.
      이번 행사를 기획한 이만복은 “좋은 기회를 통해 팬들과 즐거운 시간을 보낼 수 있었고, 행사를 통해 모금된 기부금으로 좋은 일에 쓸 수 있어 기쁘다. 이진성이 아닌 그라운더즈 선수단의 전통이 될 수 있도록 활동하겠다”고 말했다.',
      '',0);

INSERT INTO grounders_notice(title, content, fileName, fileSize)
   VALUES ('그라운더즈 2024시즌 팬북 제작 용역',
   
      '그라운더즈 2024시즌 팬북 제작 용역 입찰을 아래와 같이 진행합니다.\
      \
      \
      ---  아  래  ---\
      \
      1. 입찰에 부치는 사항    \
      가)공 고 명 : 그라운더즈 2024시즌 팬북 제작 용역\
      나)사업예산 : 60,000,000원 (부가세별도) \
      - 용역수행에 소요되는 제반비용 일체 포함\
      다)용역범위 : 제안 요청서 참조\
      라)사업기간 : 계약체결일로부터 2024년 3월 31일까지\
      \
      2. 입찰 및 선정 방식\
      가)입찰서 제출기간 : 2024년 2월 4일 13:00 ~ 2024년 2월 15일 18:00\
      나)입찰집행(개찰)일시 : 2023년 12월 18일 14:00\
      다)개찰장소 : 그라운더즈 2층 사무실\
      라)입찰방법 : 일반경쟁\
      마)계약방법 : 적격심사 낙찰\
      바)평가방식 : 제안서 및 그라운더즈 정한 업체선정 평가 방법에 의한 평가 *[별첨6] 참고\
      사)기타사항\
      1) 낙찰자 발표 : 개별통지(*상기 일정은 사정에 따라 변동될 수 있음)\
      2) 사업 수행 : 계약 체결 후 즉시 \
      \
      입찰 관련 상세 내용은 아래의 <입찰 공고> 및 <제안 요청서>를 참고해주세요.\
      입찰사 여러분의 많은 관심과 참여를 부탁 드립니다.',
      '',0);












