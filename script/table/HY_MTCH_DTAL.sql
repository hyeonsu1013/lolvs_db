-- 테이블 삭제
 DROP TABLE IF EXISTS HY_MTCH_DTAL;
 
 -- 테이블 및 인덱스 생성
 CREATE TABLE HY_MTCH_DTAL
 (
	MTCH_DTAL_SEQ INT NOT NULL AUTO_INCREMENT COMMENT '매치 SEQ',
    MTCH_NO INT NOT NULL COMMENT '매치번호',
    MTCH_DTAL_NO TINYINT NOT NULL COMMENT '매치상세번호',
    PSTN_TYPE VARCHAR(20) NOT NULL COMMENT '포지션타입', -- 공통코드
    PRO_NO INT NOT NULL COMMENT '선수번호',
    DB_STAT CHAR(1) NOT NULL DEFAULT 'A' COMMENT 'DB상태', -- 공통코드
    CONSTRAINT HY_MTCH_DTAL_PK PRIMARY KEY(MTCH_DTAL_SEQ),
    INDEX HY_MTCH_DTAL_IDX1 (MTCH_NO)
 ) COMMENT 'HY 리그 매치 상세';
 
 ALTER TABLE HY_MTCH_DTAL AUTO_INCREMENT = 100000;

DESC HY_MTCH_DTAL;
SHOW INDEX FROM HY_MTCH_DTAL;

SELECT * FROM HY_MTCH_DTAL;