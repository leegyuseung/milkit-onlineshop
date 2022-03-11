CREATE TABLE users(
	name VARCHAR2(50) NOT NULL,
   	id VARCHAR2(100) PRIMARY KEY,
   	pwd VARCHAR2(100) NOT NULL,
   	email VARCHAR2(100)NOT NULL,
   	address VARCHAR2(100), 
	regdate DATE,
	usertype NUMBER(10) DEFAULT 0 NOT NULL
);

CREATE SEQUENCE users_seq;

CREATE TABLE product(
	productId VARCHAR2(100) PRIMARY KEY, /* 상품 아이디 */
	productName VARCHAR2(200) NOT NULL, /* 상품 이름 */
	price NUMBER(10) NOT NULL, /* 상품 가격 */
	stock NUMBER(10) DEFAULT 0, /* 상품 재고 */
	productCate VARCHAR2(30), /* 상품 카테고리 */
	regDate DATE, /* 상품 등록일 */
	updateDate DATE, /* 상품 정보 업데이트일 */
	buyCount NUMBER(10) /*인기 품목 선정을 위해*/
);
