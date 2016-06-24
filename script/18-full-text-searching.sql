-- 第18章 全文本搜索

-- enable FULLTEXT search
CREATE TABLE productnotes
(
  note_id int NOT NULL AUTO_INCREMENT,
  prod_id char(10) NOT NULL,
  note_date datetime NOT NULL,
  note_text text NULL,
  PRIMARY KEY(note_id),
  FULLTEXT(note_text)
) ENGINE=MyISAM;


-- use FULLTEXT search
SELECT note_text
  FROM productnotes
  WHERE Match(note_text) Against('rabbit');
-- +----------------------------------------------------------------------------------------------------------------------+
-- | note_text                                                                                                            |
-- +----------------------------------------------------------------------------------------------------------------------+
-- | Customer complaint: rabbit has been able to detect trap, food apparently less effective now.                         |
-- | Quantity varies, sold by the sack load. All guaranteed to be bright and orange, and suitable for use as rabbit bait. |
-- +----------------------------------------------------------------------------------------------------------------------+

-- Note: field in Match() must defined in FULLTEXT(), and sort text by rank
SELECT note_id, note_text,
  Match(note_text) Against('rabbit') AS rank
  FROM productnotes;
-- +---------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
-- | note_id | note_text                                                                                                                                                 | rank               |
-- +---------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+
-- | 101     | Customer complaint: Sticks not individually wrapped, too easy to mistakenly detonate all at once.  Recommend individual wrapping.                         | 0                  |
-- | 102     | Can shipped full, refills not available.  Need to order new can if refill needed.                                                                         | 0                  |
-- | 103     | Safe is combination locked, combination not provided with safe.  This is rarely a problem as safes are typically blown up or dropped by customers.        | 0                  |
-- | 104     | Quantity varies, sold by the sack load.  All guaranteed to be bright and orange, and suitable for use as rabbit bait.                                     | 1.5905543565750122 |
-- | 105     | Included fuses are short and have been known to detonate too quickly for some customers.  Longer fuses are available (item FU1) and should be recommended.| 0                  |
-- | 106     | Matches not included, recommend purchase of matches or detonator (item DTNTR).                                                                            | 0                  |
-- | 107     | Please note that no returns will be accepted if safe opened using explosives.                                                                             | 0                  |
-- | 108     | Multiple customer returns, anvils failing to drop fast enough or falling backwards on purchaser. Recommend that customer considers using heavier anvils.  | 0                  |
-- | 109     | Item is extremely heavy. Designed for dropping, not recommended for use with slings, ropes, pulleys, or tightropes.                                       | 0                  |
-- | 110     | Customer complaint: rabbit has been able to detect trap, food apparently less effective now.                                                              | 1.6408053636550903 |
-- | 111     | Shipped unassembled, requires common tools (including oversized hammer).                                                                                  | 0                  |
-- | 112     | Customer complaint: Circular hole in safe floor can apparently be easily cut with handsaw.                                                                | 0                  |
-- | 113     | Customer complaint: Not heavy enough to generate flying stars around head of victim. If being purchased for dropping, recommend ANV02 or ANV03 instead.   | 0                  |
-- | 114     | Call from individual trapped in safe plummeting to the ground, suggests an escape hatch be added.  Comment forwarded to vendor.                           | 0                  |
-- +---------+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+

-- WITH QUERY EXPANSION
SELECT note_text
  FROM productnotes
  WHERE Match(note_text) Against('anvils' WITH QUERY EXPANSION);

-- IN BOOLEAN MODE
SELECT note_text
  FROM productnotes
  WHERE Match(note_text) Against('heavy -rope*' IN BOOLEAN MODE);
