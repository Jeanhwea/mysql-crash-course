-- 第9章 用正则表达式进行搜索

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
-- using regular expression
SELECT choice_text, votes
  FROM polls_choice
  WHERE choice_text REGEXP 'a'
  ORDER BY choice_text;
-- +-------------+-------+
-- | choice_text | votes |
-- +-------------+-------+
-- | aaa         |     1 |
-- | apple       |     4 |
-- | Bad         |     1 |
-- | banana      |     2 |
-- | orange      |     1 |
-- +-------------+-------+
-- 5 rows in set (0.00 sec)

-- using OR
SELECT choice_text, votes
  FROM polls_choice
  WHERE choice_text REGEXP 'app|d'
  ORDER BY choice_text;
-- +-------------+-------+
-- | choice_text | votes |
-- +-------------+-------+
-- | apple       |     4 |
-- | Bad         |     1 |
-- | Good        |     0 |
-- +-------------+-------+
-- 3 rows in set (0.00 sec)

-- escape special character
SELECT choice_text, votes
  FROM polls_choice
  WHERE choice_text REGEXP '\\.'
  ORDER BY choice_text;
-- more meta-characters
-- \\f
-- \\r
-- \\n
-- \\t
-- \\v
