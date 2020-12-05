-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.11-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para telegram
CREATE DATABASE IF NOT EXISTS `telegram` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `telegram`;

-- Copiando estrutura para tabela telegram.conversa
CREATE TABLE IF NOT EXISTS `conversa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text COLLATE utf8_bin DEFAULT NULL,
  `resposta` text COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Copiando dados para a tabela telegram.conversa: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `conversa` DISABLE KEYS */;
INSERT INTO `conversa` (`id`, `pergunta`, `resposta`) VALUES
	(1, 'vai ter prova? ', 'Por conta da pandemia do COVID-19 não serão aplicadas provas presenciais. O critério adotado é o da análise do histórico escolar. A classificação final vai considerar a média aritmética simples das notas das disciplinas de português e matemática das séries solicitadas coforme a modalidade. Apenas para os candidatos inscritos para os cursos de Canto, Dança, Regência e Teatro serão aplicadas provas on-line de aptidão. '),
	(2, 'o que é o Vestibulinho? ', 'É um processo seletivo que seleciona candidatos para as Escolas Técnicas Estaduais (Etecs), neste semestre por conta da pandemia do COVID-19, o processo classificatório será realizado mediante análise de rendimento escolar. Excepcionalmente não será aplicada prova presencial para o presente Processo Seletivo-Vestibulinho.'),
	(3, 'o Vestibulinho oferece vagas para quais cursos? ', 'No Ensino Médio em seus formatos a seguir:\r\no na 1ª série do Ensino Médio com ênfase em Linguagens, Ciências Humanas e Sociais; Ciências Biológicas, Agrárias e da Saúde; e, Ciências Exatas e Engenharias;\r\no na 1ª série do Ensino Médio com Qualificação Profissional do Programa Novotec integrado;\r\no na 1ª série do Ensino Médio com Habilitação Técnica Profissional do Programa Novotec integrado;\r\no na 1ª série do Ensino Técnico Integrado ao Ensino Médio;\r\no na 1ª série do Ensino Médio com Habilitação Técnica Profissional do projeto de Articulação da Formação Profissional Média e Superior – AMS do Programa Novotec integrado;\r\no no 1º termo do Ensino Técnico Integrado ao Ensino Médio na modalidade EJA (Educação de Jovens e Adultos);\r\nNo Ensino Técnico no 1º módulo dos Cursos do Ensino Técnico (presencial, semipresencial e on-line).\r\nNos Cursos de Especialização Técnica de Nível médio (presencial e on-line).\r\nA relação completa dos cursos está disponível em https://www.vestibulinhoetec.com.br/unidades-cursos/'),
	(4, 'quem pode tentar uma vaga nos cursos das Etecs?', 'Para o ingresso no Ensino Médio, em seus diversos formatos, o candidato deverá possuir o certificado de conclusão do Ensino Fundamental ou a Declaração de Conclusão, assinada por agente escolar da escola de origem, com data de entrega do histórico escolar com Certificado de Conclusão, ou o Exame Nacional para Certificação de Competências de Jovens e Adultos – ENCCEJA.\r\nPara os cursos técnicos integrados ao Ensino Médio na modalidade EJA, o candidato deverá ter idade mínima de 18 (dezoito) anos, a completar até 31-01-2021.\r\nPara o ingresso no Ensino Técnico no 1º módulo - Cursos do Ensino Técnico (presencial, semipresencial e on-line) o candidato deverá possuir:\r\nPara candidato que concluiu ou está cursando o Ensino Médio: possuir Certificado de Conclusão do Ensino Médio ou declaração que está matriculado na 2ª ou 3ª série do Ensino Médio.\r\nPara candidato que concluiu ou está cursando a Educação de Jovens e Adultos - EJA ou o Exame Nacional para Certificação de Competências de Jovens e Adultos - ENCCEJA: possuir Certificado de Conclusão do Ensino Médio ou declaração que está matriculado, a partir do 2º semestre da EJA ou 2 (dois) certificados de aprovação em áreas de estudos da EJA, ou Boletim de aprovação do ENCCEJA enviado pelo MEC, ou Certificado de aprovação do ENCCEJA em 2 (duas) áreas de estudos avaliadas.\r\nPara candidato que realizou o Exame Nacional do Ensino Médio – ENEM até a edição de 2016: possuir Certificado ou Declaração de Conclusão do Ensino Médio, expedido por órgão competente.\r\nPara o Curso de Técnico em Enfermagem o candidato deverá ter idade mínima de 18 (dezoito) anos, a completar até o dia 31-01-2021.\r\nPara o Curso de Técnico em Cuidados de Idosos, o candidato deverá ter idade mínima de 18 (dezoito) anos, a completar até o dia 31-01-2021 e possuir certificado de Auxiliar de Enfermagem ou 2 (dois) módulos do Curso de Técnico em Enfermagem.\r\nCaso seja ofertado o Curso de Técnico em Restaurante e Bar, o candidato deverá ter idade mínima de 18 (dezoito) anos, a completar até o dia 31-01-2021.\r\nPara o ingresso nos Cursos de Especialização Técnica de nível médio (presencial e on-line) o candidato deverá ter concluído o Ensino Médio e também:\r\nTer cursado integralmente e concluído, até 31-12-2020, o Ensino Técnico associado ao Curso de Especialização pretendido conforme relação disponível  site www.vestibulinhoetec.com.br (ou ao final deste Manual) para os cursos de Especialização presenciais;\r\nQualquer curso Técnico ou Superior, até 31-12-2020 para o Curso de Especialização em Gestão de Projetos (EaD – On-line).'),
	(5, 'quais são os pré-requisitos? ', 'Para o ingresso no Ensino Médio, em seus diversos formatos, o candidato deverá possuir o certificado de conclusão do Ensino Fundamental ou a Declaração de Conclusão, assinada por agente escolar da escola de origem, com data de entrega do histórico escolar com Certificado de Conclusão, ou o Exame Nacional para Certificação de Competências de Jovens e Adultos – ENCCEJA.\r\nPara os cursos técnicos integrados ao Ensino Médio na modalidade EJA, o candidato deverá ter idade mínima de 18 (dezoito) anos, a completar até 31-01-2021.\r\nPara o ingresso no Ensino Técnico no 1º módulo - Cursos do Ensino Técnico (presencial, semipresencial e on-line) o candidato deverá possuir:\r\nPara candidato que concluiu ou está cursando o Ensino Médio: possuir Certificado de Conclusão do Ensino Médio ou declaração que está matriculado na 2ª ou 3ª série do Ensino Médio.\r\nPara candidato que concluiu ou está cursando a Educação de Jovens e Adultos - EJA ou o Exame Nacional para Certificação de Competências de Jovens e Adultos - ENCCEJA: possuir Certificado de Conclusão do Ensino Médio ou declaração que está matriculado, a partir do 2º semestre da EJA ou 2 (dois) certificados de aprovação em áreas de estudos da EJA, ou Boletim de aprovação do ENCCEJA enviado pelo MEC, ou Certificado de aprovação do ENCCEJA em 2 (duas) áreas de estudos avaliadas.\r\nPara candidato que realizou o Exame Nacional do Ensino Médio – ENEM até a edição de 2016: possuir Certificado ou Declaração de Conclusão do Ensino Médio, expedido por órgão competente.\r\nPara o Curso de Técnico em Enfermagem o candidato deverá ter idade mínima de 18 (dezoito) anos, a completar até o dia 31-01-2021.\r\nPara o Curso de Técnico em Cuidados de Idosos, o candidato deverá ter idade mínima de 18 (dezoito) anos, a completar até o dia 31-01-2021 e possuir certificado de Auxiliar de Enfermagem ou 2 (dois) módulos do Curso de Técnico em Enfermagem.\r\nCaso seja ofertado o Curso de Técnico em Restaurante e Bar, o candidato deverá ter idade mínima de 18 (dezoito) anos, a completar até o dia 31-01-2021.\r\nPara o ingresso nos Cursos de Especialização Técnica de nível médio (presencial e on-line) o candidato deverá ter concluído o Ensino Médio e também:\r\nTer cursado integralmente e concluído, até 31-12-2020, o Ensino Técnico associado ao Curso de Especialização pretendido conforme relação disponível  site www.vestibulinhoetec.com.br (ou ao final deste Manual) para os cursos de Especialização presenciais;\r\nQualquer curso Técnico ou Superior, até 31-12-2020 para o Curso de Especialização em Gestão de Projetos (EaD – On-line).'),
	(6, 'tem idade mínima para fazer os cursos técnicos? ', 'Para os cursos técnicos integrados ao Ensino Médio na modalidade EJA, o candidato deverá ter idade mínima de 18 (dezoito) anos, a completar até 31-01-2021.'),
	(7, 'como serão as aulas por conta da pandemia do COVID-19? ', 'Os cursos presenciais terão o início das aulas de forma remota (on-line), até que as regras do isolamento social sejam flexibilizadas a ponto de tornar possível a continuidade das aulas de forma presencial na Etec/Extensão de Etec (classe descentralizada).'),
	(8, 'estudei no exterior. Quais notas vou lançar? ', 'Os candidatos que cursaram o Ensino Médio no exterior deverão incluir as notas de Matemática e da Língua Oficial escolar.'),
	(9, 'posso tentar transferência de curso ou de unidade? ', 'O candidato deve observar que as vagas de Ensino Médio, em todos os seus formatos, do Ensino Técnico (presencial, semipresencial e on-line) e da Especialização Técnica de Nível Médio não serão, em hipótese alguma, destinadas aos processos de transferência, reclassificação ou aproveitamento de estudos.'),
	(10, 'quais são as principais etapas do processo seletivo ', 'De 24-11 até às 15 horas do dia 14-12-2020 – Inscrições para o Processo Seletivo Vestibulinho no site www.vestibulinhoetec.com.br;\r\nDe 15-12 até 30-12-2020 – Período para análise das notas lançadas e dos documentos de comprovação;\r\nDia 31-12-2020 – Lista preliminar de inscrições deferidas e indeferidas;\r\nDe 04-01 até 05-01-2021 – Período para recurso contra a lista preliminar de inscrições (online) com a possibilidade de retificação de notas ou reenvio de documentos comprobatórios dos candidatos que tiveram a inscrição indeferida por informar erroneamente ou inserir a documentação ilegível, incompleta ou diversa do que deveria anexar;\r\nDia 13-01-2021 – Divulgação da Lista de inscrições deferidas após análise dos recursos;\r\nDia 19-01-2021 - Divulgação da Lista de classificação geral no site www.vestibulinhoetec.com.br e da 1ª Lista de convocação dos candidatos;\r\nDe 20-01 a 21-01-2021 - Matrícula da 1ª Lista de Convocação dos candidatos com envio da documentação dos candidatos classificados no site www.vestibulinhoetec.com.br;\r\nDia 29-01-2021 – Divulgação da 2ª Lista de convocação dos candidatos no site www.vestibulinhoetec.com.br;\r\nDias 01-02 e 02-02-2021 – Matrícula da 2ª Lista de convocação dos candidatos.'),
	(11, 'como faço a inscrição? ', 'Pelo site www.vestibulinhoetec.com.br. É preciso preencher a ficha de inscrição pela internet, fazer upload dos documentos e pagar a taxa no valor de R$ 19,00 (dezenove reais). Se não pagar até 14 de dezembro a inscrição será cancelada. O dinheiro pago depois dessa data não será devolvido.'),
	(12, 'quando começaram as inscrições para o Vestibulinho? ', 'No dia 24 de novembro pelo site www.vestibulinhoetec.com.br'),
	(13, 'até quando posso me inscrever para o Vestibulinho? ', 'Até as 15 horas do dia 14 de dezembro pelo site www.vestibulinhoetec.com.br'),
	(14, 'quais documentos de identificação preciso para me inscrever? ', 'Para se inscrever o interessado precisa ter CPF e fazer upload do  Documento de Identificação (RG/RNE/CNH)'),
	(15, 'não tenho CPF. Como faço para me inscrever? ', 'É preciso ter seu próprio CPF para fazer a inscrição. Consulte o site www.receita.fazenda.gov.br para informações sobre como obter esse documento. O candidato menor de 16 anos precisa informar obrigatoriamente o nome e o número do CPF de seu representante legal (pai, mãe, curador ou tutor).'),
	(16, 'o que é fazer upload? ', 'Significa enviar arquivos para um servidor, ou seja, você vai enviar, no ato da inscrição, os seus documentos para o sistema de inscrição do Vestibulinho da Etec, para que esses documentos sejam analisados posteriormente.'),
	(17, 'não tenho o documento do RG. Como faço? ', ' Considera-se para a inscrição, para upload no sistema, documento que comprova o número do RG:'),
	(18, 'perdi o meu documento do RG. E agora? ', 'Em caso de perda, roubo ou extravio de “documento de identidade”, o candidato deverá realizar upload dos seguintes documentos:'),
	(19, 'como serão as provas on-line para os cursos com prova de aptidão (Canto, Dança, Regência e Teatro)? ', 'Os candidatos inscritos para os Cursos de Técnico em Canto, Dança, Regência e Teatro serão avaliados por análise de rendimento escolar, conforme o descrito anteriormente, e também por prova de aptidão.\r\nA prova de aptidão on-line será aplicada após a divulgação da lista de convocação da habilitação.\r\nA prova de aptidão on-line será realizada somente pelos até 90 (noventa) primeiros classificados na avaliação de rendimento escolar, dos Cursos de Técnico em Canto, Dança, Regência e Teatro, sendo desconsiderada a pontuação da primeira fase.\r\nAs provas de aptidão serão realizadas conforme especificado a seguir:\r\nPara o Curso de Técnico em Canto:\r\no   A prova de aptidão constará de parte escrita e prática que abordarão:\r\na Percepção Auditiva – acuidade auditiva elementar a respeito de parâmetros sonoros e musicais;\r\na Acuidade Vocal – capacidade de afinação e de precisão rítmica, bem como de memória musical;\r\na Acuidade da Linguagem – capacidade de pensar palavras e de usar a linguagem oral para expressar significados complexos.\r\no   A parte escrita será constituída de 3 questões dissertativas a serem definidas pela Etec selecionadora, sendo cada questão respondida em até 400 caracteres.\r\no   A parte prática constará de envio de um vídeo pelo candidato, cantando obrigatoriamente com playback, uma das canções que serão determinadas pela Etec selecionadora. Para isso, será necessário a utilização de aplicativo de sobreposição de vídeo. Sugere-se usar o “Coro Virtual” que é gratuito.\r\no   Como suporte, serão disponibilizados pela Etec selecionadora, em formato mp3 / PDF os playbacks (em tonalidades que atendam às diferentes tessituras vocais) e partituras, para referência do candidato.\r\no   O vídeo deverá ser gravado em formato paisagem (celular deitado), enquadrado ao menos da cintura para cima, exibindo o rosto do candidato, e enviado no formato mp4 ou MOV, com resolução sugerida de 720p.\r\nPara o Curso de Técnico em Dança:\r\no   A prova de aptidão abordará:\r\na Percepção do corpo - Organização da estrutura do movimento corporal, uso das articulações, alinhamento corporal e domínio do peso;\r\na Percepção do espaço – Utilização do espaço cênico, direções espaciais, níveis e deslocamentos;\r\na Percepção do tempo - Organização do movimento em relação ao tempo: pulsação, ritmo e frase musical; e a\r\nCriatividade - Compreensão, organização e criatividade para a realização de um trabalho de criação coreográfica.\r\no   Para execução da prova de aptidão, o candidato fará uma prova escrita que será constituída de até 6 questões dissertativas a serem definidas pela Etec selecionadora, sendo cada questão respondida em até 400 caracteres.\r\no   Terá também uma prova prática que será constituída por uma aula guiada por voz (podendo conter imagens, vídeos ou somente som a ser disponibilizado pela Etec selecionadora) a fim de preparar o corpo e percorrer questões sobre os fatores de movimentos e temas ligados à Dança.\r\no   O candidato deverá criar um vídeo, com duração exata de um minuto (não podendo ter mais ou menos) Contendo as orientações informadas através da aula guiada. O vídeo deverá ser enviado no formato mp4 ou MOV, com resolução de até 720p.\r\nPara o Curso de Técnico em Regência:\r\no   A prova de aptidão constará de parte escrita e prática, que abordarão:\r\na Percepção Auditiva - acuidade auditiva elementar a respeito de parâmetros sonoros e musicais;\r\na Acuidade Vocal - capacidade de afinação e de precisão rítmica, bem como de memória musical;\r\nProntidão – capacidade de disponibilidade corporal ou capacidade de responder a estímulos em um fraseado musical.\r\no   A parte escrita será constituída de 3 questões dissertativas a serem definidas pela Etec selecionadora, sendo cada questão respondida em até 400 caracteres.\r\no   A parte prática constará do envio de dois vídeos a saber:\r\nNo vídeo 1, o candidato ouvirá um excerto musical a duas vozes a ser disponibilizado pela Etec selecionadora, em formato mp3, e deverá escolher uma delas, memorizá-la e, em seguida, enviar um vídeo cantando a melodia escolhida, com letra disponibilizada. O vídeo deverá ser gravado em formato paisagem (celular deitado), enquadrando ao menos da cintura para cima, exibindo o rosto do candidato e enviado no formato mp4 ou MOV, com resolução sugerida de 720p.\r\nNo vídeo 2, o candidato assistirá a um vídeo de um exercício musical/corporal a der disponibilizado pela Etec selecionadora, e gravar um vídeo de corpo inteiro reproduzindo a atividade. O vídeo deverá ser gravado em formato paisagem (celular deitado), enquadrando o corpo inteiro, exibindo o rosto do candidato e enviado no formato mp4 ou MOV, com resolução sugerida de 720p.\r\nPara o Curso de Técnico em Teatro:\r\nA prova de aptidão constará de parte escrita e prática, que abordarão:\r\na acuidade da Linguagem Oral – capacidade de usar a linguagem oral para expressar significados complexos;\r\na acuidade da linguagem Escrita – capacidade de análise e uso de vocabulário diversificado e artístico da linguagem de forma sensível à diversidade de sentidos inerentes à linguagem;\r\na Percepção do corpo – Organização básica do movimento corporal, alinhamento corporal e domínio do peso;\r\na Percepção do espaço – Utilização do espaço cênico, direções espaciais, níveis e deslocamentos.\r\no   A prova escrita será constituída de 2 questões dissertativas a serem definidas pela Etec selecionadora, sendo cada questão respondida em até 600 caracteres.\r\no   A prova prática constará do envio de um vídeo de uma cena teatral, de livre criação e autoria, desenvolvida a partir do tema a ser determinado pela Etec selecionadora. O candidato deverá exercitar sua criatividade para explorar ações, gestos e modos distintos de falar, além de explorar sua percepção em ser a principal imagem que deve aparecer no vídeo, utilizando de sua expressividade vocal e corporal de maneira criativa.\r\n'),
	(20, 'boa noite', 'Boa noite em que posso ajudar ?'),
	(21, 'bom dia', 'Boa dia em que posso ajudar ?'),
	(22, 'boa tarde', 'Boa tarde em que posso ajudar ?');
/*!40000 ALTER TABLE `conversa` ENABLE KEYS */;

-- Copiando estrutura para tabela telegram.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `usuario` varchar(50) DEFAULT NULL,
  `senha` char(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela telegram.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
