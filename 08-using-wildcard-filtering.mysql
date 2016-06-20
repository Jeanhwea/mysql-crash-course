-- 第8章 用通配符进行过滤

-- +----+-------------+-------+-------------+
-- | id | choice_text | votes | question_id |
-- +----+-------------+-------+-------------+
-- |  1 | apple       |     4 |           1 |
-- |  2 | banana      |     2 |           1 |
-- |  3 | orange      |     1 |           1 |
-- |  4 | aaa         |     1 |           2 |
-- |  5 | bbb         |     2 |           2 |
-- |  6 | ccc         |     3 |           2 |
-- |  7 | Good        |     0 |           3 |
-- |  8 | OK          |     0 |           3 |
-- |  9 | Bad         |     1 |           3 |
-- +----+-------------+-------+-------------+
-- LIKE operator
SELECT choice_text, votes
  FROM polls_choice
  WHERE choice_text LIKE 'a%'
  ORDER BY choice_text;
-- % 任意字符，出现任意次数
-- +-------------+-------+
-- | choice_text | votes |
-- +-------------+-------+
-- | aaa         |     1 |
-- | apple       |     4 |
-- +-------------+-------+
-- 2 rows in set (0.00 sec)

SELECT choice_text, votes
  FROM polls_choice
  WHERE choice_text LIKE '_a_'
  ORDER BY choice_text;
-- _ 任意字符，出现一次
-- +-------------+-------+
-- | choice_text | votes |
-- +-------------+-------+
-- | aaa         |     1 |
-- | Bad         |     1 |
-- +-------------+-------+
-- 2 rows in set (0.00 sec)
