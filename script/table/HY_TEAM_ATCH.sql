-- 테이블 삭제
 DROP TABLE IF EXISTS HY_TEAM_ATCH;
 
 -- 테이블 및 인덱스 생성
 CREATE TABLE HY_TEAM_ATCH
 (
	TEAM_ATCH_SEQ INT NOT NULL AUTO_INCREMENT COMMENT '팀첨부파일 SEQ',
    TEAM_NO INT NOT NULL COMMENT '팀번호',
    TEAM_ATCH_NO TINYINT NOT NULL COMMENT '팀첨부파일번호',
    FILE_TYPE VARCHAR(20) NOT NULL COMMENT '파일타입', -- 공통코드
    FILE_PATH VARCHAR(500) NOT NULL COMMENT '파일경로',
    LGUE_NO INT COMMENT '리그번호',
    DB_STAT CHAR(1) NOT NULL DEFAULT 'A' COMMENT 'DB상태', -- 공통코드
    CONSTRAINT HY_TEAM_ATCH_PK PRIMARY KEY(TEAM_ATCH_SEQ),
    INDEX HY_TEAM_ATCH_IDX1 (TEAM_NO)
 ) COMMENT 'HY 팀첨부파일';
 
 ALTER TABLE HY_TEAM_ATCH AUTO_INCREMENT = 100000;

DESC HY_TEAM_ATCH;
SHOW INDEX FROM HY_TEAM_ATCH;

SELECT * FROM HY_TEAM_ATCH;