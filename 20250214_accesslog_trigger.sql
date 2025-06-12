-- ALTER TABLE accesslog ADD COLUMN is_bot TINYINT(1) DEFAULT 0;

DROP TRIGGER IF EXISTS set_is_bot;

DELIMITER //

CREATE TRIGGER set_is_bot BEFORE INSERT ON accesslog
FOR EACH ROW
BEGIN
    IF NEW.useragent REGEXP 'SemrushBot|Googlebot|Bytespider|bingbot|GPTBot|ClaudeBot|Amazonbot|Facebot|Twitterbot|applebot|trendictionbot|MJ12bot|serpstatbot|AhrefsBot|meta-externalagent|TikTokSpider|OAI-SearchBot|SeznamBot|bot@linkfluence|ChatGPT-User|PerplexityBot|msnbot|Timpibot' THEN
        SET NEW.is_bot = 1;
    ELSE
        SET NEW.is_bot = 0;
    END IF;
END; //

DELIMITER ;

UPDATE accesslog SET is_bot = 1
    WHERE useragent REGEXP 'SemrushBot|Googlebot|Bytespider|bingbot|GPTBot|ClaudeBot|Amazonbot|Facebot|Twitterbot|applebot|trendictionbot|MJ12bot|serpstatbot|AhrefsBot|meta-externalagent|TikTokSpider|OAI-SearchBot|SeznamBot|bot@linkfluence|ChatGPT-User|PerplexityBot|msnbot|Timpibot'
      AND is_bot = 0;

SELECT count(*) FROM accesslog
    WHERE useragent NOT REGEXP 'SemrushBot|Googlebot|Bytespider|bingbot|GPTBot|ClaudeBot|Amazonbot|Facebot|Twitterbot|applebot|trendictionbot|MJ12bot|serpstatbot|AhrefsBot|meta-externalagent|TikTokSpider|OAI-SearchBot|SeznamBot|bot@linkfluence|ChatGPT-User|PerplexityBot|msnbot|Timpibot'
  AND is_bot = 0
  AND ts > '2024-01-01 00:00:00';
-- ORDER BY ts DESC;

SELECT count(*) FROM accesslog
-- WHERE useragent REGEXP 'Bot|bot|BOT|Spider|spider' and is_bot = 0 order by useragent;
WHERE useragent REGEXP 'Bot|bot|BOT|Spider|spider' and is_bot = 0;
