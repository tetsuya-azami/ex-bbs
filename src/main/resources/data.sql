--記事を1万5千件作成
INSERT INTO articles(name, content)
SELECT format('山田テストユーザー%s', i),format('山田記事テスト%s',i)
FROM generate_series(1,5000) as i;
INSERT INTO articles(name, content)
SELECT format('鈴木テストユーザー%s', i),format('鈴木記事テスト%s',i)
FROM generate_series(5001,10000) as i;
INSERT INTO articles(name, content)
SELECT format('佐藤テストユーザー%s', i),format('佐藤テスト%s',i)
FROM generate_series(10001,15000) as i;


--コメントを1万件作成(記事idは1~15000でランダム)
INSERT INTO comments(name, content, article_id)
SELECT format('テストユーザー%s', (random() * 15000)::int + 1),format('コメントテスト%s',i), (random() * 15000)::int + 1
FROM generate_series(1,10000) AS i;
