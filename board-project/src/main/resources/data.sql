-- 테스트 계정
-- TODO: 테스트용이지만 비밀번호가 노출된 데이터 세팅. 개선하는 것이 좋을 지 고민해 보자.
insert into user_account (user_id, user_password, nickname, email, memo, created_at, created_by, modified_at, modified_by) values
    ('test', 'test1234', 'Jinny', 'jinny@mail.com', 'I am Jinny.', now(), 'jinny', now(), 'jinny')
;

-- article
insert into article (user_account_id, title, content, hashtag, created_by, modified_by, created_at, modified_at) values (1, 'Donec dapibus.', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '#white', 'Lucho', 'Gerri', '2023-01-01 17:42:08', '2023-01-08 20:32:59');
insert into article (user_account_id, title, content, hashtag, created_by, modified_by, created_at, modified_at) values (1, 'turpis elementum ligula vehicula', 'Vivamus vestibulum sagittis sapien.', '#yellow', 'Jermain', 'Perr', '2023-01-02 17:45:08', '2023-01-05 02:23:11');
insert into article (user_account_id, title, content, hashtag, created_by, modified_by, created_at, modified_at) values (1, '안녕하세요', '반갑습니다', '#하하', '홍길동', '홍길순', '2023-01-03 11:41:50', '2023-01-03 10:10:05');
insert into article (user_account_id, title, content, hashtag, created_by, modified_by, created_at, modified_at) values (1, '헤헤헤헤', '테스트입니다', '#테스트', '홍길영', '홍길민', '2023-01-05 05:33:20', '2023-01-06 01:46:33');
insert into article (user_account_id, title, content, hashtag, created_by, modified_by, created_at, modified_at) values (1, 'T!E!S!T!', 'test', '#test', '홍길한', '홍길성', '2023-01-05 10:30:21', '2023-01-05 10:35:10');
insert into article (user_account_id, title, content, hashtag, created_by, modified_by, created_at, modified_at) values (1, 'Morbi a ipsum', 'turpis nec euismod scelerisque', '#blue', 'kim', 'lee', '2023-01-07 18:15:29', '2023-01-07 20:13:04');
insert into article (user_account_id, title, content, hashtag, created_by, modified_by, created_at, modified_at) values (1, 'Duis bibendum.', 'Nullam molestie nibh in lectus.', '#black', 'Giacomo', 'Girica', '2023-01-07 18:15:49', '2023-01-08 20:13:04');
insert into article (user_account_id, title, content, hashtag, created_by, modified_by, created_at, modified_at) values (1, 'Maecenas ut massa quis augue luctus tincidunt.', 'Cras pellentesque volutpat dui.', '#purple', 'kelpi', 'leyzi', '2023-01-08 18:15:29', '2023-01-09 20:13:04');
insert into article (user_account_id, title, content, hashtag, created_by, modified_by, created_at, modified_at) values (1, 'parturient montes', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', '#pink', 'kim', 'loradd', '2023-01-09 19:11:59', '2023-01-09 20:13:31');
insert into article (user_account_id, title, content, hashtag, created_by, modified_by, created_at, modified_at) values (1, 'Integer a nibh','Etiam pretium iaculis justo. In hac habitasse platea dictumst.', '#red', 'keelz', 'pyete', '2023-01-10 13:15:40', '2023-01-10 16:23:40');


-- article comment
insert into article_comment (user_account_id, content, article_id, created_at, created_by, modified_at, modified_by) values (1, 'Donec dapibus.', 1, '2023-01-11 10:30:08', 'qldde', '2023-01-12 03:33:19', 'terri');
insert into article_comment (user_account_id, content, article_id, created_at, created_by, modified_at, modified_by) values (1, 'hello, nice to meet you', 1, '2023-01-12 09:18:10', 'holee', '2023-01-12 22:11:18', 'justin');
insert into article_comment (user_account_id, content, article_id, created_at, created_by, modified_at, modified_by) values (1, '안녕하세요, 반가워요. 제 이름은 홍길동입니다.', 2, '2023-01-12 11:56:13', '홍길동', '2023-01-12 15:01:11', 'sarah');
insert into article_comment (user_account_id, content, article_id, created_at, created_by, modified_at, modified_by) values (1, 'test, test, test!', 2, '2023-01-12 17:56:13', '홍길순', '2023-01-12 20:01:11', 'sarah');
insert into article_comment (user_account_id, content, article_id, created_at, created_by, modified_at, modified_by) values (1, 'leo odio, condimentum id, luctus rec', 3, '2023-01-12 18:56:13', '홍길순', '2023-01-12 19:01:11', 'sarah');
insert into article_comment (user_account_id, content, article_id, created_at, created_by, modified_at, modified_by) values (1, 'leo odio, condimentum id, luctus rec', 4, '2023-01-12 18:56:13', '홍길순', '2023-01-12 19:01:11', 'sarah');
insert into article_comment (user_account_id, content, article_id, created_at, created_by, modified_at, modified_by) values (1, 'leo odio, condimentum id, luctus rec', 5, '2023-01-12 18:56:13', '홍길순', '2023-01-12 19:01:11', 'sarah');
insert into article_comment (user_account_id, content, article_id, created_at, created_by, modified_at, modified_by) values (1, 'leo odio, condimentum id, luctus rec', 6, '2023-01-12 18:56:13', '홍길순', '2023-01-12 19:01:11', 'sarah');
insert into article_comment (user_account_id, content, article_id, created_at, created_by, modified_at, modified_by) values (1, 'leo odio, condimentum id, luctus rec', 7, '2023-01-12 18:56:13', '홍길순', '2023-01-12 19:01:11', 'sarah');
insert into article_comment (user_account_id, content, article_id, created_at, created_by, modified_at, modified_by) values (1, 'leo odio, condimentum id, luctus rec', 8, '2023-01-12 18:56:13', '홍길순', '2023-01-12 19:01:11', 'sarah');
insert into article_comment (user_account_id, content, article_id, created_at, created_by, modified_at, modified_by) values (1, 'leo odio, condimentum id, luctus rec', 9, '2023-01-12 18:56:13', '홍길순', '2023-01-12 19:01:11', 'sarah');
insert into article_comment (user_account_id, content, article_id, created_at, created_by, modified_at, modified_by) values (1, 'Etiam pretium iaculis justo', 9, '2023-01-12 18:56:13', '홍길순', '2023-01-12 19:01:11', 'sarah');
