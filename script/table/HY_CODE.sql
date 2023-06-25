-- 테이블 삭제
 DROP TABLE IF EXISTS HY_CODE;
 
 -- 테이블 및 인덱스 생성
 CREATE TABLE HY_CODE
 (
	CODE_INI VARCHAR(20) NOT NULL COMMENT '코드 이니셜',
    CODE_INI_NAME VARCHAR(60) NOT NULL COMMENT '코드 이니셜명',
    CODE_ID VARCHAR(20) NOT NULL COMMENT '코드 ID',
    CODE_ID_NAME VARCHAR(60) NOT NULL COMMENT '코드 ID명',
    PRNT_INI VARCHAR(20) COMMENT '상위코드 이니셜',
    PRNT_ID VARCHAR(20) COMMENT '상위코드 ID',
    USE_YN CHAR(1) DEFAULT 'N' COMMENT '사용여부',
    DISP_YN CHAR(1) DEFAULT 'N' COMMENT '노출여부',
    DISP_ODER SMALLINT comment '정렬순서',
    CODE_DESC VARCHAR(100) COMMENT '코드 설명',
    CONSTRAINT HY_CODE_PK PRIMARY KEY(CODE_INI, CODE_ID),
    INDEX HY_CODE_IDX1 (PRNT_INI, PRNT_ID)
 ) COMMENT 'HY 공통코드';

DESC HY_CODE;
SHOW INDEX FROM HY_CODE;

SELECT * FROM HY_CODE;