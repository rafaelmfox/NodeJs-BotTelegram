USE telegram;

CREATE TABLE conversa(
id INT PRIMARY KEY AUTO_INCREMENT,
pergunta VARCHAR(50),
resposta VARCHAR(50)
)

INSERT INTO conversa (pergunta,resposta) VALUES('oi tudo bem?','Bem sim e vc?');
INSERT INTO conversa (pergunta,resposta) VALUES('oi','abc');
INSERT INTO conversa (pergunta,resposta) values("Boa tarde","Boa tarde");


SELECT c.resposta from conversa AS c WHERE pergunta = "oi tudo bem?";