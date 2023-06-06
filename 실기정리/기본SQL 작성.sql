CREATE TABLE 회원 (
	user_no int(11) NOT NULL
	name varchar(50) NOT NULL,
	PRIMARY key(user_no)
)

CREATE INDEX search_name ON 회원(name); -- 인덱스 --
CREATE VIEW view_name AS SELECT name, age FROM 회원; -- 뷰 --
ALTER TABLE 회원 ADD addr varchar(200); -- ALTER ADD 속성 추가-- 
ALTER TABLE 회원 MODIFY age int(11);  -- 속성 변경 --
atler TABLE 회원 DROP COLUMN age; -- 속성 삭제 -- 
ALTER INDEX 회원명 RENAME TO 성명;
ALTER ter INDEX 회원명 rebuild;
ALTER INDEX 회원명 unusable; -- 비활성화 --
DROP TABLE 회원;
truncate TABLE 회원;
-- PRIMARY KEY ( 기본적으로 NO NULL, UNIQUE 제약 설정, 테이블의 기본 키 정의) --
FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE;
-- UNIQUE, NOT NULL, CHECk(도메인 무결성 조건) --
CONSTRAINT USER_jumin check(LENGTH(jumin)=13);

INSERT INTO 회원 (name, age) VALUES ('김김김', '20');
INSERT INTO 회원 SELECT name, age FROM 회원2;

SELECT 속성 FROM 테이블명 WHERE 조건 AND GROUP BY HAVING ORDER BY DESC;
SELECT * FROM 사원정보 WHERE 부서='개발팀' OR 부서='디자인팀';
SELECT * FROM 사원정보
WHERE (부서='개발팀' OR 부서='디자인팀') AND 이름 LIKE '이%';
SELECT * FROM 사원정보
WHERE (부서='개발팀' OR 부서='디자인팀') AND 이름 LIKE '이_';
SELECT * FROM 사원정보 WHERE 부서='개발팀' AND 입사일 IS NULL;
SELECT * FROM 사원정보 WHERE 입사일 >= '2010';
SELECT * FROM 사원정보 WHERE 입사일 >= '2010' AND 입사일 <= '2020';
SELECT * FROM 사원정보 WHERE 입사일 BETWEEN 2010 AND 2020;
SELECT 부서 FROM 사원정보;
SELECT DISTINCT 부서 FROM 사원정보;
SELECT 부서, count(*) AS 인원수 FROM 사원정보 GROUP BY 부서; 
SELECT 부서, count(*) AS 인원수 FROM 사원정보 
GROUP BY 부서 HAVING count(*)>=2;
SELECT 부서, count(*) AS 인원수, sum(나이) AS 나이 FROM 사원정보 
GROUP BY 부서;

SELECT * FROM 사원정보 ORDER BY 나이 DESC;

UPDATE 사원정보 SET 나이=나이+1;
UPDATE 사원정보 SET 부서='개발지원팀' WHERE 부서='개발팀';
DELETE FROM 사원정보 WHERE 부서='개발팀';
DELETE FROM 사원정보 WHERE 부서='디자인팀' AND 이름='이이이';
