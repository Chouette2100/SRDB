ALTER TABLE accesslog ADD COLUMN is_bot TINYINT(1) DEFAULT 0;

DROP TRIGGER IF EXISTS set_is_bot;

DELIMITER //

CREATE TRIGGER set_is_bot BEFORE INSERT ON accesslog
FOR EACH ROW
BEGIN
    IF NEW.useragent REGEXP 'SemrushBot|Googlebot|Bytespider|bingbot|GPTBot|Amazonbot|Facebot|Twitterbot|applebot|trendictionbot|MJ12bot|serpstatbot' THEN
        SET NEW.is_bot = 1;
    ELSE
        SET NEW.is_bot = 0;
    END IF;
END; //

DELIMITER ;

UPDATE accesslog SET is_bot = 1
    WHERE useragent REGEXP 'SemrushBot|Googlebot|Bytespider|bingbot|GPTBot|Amazonbot|Facebot|Twitterbot|applebot|trendictionbot|MJ12bot|serpstatbot'
      AND is_bot = 0;

SELECT * FROM accesslog
WHERE useragent NOT REGEXP 'SemrushBot|Googlebot|Bytespider|bingbot|GPTBot|Amazonbot|Facebot|Twitterbot|applebot|trendictionbot|MJ12bot|serpstatbot'
ORDER BY ts DESC;

SELECT * FROM accesslog
WHERE useragent REGEXP 'Bot|bot|BOT' and is_bot = 0 order by useragent;
