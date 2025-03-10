CREATE TABLE qa_records (
id INT AUTO_INCREMENT PRIMARY KEY,
timestamp DATETIME NOT NULL,
responsetime INT NOT NULL,
model_name VARCHAR(255) NOT NULL,
question TEXT NOT NULL,
maxtokens INT NOT NULL,
temperature FLOAT NOT NULL,
answer TEXT NOT NULL
);