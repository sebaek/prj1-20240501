CREATE DATABASE prj1;

USE prj1;

DROP TABLE board;
CREATE TABLE board
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    title    VARCHAR(200)  NOT NULL,
    content  VARCHAR(3000) NOT NULL,
    writer   VARCHAR(100)  NOT NULL,
    inserted DATETIME      NOT NULL DEFAULT NOW()
);

SELECT *
FROM board;

USE prj1;

#회원 테이블
CREATE TABLE member
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    email     VARCHAR(200) NOT NULL UNIQUE,
    password  VARCHAR(200) NOT NULL,
    nick_name VARCHAR(100) NOT NULL UNIQUE,
    inserted  DATETIME     NOT NULL DEFAULT NOW()
);

ALTER TABLE member
    ADD COLUMN inserted DATETIME NOT NULL DEFAULT NOW();

SELECT *
FROM member;

# 페이징용..(게시물 복사해서 갯수 늘리기)
INSERT INTO board
    (title, content, writer)
SELECT title, content, writer
FROM board;

SELECT COUNT(id)
FROM board;

# board 테이블 수정
# writer 컬럼 지우기
# member_id INT REFERENCES member(id) 컬럼 추가

ALTER TABLE board
    DROP COLUMN writer;
ALTER TABLE board
    ADD COLUMN member_id INT REFERENCES member (id);
UPDATE board
SET member_id = 9
WHERE id > 0;

DESC board;

SELECT *
FROM board
LIMIT 3;
SELECT *
FROM member;
DESC member;

create table authority
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT         NOT NULL REFERENCES member (id),
    name      VARCHAR(20) NOT NULL
);
INSERT INTO authority
    (member_id, name)
VALUES (15, 'admin');

SELECT *
FROM member m
         LEFT JOIN authority a ON m.id = a.member_id;






