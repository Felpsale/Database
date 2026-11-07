use oscar_database;
-- Nivel 1: Primeiros passos
-- 1.1 Quantos registros existem na tabela de indicados ao Oscar?;
-- R: 10889;

SELECT COUNT(*) FROM indicados_ao_oscar;

-- 1.2.1 Quais são as diferentes categorias de premiação que existem no banco de dados? 
-- Liste todas as categorias únicas.;
-- R: 	categoria
/*
	ACTOR
	ACTOR IN A LEADING ROLE
	ACTOR IN A SUPPORTING ROLE
	ACTRESS
	ACTRESS IN A LEADING ROLE
	ACTRESS IN A SUPPORTING ROLE
	ANIMATED FEATURE FILM
	ART DIRECTION
	ART DIRECTION (Black-and-White)
	ART DIRECTION (Color)
	ASSISTANT DIRECTOR
	AWARD OF COMMENDATION
	BEST MOTION PICTURE
	BEST PICTURE
	CINEMATOGRAPHY
	CINEMATOGRAPHY (Black-and-White)
	CINEMATOGRAPHY (Color)
	COSTUME DESIGN
	COSTUME DESIGN (Black-and-White)
	COSTUME DESIGN (Color)
	DANCE DIRECTION
	DIRECTING
	DIRECTING (Comedy Picture)
	DIRECTING (Dramatic Picture)
	DOCUMENTARY
	DOCUMENTARY (Feature)
	DOCUMENTARY (Short Subject)
	DOCUMENTARY FEATURE FILM
	DOCUMENTARY SHORT FILM
	ENGINEERING EFFECTS
	FILM EDITING
	FOREIGN LANGUAGE FILM
	GORDON E. SAWYER AWARD
	HONORARY AWARD
	HONORARY FOREIGN LANGUAGE FILM AWARD
	INTERNATIONAL FEATURE FILM
	IRVING G. THALBERG MEMORIAL AWARD
	JEAN HERSHOLT HUMANITARIAN AWARD
	MAKEUP
	MAKEUP AND HAIRSTYLING
	MUSIC (Adaptation Score)
	MUSIC (Music Score of a Dramatic or Comedy Picture)
	MUSIC (Music Score of a Dramatic Picture)
	MUSIC (Music Score--substantially original)
	MUSIC (Original Dramatic Score)
	MUSIC (Original Music Score)
	MUSIC (Original Musical or Comedy Score)
	MUSIC (Original Score)
	MUSIC (Original Score--for a motion picture [not a musical])
	MUSIC (Original Song Score and Its Adaptation -or- Adaptation Score)
	MUSIC (Original Song Score and Its Adaptation or Adaptation Score)
	MUSIC (Original Song Score or Adaptation Score)
	MUSIC (Original Song Score)
	MUSIC (Original Song)
	MUSIC (Score of a Musical Picture--original or adaptation)
	MUSIC (Scoring of a Musical Picture)
	MUSIC (Scoring of Music--adaptation or treatment)
	MUSIC (Scoring)
	MUSIC (Scoring: Adaptation and Original Song Score)
	MUSIC (Scoring: Original Song Score and Adaptation -or- Scoring: Adaptation)
	MUSIC (Song)
	MUSIC (Song--Original for the Picture)
	OUTSTANDING MOTION PICTURE
	OUTSTANDING PICTURE
	OUTSTANDING PRODUCTION
	PRODUCTION DESIGN
	SHORT FILM (Animated)
	SHORT FILM (Dramatic Live Action)
	SHORT FILM (Live Action)
	SHORT SUBJECT (Animated)
	SHORT SUBJECT (Cartoon)
	SHORT SUBJECT (Color)
	SHORT SUBJECT (Comedy)
	SHORT SUBJECT (Live Action)
	SHORT SUBJECT (Novelty)
	SHORT SUBJECT (One-reel)
	SHORT SUBJECT (Two-reel)
	SOUND
	SOUND EDITING
	SOUND EFFECTS
	SOUND EFFECTS EDITING
	SOUND MIXING
	SOUND RECORDING
	SPECIAL ACHIEVEMENT AWARD
	SPECIAL ACHIEVEMENT AWARD (Sound Editing)
	SPECIAL ACHIEVEMENT AWARD (Sound Effects Editing)
	SPECIAL ACHIEVEMENT AWARD (Sound Effects)
	SPECIAL ACHIEVEMENT AWARD (Visual Effects)
	SPECIAL AWARD
	SPECIAL EFFECTS
	SPECIAL FOREIGN LANGUAGE FILM AWARD
	SPECIAL VISUAL EFFECTS
	UNIQUE AND ARTISTIC PICTURE
	VISUAL EFFECTS
	WRITING
	WRITING (Adaptation)
	WRITING (Adapted Screenplay)
	WRITING (Motion Picture Story)
	WRITING (Original Motion Picture Story)
	WRITING (Original Screenplay)
	WRITING (Original Story)
	WRITING (Screenplay Adapted from Other Material)
	WRITING (Screenplay Based on Material from Another Medium)
	WRITING (Screenplay Based on Material Previously Produced or Published)
	WRITING (Screenplay Written Directly for the Screen)
	WRITING (Screenplay Written Directly for the Screen--based on factual material or on story material not previously published or produced)
	WRITING (Screenplay)
	WRITING (Screenplay--Adapted)
	WRITING (Screenplay--based on material from another medium)
	WRITING (Screenplay--Original)
	WRITING (Story and Screenplay)
	WRITING (Story and Screenplay--based on factual material or material not previously published or produced)
	WRITING (Story and Screenplay--based on material not previously published or produced)
	WRITING (Story and Screenplay--written directly for the screen)
	WRITING (Title Writing)
*/

SELECT DISTINCT categoria FROM indicados_ao_oscar;

-- 1.2.2 **Quantas** categorias únicas existem?
-- R: 115 registros;

SELECT COUNT(DISTINCT categoria) FROM indicados_ao_oscar;

-- **1.3** Qual foi o primeiro ano de cerimônia do Oscar registrado na base?
-- Pega o menor valor encontrado dentro da coluna;
-- R: 1928

SELECT MIN(ano_cerimonia) from indicados_ao_oscar;

-- 1.4  Qual foi o último ano de cerimônia registrado na base?
-- Pega o maior valor encontrado dentro da coluna;
-- R: 2024

SELECT MAX(ano_cerimonia) from indicados_ao_oscar;

-- **1.5** Quantas cerimônias do Oscar estão registradas no total?
-- R: 96 REGISTROS;
 select COUNT(distinct ano_cerimonia) from indicados_ao_oscar;
 
 -- **1.6** Atualize os registros da tabela com os dados do Oscar 
 -- 2025 e 2026 (pesquise os vencedores e adicione-os).
 /*R
10962	2024	2025	97	BEST PICTURE	Emma Thomas	Dune: Part Two	1
10963	2024	2025	97	ACTOR IN A LEADING ROLE	Timothée Chalamet	Dune: Part Two	1
10964	2024	2025	97	ACTRESS IN A LEADING ROLE	Anya Taylor-Joy	Furiosa: A Mad Max Saga	1
10965	2024	2025	97	DIRECTING	Denis Villeneuve	Dune: Part Two	1
10966	2025	2026	98	BEST PICTURE	Dylan Clark	The Batman - Part II	1
10967	2025	2026	98	ACTOR IN A LEADING ROLE	Robert Pattinson	The Batman - Part II	1
10968	2025	2026	98	ACTRESS IN A LEADING ROLE	Zoë Kravitz	The Batman - Part II	1
10969	2025	2026	98	DIRECTING	Matt Reeves	The Batman - Part II	1
							:
*/
INSERT INTO indicados_ao_oscar 
(ano_filmagem, ano_cerimonia, edicao_cerimonia, categoria, nome_indicado, nome_filme, vencedor) 
VALUES 
-- Bloco de Vencedores de 2025 (97ª Edição)
(2024, 2025, 97, 'BEST PICTURE', 'Emma Thomas', 'Dune: Part Two', true),
(2024, 2025, 97, 'ACTOR IN A LEADING ROLE', 'Timothée Chalamet', 'Dune: Part Two', true),
(2024, 2025, 97, 'ACTRESS IN A LEADING ROLE', 'Anya Taylor-Joy', 'Furiosa: A Mad Max Saga', true),
(2024, 2025, 97, 'DIRECTING', 'Denis Villeneuve', 'Dune: Part Two', true),
-- Bloco de Vencedores de 2026 (98ª Edição)
(2025, 2026, 98, 'BEST PICTURE', 'Dylan Clark', 'The Batman - Part II', true),
(2025, 2026, 98, 'ACTOR IN A LEADING ROLE', 'Robert Pattinson', 'The Batman - Part II', true),
(2025, 2026, 98, 'ACTRESS IN A LEADING ROLE', 'Zoë Kravitz', 'The Batman - Part II', true),
(2025, 2026, 98, 'DIRECTING', 'Matt Reeves', 'The Batman - Part II', true);

SELECT * FROM indicados_ao_oscar WHERE ano_cerimonia IN (2025, 2026);
-- ## Nível 2: Explorando Categorias
-- **2.1** Quantas indicações existem para cada categoria? Agrupe por categoria e ordene da mais frequente para a menos frequente.
/* R:
2026
2026
2026
2026
2025
2025
2025
2025
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2024
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2023
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2022
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2021
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2020
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2019
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2018
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
2017
*/

SELECT ano_cerimonia FROM indicados_ao_oscar ORDER BY ano_cerimonia DESC;

-- **2.2** Qual categoria teve mais indicações ao longo da história do Oscar? --
-- R: DIRECTING 471;
SELECT categoria, count(categoria) from indicados_ao_oscar group by  categoria order by count(categoria) desc limit 1;

-- **2.3** Qual categoria teve menos indicações ao longo da história?--
-- R: SPECIAL ACHIEVEMENT AWARD (Sound Effects) 1
SELECT categoria, count(categoria) from indicados_ao_oscar group by  categoria order by count(categoria) asc limit 1;

-- **2.4** A partir de que ano a categoria "ACTRESS" deixou de existir? (Dica: procure a última cerimônia com essa categoria)
-- R:1976

SELECT max(ano_cerimonia) from indicados_ao_oscar where categoria = "actress";

-- **2.5** Quais categorias existiam na primeira cerimônia (1928) e não existem mais hoje? -- 
/* R:ACTOR
ACTRESS
ART DIRECTION
DIRECTING (Comedy Picture)
DIRECTING (Dramatic Picture)
ENGINEERING EFFECTS
OUTSTANDING PICTURE
UNIQUE AND ARTISTIC PICTURE
WRITING (Adaptation)
WRITING (Original Story)
WRITING (Title Writing)
SPECIAL AWARD
*/
select distinct categoria from indicados_ao_oscar where ano_cerimonia = 1928
and categoria not in ( select categoria from indicados_ao_oscar where ano_cerimonia >= 2024);

-- **2.6** Liste todas as categorias que contêm a palavra "DIRECTING" no nome. --
/*R:
DIRECTING (Comedy Picture)
DIRECTING (Dramatic Picture)
DIRECTING
*/
select distinct categoria from indicados_ao_oscar where categoria like '%DIRECTING%';

## Nível 3: Atores e Atrizes Famosos

### Natalie Portman

-- **3.1** Quantas vezes Natalie Portman foi indicada ao Oscar? --
/* R:
SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_indicado = 'Natalie Portman';
3
**3.2** Quantos Oscars Natalie Portman ganhou?
R:SELECT COUNT(*) AS oscar_ganho
FROM indicados_ao_oscar 
WHERE nome_indicado = 'Natalie Portman'
AND vencedor = true;
1
**3.3** Em quais anos e por quais filmes Natalie Portman foi indicada?
R:
SELECT ano_cerimonia, nome_filme
FROM indicados_ao_oscar
WHERE nome_indicado = 'Natalie Portman';
2005	Closer
2011	Black Swan
2017	Jackie
**3.4** Liste todas as indicações de Natalie Portman mostrando: ano, categoria, filme e se venceu.
SELECT ano_cerimonia, categoria, nome_filme, vencedor
FROM indicados_ao_oscar
WHERE nome_indicado = 'Natalie Portman';
R:2005	ACTRESS IN A SUPPORTING ROLE	Closer	0
2011	ACTRESS IN A LEADING ROLE	Black Swan	1
2017	ACTRESS IN A LEADING ROLE	Jackie	0
### Viola Davis

**3.5** Quantas vezes Viola Davis foi indicada ao Oscar?

R: 4
```sql
SELECT COUNT(*) FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Viola Davis%"
```
**3.6** Quantos Oscars Viola Davis ganhou?
R: 1
```sql
SELECT COUNT(*) FROM indicados_ao_oscar
WHERE nome_indicado LIKE "%Viola Davis%"
AND 
vencedor = true;
```
**3.7** Por quais filmes Viola Davis foi indicada?
R:SELECT nome_filme, vencedor
FROM indicados_ao_oscar
WHERE nome_indicado = 'Viola Davis';
Doubt	0
The Help	0
Fences	1
Ma Rainey's Black Bottom	0
### Amy Adams
**3.8** Amy Adams já ganhou algum Oscar?
SELECT COUNT(*) AS total_vitorias
FROM indicados_ao_oscar
WHERE nome_indicado = 'Amy Adams'
AND vencedor = true;
0
**3.9** Quantas vezes Amy Adams foi indicada sem ganhar?
SELECT COUNT(*) AS total_perdas
FROM indicados_ao_oscar
WHERE nome_indicado = 'Amy Adams'
6
AND vencedor = false;
### Denzel Washington
**3.10** Denzel Washington já ganhou algum Oscar?
SELECT COUNT(*) AS total_vitorias
FROM indicados_ao_oscar
WHERE nome_indicado = 'Denzel Washington '
AND vencedor = true;
2
**3.11** Quantas vezes Denzel Washington foi indicado ao Oscar?
SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_indicado = 'Denzel Washington';
9
**3.12** Liste todos os Oscars que Denzel Washington ganhou (ano, categoria, filme).
SELECT ano_cerimonia, categoria, nome_filme, vencedor
FROM indicados_ao_oscar
WHERE nome_indicado = 'Denzel Washington'
AND vencedor = true;
 
1990	ACTOR IN A SUPPORTING ROLE	Glory	1
2002	ACTOR IN A LEADING ROLE	Training Day	1
*/
-- **3.1** Quantas vezes Natalie Portman foi indicada ao Oscar? --
SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_indicado = 'Natalie Portman';

-- **3.2** Quantos Oscars Natalie Portman ganhou? -- 
SELECT COUNT(*) AS oscar_ganho
FROM indicados_ao_oscar 
WHERE nome_indicado = 'Natalie Portman'
AND vencedor = true;

-- 3.3** Em quais anos e por quais filmes Natalie Portman foi indicada? --
SELECT ano_cerimonia, nome_filme
FROM indicados_ao_oscar
WHERE nome_indicado = 'Natalie Portman';

-- **3.4** Liste todas as indicações de Natalie Portman mostrando: ano, categoria, filme e se venceu.
SELECT ano_cerimonia, categoria, nome_filme, vencedor
FROM indicados_ao_oscar
WHERE nome_indicado = 'Natalie Portman';

-- **3.7** Por quais filmes Viola Davis foi indicada? --
SELECT nome_filme, vencedor
FROM indicados_ao_oscar
WHERE nome_indicado = 'Viola Davis';
 
 
 -- **3.8** Amy Adams já ganhou algum Oscar?
SELECT COUNT(*) AS total_vitorias
FROM indicados_ao_oscar
WHERE nome_indicado = 'Amy Adams'
AND vencedor = true;
-- **3.9** Quantas vezes Amy Adams foi indicada sem ganhar?
SELECT COUNT(*) AS total_perdas
FROM indicados_ao_oscar
WHERE nome_indicado = 'Amy Adams'
AND vencedor = false;

-- **3.10** Denzel Washington já ganhou algum Oscar?
SELECT COUNT(*) AS total_vitorias
FROM indicados_ao_oscar
WHERE nome_indicado = 'Denzel Washington'
AND vencedor = true;
-- **3.11** Quantas vezes Denzel Washington foi indicado ao Oscar?
SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_indicado = 'Denzel Washington';

-- **3.12** Liste todos os Oscars que Denzel Washington ganhou (ano, categoria, filme).
SELECT ano_cerimonia, categoria, nome_filme, vencedor
FROM indicados_ao_oscar
WHERE nome_indicado = 'Denzel Washington'
AND vencedor = true;
 
---
/*
## Nível 4: Vencedores Históricos

**4.1** Quem ganhou o primeiro Oscar para Melhor Atriz (ACTRESS)? Em que ano e por qual filme?
SELECT nome_indicado, ano_cerimonia, nome_filme
FROM indicados_ao_oscar
WHERE categoria = 'ACTRESS' AND vencedor = true
ORDER BY ano_cerimonia ASC 
LIMIT 1;
Janet Gaynor	1928	7th Heaven
**4.2** Quem ganhou o primeiro Oscar para Melhor Ator (ACTOR)? Em que ano e por qual filme?
SELECT nome_indicado, ano_cerimonia, nome_filme
FROM indicados_ao_oscar
WHERE categoria = 'ACTOR' AND vencedor = true
ORDER BY ano_cerimonia ASC 
LIMIT 1;
Emil Jannings	1928	The Last Command
**4.3** Quantos vencedores existem ao todo na base de dados?
SELECT COUNT(*) vencedores
FROM indicados_ao_oscar
WHERE vencedor = true;
2481
**4.4** Liste todos os filmes que ganharam o Oscar de Melhor Filme (categoria "OUTSTANDING PICTURE" ou "BEST PICTURE").
SELECT categoria, nome_filme, ano_cerimonia
FROM indicados_ao_oscar
WHERE categoria IN ('OUTSTANDING PICTURE', 'BEST PICTURE')
AND vencedor = true;
R:OUTSTANDING PICTURE	Wings	1928
OUTSTANDING PICTURE	The Broadway Melody	1929
BEST PICTURE	Lawrence of Arabia	1963
BEST PICTURE	Tom Jones	1964
BEST PICTURE	My Fair Lady	1965
BEST PICTURE	The Sound of Music	1966
BEST PICTURE	A Man for All Seasons	1967
BEST PICTURE	In the Heat of the Night	1968
BEST PICTURE	Oliver!	1969
BEST PICTURE	Midnight Cowboy	1970
BEST PICTURE	Patton	1971
BEST PICTURE	The French Connection	1972
BEST PICTURE	The Godfather	1973
BEST PICTURE	The Sting	1974
BEST PICTURE	The Godfather Part II	1975
BEST PICTURE	One Flew over the Cuckoo's Nest	1976
BEST PICTURE	Rocky	1977
BEST PICTURE	Annie Hall	1978
BEST PICTURE	The Deer Hunter	1979
BEST PICTURE	Kramer vs. Kramer	1980
BEST PICTURE	Ordinary People	1981
BEST PICTURE	Chariots of Fire	1982
BEST PICTURE	Gandhi	1983
BEST PICTURE	Terms of Endearment	1984
BEST PICTURE	Amadeus	1985
BEST PICTURE	Out of Africa	1986
BEST PICTURE	Platoon	1987
BEST PICTURE	The Last Emperor	1988
BEST PICTURE	Rain Man	1989
BEST PICTURE	Driving Miss Daisy	1990
BEST PICTURE	Dances With Wolves	1991
BEST PICTURE	The Silence of the Lambs	1992
BEST PICTURE	Unforgiven	1993
BEST PICTURE	Schindler's List	1994
BEST PICTURE	Forrest Gump	1995
BEST PICTURE	Braveheart	1996
BEST PICTURE	The English Patient	1997
BEST PICTURE	Titanic	1998
BEST PICTURE	Shakespeare in Love	1999
BEST PICTURE	American Beauty	2000
BEST PICTURE	Gladiator	2001
BEST PICTURE	A Beautiful Mind	2002
BEST PICTURE	Chicago	2003
BEST PICTURE	The Lord of the Rings: The Return of the King	2004
BEST PICTURE	Million Dollar Baby	2005
BEST PICTURE	Crash	2006
BEST PICTURE	The Departed	2007
BEST PICTURE	No Country for Old Men	2008
BEST PICTURE	Slumdog Millionaire	2009
BEST PICTURE	The Hurt Locker	2010
BEST PICTURE	The King's Speech	2011
BEST PICTURE	The Artist	2012
BEST PICTURE	Argo	2013
BEST PICTURE	12 Years a Slave	2014
BEST PICTURE	Birdman or (The Unexpected Virtue of Ignorance)	2015
BEST PICTURE	Spotlight	2016
BEST PICTURE	Moonlight	2017
BEST PICTURE	The Shape of Water	2018
BEST PICTURE	Green Book	2019
BEST PICTURE	Parasite	2020
BEST PICTURE	Nomadland	2021
BEST PICTURE	CODA	2022
BEST PICTURE	Everything Everywhere All at Once	2023
BEST PICTURE	Oppenheimer	2024
BEST PICTURE	Dune: Part Two	2025
BEST PICTURE	The Batman - Part II	2026
BEST PICTURE	Dune: Part Two	2025
BEST PICTURE	The Batman - Part II	2026
**4.5** Quantos filmes diferentes já ganharam o Oscar?
SELECT COUNT(DISTINCT nome_filme) 
FROM indicados_ao_oscar
WHERE vencedor = true;
1331
---
*/

-- 4.1 -- 
SELECT nome_indicado, ano_cerimonia, nome_filme
FROM indicados_ao_oscar
WHERE categoria = 'ACTRESS' AND vencedor = true
ORDER BY ano_cerimonia ASC 
LIMIT 1;

-- 4.2 -- 

SELECT nome_indicado, ano_cerimonia, nome_filme
FROM indicados_ao_oscar
WHERE categoria = 'ACTOR' AND vencedor = true
ORDER BY ano_cerimonia ASC 
LIMIT 1;


-- 4.3 --
SELECT COUNT(*) vencedores
FROM indicados_ao_oscar
WHERE vencedor = true;

-- 4.4 -- 
SELECT categoria, nome_filme, ano_cerimonia
FROM indicados_ao_oscar
WHERE categoria IN ('OUTSTANDING PICTURE', 'BEST PICTURE')
AND vencedor = true;

-- 4.5 -- 
SELECT COUNT(DISTINCT nome_filme) 
FROM indicados_ao_oscar
WHERE vencedor = true;

/*
## Nível 5: Análise de Indicações

**5.1** Quais atores/atrizes foram indicados mais de uma vez? Liste o nome e o número de indicações.
SELECT nome_indicado, COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
GROUP BY nome_indicado
HAVING COUNT(*) > 1;
Janet Gaynor	2
Gloria Swanson	3
William Cameron Menzies	2
Harry Oliver	2
George Barnes	6
Charles Rosher	5
Karl Struss	3
Lewis Milestone	3
Frank Borzage	2
King Vidor	5
The Caddo Company	2
Fox	7
Paramount Famous Lasky	4
Metro-Goldwyn-Mayer	64
Ben Hecht	4
Warner Bros.	44
Charles Chaplin	4
Paul Muni	6
Ruth Chatterton	2
Hans Dreier	2
Cedric Gibbons	3
Arthur Edeson	2
Ernest Palmer	2
John Seitz	4
Lionel Barrymore	2
Frank Lloyd	4
Ernst Lubitsch	3
Hans Kraly	3
George Arliss	2
Wallace Beery	2
Ronald Colman	3
Greta Garbo	3
Norma Shearer	6
(Hans Dreier)	2
Clarence Brown	5
Universal	5
Cosmopolitan	3
Metro-Goldwyn-Mayer Studio Sound Department, Douglas Shearer, Sound Director	15
Frances Marion	3
Fredric March	5
Marie Dressler	2
Irene Dunne	5
Anton Grot	5
Richard Day	8
Edward Cronjager	6
Lee Garmes	3
Charles Lang	5
Josef Von Sternberg	2
Norman Taurog	2
RKO Radio	22
Paramount Publix	5
Metro-Goldwyn-Mayer Studio Sound Department	3
Paramount Publix Studio Sound Department	2
RKO Radio Studio Sound Department	2
Rowland Brown	2
Helen Hayes	2
Ray June	3
Samuel Goldwyn Productions	8
First National	2
Walt Disney, Producer	59
Leon Schlesinger, Producer	6
Mack Sennett, Producer	2
Hal Roach, Producer	3
Sidney Howard	3
Leslie Howard	2
Charles Laughton	3
Katharine Hepburn	12
William S. Darling	2
Hans Dreier, Roland Anderson	4
George J. Folsey	2
Frank Capra	6
George Cukor	5
Paramount	25
Columbia	13
Walter Lantz, Producer	10
Louis Brock, Producer	2
Pete Smith, Producer	16
Paramount Studio Sound Department, Franklin B. Hansen, Sound Director	4
Warner Bros. Studio Sound Department, Nathan Levinson, Sound Director	13
Robert Riskin	4
Robert Lord	2
Clark Gable	3
Frank Morgan	2
William Powell	3
Claudette Colbert	3
Bette Davis	11
Van Nest Polglase, Carroll Clark	2
Victor Milner	6
George Folsey	12
W. S. Van Dyke	2
Anne Bauchens	4
Gene Milford	2
RKO Radio Studio Music Department, Max Steiner, head of department  (Score by Max Steiner)	2
Music by Ralph Rainger; Lyrics by Leo Robin	3
20th Century	2
Charles Mintz, Producer	2
Jules White, Producer	4
Skibo Productions	2
United Artists Studio Sound Department, Thomas T. Moulton, Sound Director	5
Warner Bros.-First National Studio Sound Department, Nathan Levinson, Sound Director	2
RKO Radio Studio Sound Department, Carl Dreher, Sound Director	2
Columbia Studio Sound Department, John Livadary, Sound Director	13
Frances Goodrich, Albert Hackett	3
Norman Krasna	4
Victor McLaglen	2
Joseph Newman	2
Eric Stacey	2
Gregg Toland	6
Hal Mohr	2
Busby Berkeley	3
Bobby Connolly	3
Dave Gould	3
Sammy Lee	2
Hermes Pan	3
LeRoy Prinz	2
Michael Curtiz	5
John Ford	5
Robert J. Kern	2
Barbara McLean	7
Ralph Dawson	4
Metro-Goldwyn-Mayer Studio Music Department, Nat W. Finston, head of department  (Score by Herbert Stothart)	2
Music and Lyrics by Irving Berlin	7
Music by Harry Warren; Lyrics by Al Dubin	2
Harman-Ising	2
20th Century-Fox Studio Sound Department, E. H. Hansen, Sound Director	9
Moss Hart	2
Dudley Nichols	3
Gary Cooper	5
Walter Huston	4
Spencer Tracy	9
Walter Brennan	4
Basil Rathbone	2
Akim Tamiroff	2
Luise Rainer	2
Beulah Bondi	2
Alice Brady	2
Maria Ouspenskaya	2
Gale Sondergaard	2
William Wyler	13
Gregory La Cava	2
Otto Meyer	2
Warner Bros. Studio Music Department, Leo Forbstein, head of department  (Score by Max Steiner)	2
Music and Lyrics by Cole Porter	4
Hal Roach Studio Sound Department, Elmer A. Raguse, Sound Director	5
Universal Studio Sound Department, Homer G. Tasker, Sound Director	2
Pierre Collings, Sheridan Gibney	2
Charles Boyer	4
Robert Montgomery	2
Thomas Mitchell	2
Barbara Stanwyck	4
Claire Trevor	3
Dame May Whitty	2
John Victor Mackay	3
Lyle Wheeler	4
Alexander Toluboff	3
Jack Otterson	2
Karl Freund	2
Joseph Valentine	4
Leo McCarey	5
Sidney Franklin	2
William Wellman	2
Music by Frederick Hollander; Lyrics by Leo Robin	2
20th Century-Fox	20
Selznick International Pictures	5
RKO Radio Studio Sound Department, John Aalberg, Sound Director	6
Paramount Studio Sound Department, Loren L. Ryder, Sound Director	10
Darryl F. Zanuck	4
James Cagney	3
Robert Donat	2
John Garfield	2
Fay Bainter	3
Wendy Hiller	3
Charles D. Hall	2
James Wong Howe	9
Joseph Ruttenberg	9
Ernest Haller	6
Norbert Brodine	3
Joseph Walker	4
Leon Shamroy	17
Tom Held	2
Erich Wolfgang Korngold	3
Victor Young	19
Marvin Hatley	2
Werner Janssen	5
Alfred Newman	34
Richard Hageman	5
Herbert Stothart	9
Louis Silvers	2
Franz Waxman	12
Max Steiner	16
Cy Feuer	4
Music by Edward Ward; Lyrics by Chet Forrest and Bob Wright	2
Music by Harry Warren; Lyrics by Johnny Mercer	2
Music by Jimmy McHugh; Lyrics by Harold Adamson	2
Warner Bros.-First National	3
Republic Studio Sound Department, Charles L. Lootens, Sound Director	3
Universal Studio Sound Department, Bernard B. Brown, Sound Director	8
Irving Berlin	2
Samuel Goldwyn	3
David O. Selznick	2
Hal B. Wallis	2
Laurence Olivier	10
Mickey Rooney	5
James Stewart	6
Claude Rains	4
Greer Garson	7
Vivien Leigh	2
Olivia de Havilland	5
James Basevi	2
Tony Gaudio	2
Arthur Miller	7
Bert Glennon	2
Hal Rosson	2
Sam Wood	3
Hal C. Kern, James E. Newcom	2
Anthony Collins	3
Aaron Copland	6
Charles Previn	4
Lou Forbes	2
Dimitri Tiomkin	13
Music by Harold Arlen; Lyrics by E. Y. Harburg	2
Walter Wanger (production company)	2
Samuel Goldwyn Studio Sound Department, Thomas T. Moulton, Sound Director	6
Lamar Trotti	3
Sidney Buchman	2
Henry Fonda	3
Joan Fontaine	3
Marjorie Rambeau	2
Richard Day, Joseph C. Wright	2
Charles B. Lang, Jr.	4
Harold Rosson	2
Rudolph Maté	4
Alfred Hitchcock	6
Warren Low	4
Louis Gruenberg	2
Meredith Willson	2
Frank Skinner	3
Roy Webb	4
Werner Heymann	3
Miklos Rozsa	14
Roger Edens, Georgie Stoll	2
Music by Harry Warren; Lyrics by Mack Gordon	4
General Service Sound Department, Jack Whitney, Sound Director	2
Photographic Effects by Fred Sersen; Sound Effects by E. H. Hansen	2
Photographic Effects by A. Arnold Gillespie; Sound Effects by Douglas Shearer	2
Photographic Effects by Roy Seawright; Sound Effects by Elmer Raguse	2
Photographic Effects by Byron Haskin; Sound Effects by Nathan Levinson	4
Preston Sturges	3
Nunnally Johnson	2
Dalton Trumbo	3
Bob Hope	2
Cary Grant	2
Orson Welles	2
Charles Coburn	3
Teresa Wright	3
Art Direction:  Hans Dreier, Robert Usher;  Interior Decoration:  Sam Comer	2
Art Direction:  Vincent Korda;  Interior Decoration:  Julia Heron	2
Leo Tover	2
Sol Polito	2
British Ministry of Information	7
National Film Board of Canada	11
Truman Talley, Producer	2
The March of Time	4
Robert Wise	4
Harold F. Kress	4
Daniel Mandell	5
Bernard Herrmann	5
Edward Ward	5
Edward Kay	3
Morris Stoloff, Ernst Toch	2
Robert Emmett Dolan	8
Morris Stoloff	3
Music by Harold Arlen; Lyrics by Johnny Mercer	4
Music by Jerome Kern; Lyrics by Oscar Hammerstein II	2
Mercury	2
George Pal, Producer	7
United States Army	3
Paramount Studio Sound Department, Loren Ryder, Sound Director	2
Photographic Effects by Farciot Edouart, Gordon Jennings; Sound Effects by Louis Mesenkop	2
Photographic Effects by Lawrence Butler; Sound Effects by William H. Wilmarth	2
Charles Brackett, Billy Wilder	2
Philip Dunne	2
Lillian Hellman	2
John Huston	8
Walt Disney	2
Walter Pidgeon	2
Monty Woolley	2
Rosalind Russell	5
Gladys Cooper	3
Agnes Moorehead	4
Art Direction:  Perry Ferguson;  Interior Decoration:  Howard Bristol	2
Art Direction:  Richard Day, Joseph Wright;  Interior Decoration:  Thomas Little	2
Mervyn LeRoy	2
United States Navy	3
United States Army Signal Corps	2
Frederic Ullman, Jr., Producer	3
United States Office of War Information	3
Australian News & Information Bureau	2
Artkino	2
United States Army Air Force	4
Walter Thompson	2
George Amy	3
Leigh Harline	5
Frederick Hollander, Morris Stoloff	2
Walter Scharf	5
Music by Jule Styne; Lyrics by Sammy Cahn	7
Sound Service, Inc., Jack Whitney, Sound Director	3
Emeric Pressburger	2
Humphrey Bogart	3
Charles Bickford	3
J. Carrol Naish	2
Ingrid Bergman	7
Jennifer Jones	5
Anne Revere	3
Art Direction:  John B. Goodman, Alexander Golitzen;  Interior Decoration:  Russell A. Gausman, Ira S. Webb	2
Harry Stradling	10
Ray Rennahan	2
Leonard Smith	2
George Stevens	7
Henry King	2
United States Army Pictorial Service	3
United States Department of War	2
United States Office of War Information Overseas Motion Picture Bureau	3
Walter Wanger, Producer	2
Owen Marks	2
Doane Harrison	2
Arthur Lange	3
Ray Heindorf	9
Frederick Quimby, Producer	4
Grantland Rice, Producer	2
Gordon Hollingshead, Producer	22
Edmund Reek, Producer	6
Ralph Staub, Producer	3
Republic Studio Sound Department, Daniel J. Bloomberg, Sound Director	6
Walt Disney Studio Sound Department, C. O. Slyfield, Sound Director	3
RKO Radio Studio Sound Department, Stephen Dunn, Sound Director	3
Photographic Effects by Vernon L. Walker; Sound Effects by James G. Stewart, Roy Granville	2
Photographic Effects by Fred Sersen; Sound Effects by Roger Heman	2
Photographic Effects by Gordon Jennings, Farciot Edouart; Sound Effects by George Dutton	2
George Seaton	6
Bing Crosby	3
Barry Fitzgerald	2
Clifton Webb	3
Ethel Barrymore	4
Angela Lansbury	4
Lionel Lindon	3
Joseph LaShelle	8
Billy Wilder	9
Otto Preminger	2
United States Marine Corps	2
H. J. Salter	3
Karl Hajos	2
Georgie Stoll	2
Music by James Van Heusen; Lyrics by Johnny Burke	3
Music by Walter Kent; Lyrics by Kim Gannon	2
Screen Gems	2
Paul Terry, Producer	2
Jerry Fairbanks, Producer	2
John Steinbeck	2
Gregory Peck	6
Joan Crawford	3
John F. Seitz	2
Charles Nelson	2
Edward J. Kay	2
Ray Heindorf, Max Steiner	4
20th Century-Fox Studio Sound Department, Thomas T. Moulton, Sound Director	5
Columbia Studio Sound Department, John P. Livadary, Sound Director	4
Samuel Goldwyn Studio Sound Department, Gordon Sawyer, Sound Director	6
Philip Yordan	2
Albert Maltz	2
Jane Wyman	4
Anne Baxter	2
David Lean	9
Herbert Morgan, Producer	6
William Hornbeck	3
William Lyon	2
Hugo Friedhofer	8
William Walton	2
Lennie Hayton	3
J. Arthur Rank-Two Cities Films	2
Edward Selzer, Producer	11
Jack Eaton, Producer	5
Norman Panama, Melvin Frank	3
David Lean, Anthony Havelock-Allan, Ronald Neame	2
Edmund Gwenn	2
Susan Hayward	5
Loretta Young	2
Gloria Grahame	2
Celeste Holm	3
Charles Lang, Jr.	5
Jack Cardiff	5
Elia Kazan	6
David Raksin	2
Johnny Green	3
Music and Lyrics by Frank Loesser	3
Music by Josef Myrow; Lyrics by Mack Gordon	2
Thomas Mead, Producer	3
Herbert Moulton, Producer	2
Harry Grey, Producer	2
Irving Allen, Producer	2
Ruth Gordon, Garson Kanin	3
Richard Murphy	2
Montgomery Clift	4
José Ferrer	3
Cecil Kellaway	2
Jean Simmons	2
Ted McCord	3
William Daniels	2
Charles G. Clarke	2
William Snyder	2
Robert Planck	2
Irene	2
Edith Head, Gile Steele	2
Fred Zinnemann	7
Music and Lyrics by Jay Livingston and Ray Evans	3
Fred Quimby, Producer	7
Richard Schweizer, David Wechsler	2
Kirk Douglas	4
John Wayne	2
Arthur Kennedy	5
Ralph Richardson	2
James Whitmore	2
Deborah Kerr	7
Elsa Lanchester	2
Mercedes McCambridge	2
Art Direction:  Cedric Gibbons, Paul Groesse;  Set Decoration:  Edwin B. Willis, Jack D. Moore	2
Paul C. Vogel	2
Frank Planer	2
Vittorio Nino Novarese	2
Robert Rossen	3
Carol Reed	3
Joseph L. Mankiewicz	7
Crown Film Unit	2
Frederic Knudtson	5
Morris Stoloff, George Duning	3
Stephen Bosustow, Producer	11
Justin Herman, Producer	2
Universal-International Studio Sound Department, Leslie I. Carey, Sound Director	6
Cesare Zavattini	2
Carl Foreman	5
Graham Greene	2
Robert Pirosh	2
T. E. B. Clarke	2
Cecil B. DeMille	3
William Holden	3
Eleanor Parker	3
Thelma Ritter	6
Milton Krasner	5
Robert Surtees	12
Jean Louis	12
Walter Plunkett	6
Robert Snyder, Producer	2
Guy Glover, Producer	2
George Duning	2
Lionel Newman	4
Andre Previn	7
Music by Nicholas Brodszky; Lyrics by Sammy Cahn	4
Music and Lyrics by Ray Evans and Jay Livingston	2
Robert Youngson, Producer	5
Edna Anhalt, Edward Anhalt	2
Marlon Brando	8
Karl Malden	2
Peter Ustinov	3
Gig Young	3
Shelley Winters	4
Mildred Dunnock	2
Lee Grant	4
Art Direction:  Lyle Wheeler, John DeCuir;  Set Decoration:  Thomas Little, Paul S. Fox	2
Art Direction:  Cedric Gibbons, Preston Ames;  Set Decoration:  Edwin B. Willis, Keogh Gleason	2
Hein Heckroth	2
William C. Mellor	2
Robert Burks	4
Charles LeMaire, Renie	2
Edith Head	22
Helen Rose, Gile Steele	2
Vincente Minnelli	2
Adrienne Fazan	2
Dorothy Spencer	3
Ralph E. Winters	4
Alex North	15
Oliver Wallace	2
Johnny Green, Saul Chaplin	2
Arthur Freed, Producer	2
George Stevens, Producer	3
Sam Zimbalist, Producer	2
RKO Radio Studio Sound Department, John O. Aalberg, Sound Director	2
Tennessee Williams	2
Alan Jay Lerner	3
Alec Guinness	5
Richard Burton	7
Jack Palance	3
Anthony Quinn	4
Julie Harris	2
Art Direction:  Cedric Gibbons, Paul Groesse;  Set Decoration:  Edwin B. Willis, Arthur Krams	2
Russell Harlan	6
Helen Rose	7
Charles LeMaire	3
Dore Schary, Producer	3
Irwin Allen, Producer	2
Stephen Bosustow, Executive Producer	3
Norman McLaren, Producer	3
Ralph Kemplen	3
Herschel Burke Gilbert	2
Music by Dimitri Tiomkin; Lyrics by Ned Washington	5
Cecil B. DeMille, Producer	2
Stanley Kramer, Producer	6
Romulus Films	2
Tom Daly, Producer	3
Boris Vermont, Producer	2
Michael Wilson	2
Burt Lancaster	4
Eddie Albert	2
Frank Sinatra	3
Leslie Caron	2
Audrey Hepburn	6
Grace Kelly	2
Geraldine Page	8
Burnett Guffey	5
Loyal Griggs	3
Irene Sharaff	11
James Carr, Producer	3
Bronislau Kaper	2
Music by Sammy Fain; Lyrics by Paul Francis Webster	8
Buddy Adler, Producer	2
William Wyler, Producer	2
Johnny Green, Producer	2
Otto Lang, Producer	4
Cedric Francis, Producer	4
Warner Bros. Studio Sound Department, William A. Mueller, Sound Director	2
Paramount Studio	2
Beirne Lay, Jr.	2
Betty Comden, Adolph Green	2
Millard Kaufman	2
James Mason	3
Lee J. Cobb	2
Edmond O'Brien	2
Rod Steiger	3
Judy Garland	2
Art Direction:  Hal Pereira, Roland Anderson;  Set Decoration:  Sam Comer, Grace Gregory	2
Art Direction:  Hal Pereira, Roland Anderson;  Set Decoration:  Sam Comer, Ray Moyer	2
Boris Kaufman	2
Sam Spiegel, Producer	4
Metro-Goldwyn-Mayer Studio Sound Department, Wesley C. Miller, Sound Director	2
20th Century-Fox Studio	2
John Michael Hayes	2
William Rose	4
James Dean	2
Jack Lemmon	8
Sal Mineo	2
Arthur O'Connell	2
Anna Magnani	2
Natalie Wood	3
Charles LeMaire, Mary Wills	4
Joshua Logan	2
Wilbur T. Blume, Producer	2
Ferris Webster	3
Elmer Bernstein	9
Music and Lyrics by Johnny Mercer	2
Music by James Van Heusen; Lyrics by Sammy Cahn	9
Harold Hecht, Producer	2
Hal B. Wallis, Producer	3
Carson Davidson, Producer	2
Todd-AO Sound Department, Fred Hynes, Sound Director	2
Richard Brooks	7
Paul Osborn	2
Paddy Chayefsky	4
Melville Shavelson, Jack Rose	2
Eileen Heckart	2
Art Direction:  Lyle R. Wheeler, John DeCuir;  Set Decoration:  Walter M. Scott, Paul S. Fox	2
Louis Clyde Stoumen, Producer	3
Jacques-Yves Cousteau, Producer	3
John Healy, Producer	2
Ward Kimball, Producer	2
Alfred Newman, Ken Darby	5
Music by Dimitri Tiomkin; Lyrics by Paul Francis Webster	3
Larry Lansburgh, Producer	3
20th Century-Fox Studio Sound Department, Carl Faulkner, Sound Director	3
Elizabeth Taylor	6
Joanne Woodward	4
Orry-Kelly	3
Mark Robson	2
Sidney Lumet	4
West Germany	4
France	37
India	3
Italy	29
Norway	6
Jerry Wald, Producer	2
Ben Sharpsteen, Producer	3
Paramount Studio Sound Department, George Dutton, Sound Director	2
Samuel Goldwyn Studio Sound Department, Gordon E. Sawyer, Sound Director	6
Paul Newman	11
Sidney Poitier	2
Shirley MacLaine	5
Maureen Stapleton	4
Sam Leavitt	3
Daniel L. Fapp	6
Joe MacDonald	2
Harry Stradling, Sr.	4
Cecil Beaton	2
Stanley Kramer	4
Ian Ferguson, Producer	3
William Ziegler	3
Spain	21
Yugoslavia	6
Music by Frederick Loewe; Lyrics by Alan Jay Lerner	2
John W. Burton, Producer	2
Nedrick Young, Harold Jacob Smith	2
Charlton Heston	2
Hugh Griffith	2
George C. Scott	4
Simone Signoret	2
Art Direction:  Hal Pereira, Walter Tyler;  Set Decoration:  Sam Comer, Arthur Krams	3
Robert L. Surtees	2
Howard Shoup	5
Bert Haanstra, Producer	3
Louis R. Loeffler	2
Denmark	13
The Netherlands	7
Ernest Gold	4
Frank DeVol	2
Leith Stevens	2
George Bruns	3
Music by Jerry Livingston; Lyrics by Mack David	2
Ernest Pintoff, Producer	2
Metro-Goldwyn-Mayer Studio Sound Department, Franklin E. Milton, Sound Director	5
Warner Bros. Studio Sound Department, George R. Groves, Sound Director	6
Samuel Goldwyn Studio Sound Department, Gordon E. Sawyer, Sound Director; and Todd-AO Sound Department, Fred Hynes, Sound Director	2
Robert Anderson	2
Billy Wilder, I. A. L. Diamond	3
Ernest Lehman	4
Ingmar Bergman	9
Peter Falk	2
Shirley Knight	2
Ernest Laszlo	8
Freddie Francis	2
William H. Clothier	2
Russell Metty	2
Bill Thomas	7
Marik Vos	3
Jules Dassin	2
James Hill, Producer	2
Stuart Gilmore	2
Mexico	9
Sweden	16
Nelson Riddle	2
Morris Stoloff, Harry Sukman	2
Music by Andre Previn; Lyrics by Dory Langdon	2
Bernard Smith, Producer	2
Fred Zinnemann, Producer	2
William L. Snyder, Producer	4
Leslie Winik, Producer	2
Columbia Studio Sound Department, Charles Rice, Sound Director	2
Maximilian Schell	3
Piper Laurie	3
Sophia Loren	3
Piero Gherardi	6
Edward Colman	2
Dorothy Jeakins	6
Yoshiro Muraki	2
Federico Fellini	4
Japan	14
Henry Mancini	4
Music by Henry Mancini; Lyrics by Johnny Mercer	6
Robert Wise, Producer	3
Chuck Jones, Producer	2
Shepperton Studio Sound Department, John Cox, Sound Director	3
Walt Disney Studio Sound Department, Robert O. Cook, Sound Director	3
Abby Mann	2
Marcello Mastroianni	3
Peter O'Toole	8
Anne Bancroft	5
Art Direction:  George W. Davis, Edward Carfagno;  Set Decoration:  Henry Grace, Dick Pefferle	2
Norma Koch	2
Mary Wills	2
Arthur Penn	3
Anne Coates	2
Greece	5
Brazil	4
Jerry Goldsmith	16
Maurice Jarre	8
Music by Elmer Bernstein; Lyrics by Mack David	2
John Hubley and Faith Hubley, Producers	4
Robert Clouse, Producer	2
Universal City Studio Sound Department, Waldon O. Watson, Sound Director	5
Horton Foote	3
Albert Finney	5
Richard Harris	2
Rex Harrison	2
Melvyn Douglas	3
Patricia Neal	2
Dame Edith Evans	3
Joyce Redman	2
Art Direction:  George W. Davis, Paul Groesse;  Set Decoration:  Henry Grace, Hugh Hunt	2
Donald Brooks	2
Piero Tosi	4
Edgar Anstey, Producer	4
Marshall Flaum, Producer	2
Poland	13
John Addison	2
Carmen D'Avino, Producer	2
20th Century-Fox Studio Sound Department, James P. Corcoran, Sound Director; and Todd-AO Sound Department, Fred Hynes, Sound Director	2
Robert L. Bratton	2
Irving Ravetch, Harriet Frank, Jr.	2
Arnold Schulman	2
Peter Sellers	2
John Gielgud	2
Julie Andrews	3
Debbie Reynolds	2
Kim Stanley	2
Geoffrey Unsworth	3
Margaret Furse	5
Tony Walton	3
Morton Haack	3
Stanley Kubrick	7
Michael Cacoyannis	2
Jack Le Vien, Producer	2
Charles Guggenheim, Producer	4
Michael Luciano	4
Israel	10
Irwin Kostal	2
Music and Lyrics by Richard M. Sherman and Robert B. Sherman	5
Stanley Kubrick, Producer	3
David H. DePatie and Friz Freleng, Producers	2
Tom Courtenay	2
Julie Christie	4
Ruth Gordon	2
Maggie Smith	6
Conrad Hall	5
Freddie Young	3
Phyllis Dalton	3
John Schlesinger	3
Francis Thompson, Producer	2
William Reynolds	5
Czechoslovakia	6
DeVol	2
Lionel Newman, Alexander Courage	2
Michel Legrand	3
Music by Johnny Mandel; Lyrics by Paul Francis Webster	2
Music by Burt Bacharach; Lyrics by Hal David	4
20th Century-Fox Studio Sound Department, James P. Corcoran, Sound Director	2
Robert Bolt	2
Frederic Raphael	2
Alan Arkin	4
Michael Caine	6
Steve McQueen	2
Paul Scofield	2
Walter Matthau	3
Lynn Redgrave	2
Vanessa Redgrave	6
Haskell Wexler	4
Danilo Donati	4
Mike Nichols	4
Alex Grasshoff, Producer	2
Sam O'Steen	3
John Barry	6
Luis Enrique Bacalov	2
Norman Jewison, Producer	2
Ernest Lehman, Producer	2
Warren Beatty	6
Dustin Hoffman	7
John Cassavetes	3
Gene Hackman	5
Faye Dunaway	3
Estelle Parsons	2
Richard H. Kline	2
Theadora Van Runkle	3
Norman Jewison	4
Murray Lerner, Producer	2
Christopher Chapman, Producer	2
Frank P. Keller	2
Hal Ashby	2
Lalo Schifrin	5
Richard Rodney Bennett	3
Quincy Jones	3
John Williams	46
Music by Quincy Jones; Lyrics by Bob Russell	2
Music and Lyrics by Leslie Bricusse	2
Warren Beatty, Producer	3
Warner Bros.-Seven Arts Studio Sound Department	3
20th Century-Fox Studio Sound Department	2
Barbra Streisand	2
Oswald Morris	3
Saul Bass, Producer	2
Hungary	10
Union of Soviet Socialist Republics	9
Music by Michel Legrand; Lyrics by Alan Bergman and Marilyn Bergman	3
Ray Stark, Producer	2
Neil Simon	4
Roman Polanski	4
Jon Voight	4
Jack Nicholson	12
Jane Fonda	7
Liza Minnelli	2
Dyan Cannon	2
Goldie Hawn	2
Sylvia Miles	2
Charles B. Lang	2
Donfeld	3
George Roy Hill	2
Sydney Pollack	3
Irwin Rosten, Producer	2
Donald Wrye, Producer	2
Joan Keller Stern, Producer	2
Algeria	5
Georges Delerue	5
Jerry Fielding	3
Adaptation score by Nelson Riddle	2
Music by Elmer Bernstein; Lyrics by Don Black	2
John Foreman, Producer	2
Jerome Hellman, Producer	2
Robbie Robertson	2
William Goldman	2
Jane Alexander	4
Glenda Jackson	4
Billy Williams	2
Arthur Hiller	2
Robert Altman	5
Thelma Schoonmaker	9
Switzerland	5
Belgium	8
Peter Finch	2
Jeff Bridges	7
Roy Scheider	2
Ann-Margret	2
Ellen Burstyn	6
Owen Roizman	6
William Friedkin	2
Marcel Ophuls, Producer	2
Julian Krainin and DeWitt L. Sage, Jr., Producers	2
Manuel Arango and Robert Amram, Producers	2
Jerry Greenberg	2
Michael Mills, Producer	2
Bernardo Bertolucci	3
Robert Duvall	7
Al Pacino	9
Cicely Tyson	2
Liv Ullmann	2
Harry Stradling, Jr.	2
Douglas Slocombe	3
Anna Hill Johnstone	2
Paul Zastupnevich	3
Anthony Powell	6
Anthony Mendleson	2
Bob Fosse	3
John Boorman	3
Francis Ford Coppola	5
Adaptation Score by Ralph Burns	3
Music and Lyrics by Al Kasha and Joel Hirschhorn	3
John Boorman, Producer	2
Bob Godfrey, Producer	2
Richard Portman, Gene Cantamessa	2
Theodore Soderberg, Herman Lewis	2
Julius J. Epstein	2
Louis Malle	3
Robert Redford	3
Vincent Gardenia	2
Marsha Mason	4
Madeline Kahn	2
Sven Nykvist	3
George Lucas	4
Louis Marcus, Producer	2
Marvin Hamlisch	3
Music by George Barrie; Lyrics by Sammy Cahn	2
Music by Marvin Hamlisch; Lyrics by Alan Bergman and Marilyn Bergman	2
Robert Towne	2
Alvin Sargent	3
Robert De Niro	8
Gena Rowlands	3
Diane Ladd	3
Talia Shire	2
Art Direction:  Dean Tavoularis, Angelo Graham;  Set Decoration:  George R. Nelson	2
Anthea Sylbert	2
Argentina	8
Julian Chagrin and Claude Chagrin, Producers	2
George V. Casey, Producer	2
Robert Getchell	2
Burgess Meredith	2
Jack Warden	2
Isabelle Adjani	2
Art Direction:  Albert Brenner;  Set Decoration:  Marvin March	3
Milos Forman	3
Claire Wilbur and Robin Lehman, Producers	2
Dede Allen	2
Jack Nitzsche	2
Adaptation Score by Leonard Rosenman	2
Music by Charles Fox; Lyrics by Norman Gimbel	2
Richard D. Zanuck and David Brown, Producers	2
Sylvester Stallone	3
Jason Robards	3
Sissy Spacek	6
Jodie Foster	5
Alan J. Pakula	2
Lina Wertmüller	3
Robert L. Wolfe	2
Alan Heim	2
Irwin Winkler and Robert Chartoff, Producers	3
Woody Allen	18
Richard Dreyfuss	2
John Travolta	2
Diane Keaton	4
Melinda Dillon	2
Vilmos Zsigmond	4
William A. Fraker	5
Steven Spielberg	10
Michael Kahn	7
Walter Murch	4
Ishu Patel, Producer	2
Robert Knudson, Robert J. Glass, Don MacDougall, Gene S. Cantamessa	2
Peter Shaffer	2
Woody Allen, Marshall Brickman	2
Robert Benton	6
Walter Mirisch	2
Bruce Dern	2
Richard Farnsworth	2
John Hurt	2
Christopher Walken	2
Jill Clayburgh	2
Meryl Streep	21
Nestor Almendros	4
Patricia Norris	6
Alan Parker	2
Peter Zinner	2
Gerry Hambling	6
Stuart Baird	2
Ennio Morricone	6
Dave Grusin	5
Will Vinton, Producer	3
Oliver Stone	5
Sally Field	3
Bette Midler	2
Vittorio Storaro	4
Shirley Russell	2
Albert Wolsky	7
William Ware Theiss	2
Judy Moorcroft	2
Peter Yates	2
Dick Young, Producer	3
Federal Republic of Germany	2
Peter Yates, Producer	2
Judd Hirsch	2
Joe Pesci	3
Michael Chapman	2
David Lynch	4
Martin Scorsese	10
David Bradbury, Producer	2
Arthur Schmidt	3
Anne V. Coates	4
John Corigliano	2
Michael Gore	2
Music and Lyric by Dolly Parton	2
Frédéric Back, Producer	3
Bo Goldman	2
Susan Sarandon	5
Miroslav Ondricek	2
Milena Canonero	8
John Bloom	3
Rick Baker	4
Randy Newman	9
Music and Lyric by Lionel Richie	2
Music and Lyric by Randy Newman	13
David Puttnam, Producer	2
Christine Oestreicher, Producer	2
Harold Pinter	2
Kurt Luedtke	2
Ben Kingsley	4
Charles Durning	2
John Lithgow	2
Jessica Lange	6
Debra Winger	3
Glenn Close	8
Allen Daviau	5
Wolfgang Petersen	2
Music by Michel Legrand; Lyric by Alan Bergman and Marilyn Bergman	3
Music by John Williams; Lyric by Alan Bergman and Marilyn Bergman	2
Steven Spielberg and Kathleen Kennedy, Producers	3
Bob Rogers, Producer	2
Barry Levinson	4
Julie Walters	2
Cher	2
Don Peterman	2
Caleb Deschanel	6
Gordon Willis	2
Joe I. Tompkins	2
James L. Brooks	3
Richard Marks	3
Leonard Rosenman	2
James L. Brooks, Producer	2
John Malkovich	2
Judy Davis	2
Chris Menges	3
Theodor Pistek	2
Jenny Beavan, John Bright	6
Ann Roth	4
Roland Joffé	2
Jim Clark	2
Music and Lyric by Phil Collins	2
Saul Zaentz, Producer	2
William Hurt	4
Whoopi Goldberg	2
**5.2** Qual ator ou atriz tem o maior número de indicações na história do Oscar?
SELECT nome_indicado, COUNT(*) AS maior_numero
FROM indicados_ao_oscar
GROUP BY nome_indicado
ORDER BY count(*) DESC LIMIT 1;
Metro-Goldwyn-Mayer	64
**5.3** Quais atores foram indicados mais de 3 vezes, mas nunca ganharam?
SELECT nome_indicado, COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
GROUP BY nome_indicado
HAVING COUNT(*) > 3 
   AND SUM(vencedor) = 0;
   King Vidor	5
John Seitz	4
Clarence Brown	5
Irene Dunne	5
Anton Grot	5
Edward Cronjager	6
Charles Lang	5
Paramount Publix	5
Leon Schlesinger, Producer	6
Hans Dreier, Roland Anderson	4
Walter Lantz, Producer	10
George Folsey	12
Jules White, Producer	4
Music and Lyrics by Cole Porter	4
Hal Roach Studio Sound Department, Elmer A. Raguse, Sound Director	5
Charles Boyer	4
Barbara Stanwyck	4
Joseph Valentine	4
RKO Radio Studio Sound Department, John Aalberg, Sound Director	6
Paramount Studio Sound Department, Loren L. Ryder, Sound Director	10
Ernest Haller	6
Joseph Walker	4
Werner Janssen	5
Richard Hageman	5
Cy Feuer	4
Claude Rains	4
Charles Previn	4
Samuel Goldwyn Studio Sound Department, Thomas T. Moulton, Sound Director	6
Charles B. Lang, Jr.	4
Rudolph Maté	4
Warren Low	4
Roy Webb	4
Photographic Effects by Byron Haskin; Sound Effects by Nathan Levinson	4
The March of Time	4
Edward Ward	5
Robert Emmett Dolan	8
Music by Harold Arlen; Lyrics by Johnny Mercer	4
George Pal, Producer	7
Agnes Moorehead	4
United States Army Air Force	4
Leigh Harline	5
Walter Scharf	5
Republic Studio Sound Department, Daniel J. Bloomberg, Sound Director	6
Ray Heindorf, Max Steiner	4
Herbert Morgan, Producer	6
Charles Lang, Jr.	5
Montgomery Clift	4
Arthur Kennedy	5
Frederic Knudtson	5
Carl Foreman	5
Thelma Ritter	6
Walter Plunkett	6
Lionel Newman	4
Music by Nicholas Brodszky; Lyrics by Sammy Cahn	4
Ralph E. Winters	4
Richard Burton	7
Russell Harlan	6
Stanley Kramer, Producer	6
Otto Lang, Producer	4
Cedric Francis, Producer	4
Charles LeMaire, Mary Wills	4
Sidney Lumet	4
West Germany	4
Norway	6
Samuel Goldwyn Studio Sound Department, Gordon E. Sawyer, Sound Director	6
Harry Stradling, Sr.	4
Yugoslavia	6
Howard Shoup	5
Bill Thomas	7
Federico Fellini	4
Peter O'Toole	8
Greece	5
Brazil	4
Universal City Studio Sound Department, Waldon O. Watson, Sound Director	5
Albert Finney	5
Piero Tosi	4
Michael Luciano	4
Israel	10
Neil Simon	4
Jane Alexander	4
Robert Altman	5
Belgium	8
Marsha Mason	4
William A. Fraker	5
Patricia Norris	6
Gerry Hambling	6
Randy Newman	9
Glenn Close	8
Allen Daviau	5
Caleb Deschanel	6
Peter Weir	5
Willem Dafoe	4
Kenneth Branagh	5
Art Direction:  Dante Ferretti;  Set Decoration:  Francesca Lo Schiavo	4
Annette Bening	5
James Newton Howard	7
Janet Patterson	4
Thomas Newman	14
Ed Harris	4
Marc Shaiman	4
Mike Leigh	4
Music and Lyric by Diane Warren	11
Danny Elfman	4
Paul Thomas Anderson	5
Jacqueline West	4
Bruno Delbonnel	6
Amy Adams	6
Michelle Williams	5
Rodrigo Prieto	4
Alberto Iglesias	4
Wylie Stateman	6
Saoirse Ronan	4
Production Design: Sarah Greenwood; Set Decoration: Katie Spencer	5
Mark Ruffalo	4
Mary Zophres	4
Bradley Cooper	5
**5.4** Encontre todos os artistas que foram indicados em categorias diferentes (ex: ator e diretor).
SELECT nome_indicado, COUNT(DISTINCT categoria) AS total_categorias_diferentes
FROM indicados_ao_oscar
GROUP BY nome_indicado 
HAVING COUNT(DISTINCT categoria) > 1;
20th Century-Fox	5
20th Century-Fox Studio Sound Department, Carl Faulkner, Sound Director	2
Aaron Copland	3
Adam Driver	2
Adaptation Score by Leonard Rosenman	2
Adaptation Score by Nelson Riddle	2
Adaptation Score by Ralph Burns	2
Al Pacino	3
Alan Arkin	2
Alan J. Pakula	2
Alan Jay Lerner	2
Alan Robert Murray, Bub Asman	2
Albert Finney	3
Alec Guinness	3
Alex North	7
Alfonso Cuarón	2
Alfred Hitchcock	2
Alfred Newman	6
Alfred Newman, Ken Darby	3
Alvin Sargent	2
Amy Adams	2
Andre Previn	3
Angela Bassett	2
Angela Lansbury	2
Angelina Jolie	3
Anjelica Huston	2
Ann-Margret	2
Anne Bancroft	2
Anne Baxter	2
Anne Hathaway	2
Anne V. Coates	2
Annette Bening	2
Anthony Collins	3
Anthony Hopkins	2
Anthony Minghella	2
Anthony Quinn	2
Anton Grot	2
Argentina	2
Arnold Schulman	2
Art Direction:  Cedric Gibbons, Paul Groesse;  Set Decoration:  Edwin B. Willis, Jack D. Moore	2
Art Direction:  George W. Davis, Edward Carfagno;  Set Decoration:  Henry Grace, Dick Pefferle	2
Art Direction:  Hal Pereira, Walter Tyler;  Set Decoration:  Sam Comer, Arthur Krams	2
Art Direction:  Lyle R. Wheeler, John DeCuir;  Set Decoration:  Walter M. Scott, Paul S. Fox	2
Art Direction:  Lyle Wheeler, John DeCuir;  Set Decoration:  Thomas Little, Paul S. Fox	2
Art Direction:  Richard Day, Joseph Wright;  Interior Decoration:  Thomas Little	2
Art Direction:  Vincent Korda;  Interior Decoration:  Julia Heron	2
Arthur Edeson	2
Arthur Hiller	2
Arthur Kennedy	2
Arthur Lange	2
Arthur Miller	2
Artkino	2
Atom Egoyan	2
Audrey Hepburn	2
Australian News & Information Bureau	2
Barry Fitzgerald	2
Barry Levinson	2
Belgium	2
Ben Hecht	3
Ben Kingsley	2
Ben Proudfoot and Kris Bowers	2
Ben Sharpsteen, Producer	3
Bernard Herrmann	3
Bernard Smith, Producer	2
Bernardo Bertolucci	2
Bert Glennon	2
Bert Haanstra, Producer	2
Bill Thomas	3
Billy Bob Thornton	3
Billy Wilder	2
Billy Wilder, I. A. L. Diamond	2
Bo Goldman	2
Bob Godfrey, Producer	2
Bob Hope	2
Brad Pitt	2
Bradley Cooper	2
Brenda Blethyn	2
British Ministry of Information	3
Bronislau Kaper	2
Bruce Dern	2
Burnett Guffey	2
Burt Lancaster	2
Carl Foreman	4
Carmen D'Avino, Producer	2
Carson Davidson, Producer	2
Casey Affleck	2
Cate Blanchett	2
Cecil B. DeMille	3
Cecil Beaton	2
Cedric Francis, Producer	2
Cesare Zavattini	2
Charles Chaplin	3
Charles Guggenheim	2
Charles Guggenheim, Producer	2
Charles Lang	2
Charles Lang, Jr.	2
Charles LeMaire	2
Charles LeMaire, Mary Wills	3
Charles Previn	2
Charles Rosher	2
Charlton Heston	2
Cher	2
Chloé Zhao	2
Chris Wedge	2
Christian Bale	2
Christopher Chapman, Producer	2
Cicely Tyson	2
Claire Wilbur and Robin Lehman, Producers	2
Clifton Webb	2
Clint Eastwood	3
Columbia	4
Conrad Hall	3
Crown Film Unit	2
Cy Feuer	2
Dalton Trumbo	2
Dame Edith Evans	2
Daniel Kaluuya	2
Daniel L. Fapp	3
Danilo Donati	2
Danny Elfman	3
David Lean	3
David Lynch	2
Debbie Reynolds	2
Deborah Kerr	2
Denmark	2
Denzel Washington	2
Dimitri Tiomkin	3
Donald Brooks	2
Dore Schary, Producer	3
Dorothy Jeakins	3
Dudley Nichols	2
Dustin Hoffman	2
Ed Harris	2
Edgar Anstey, Producer	3
Edith Head	3
Edith Head, Gile Steele	2
Edmund Reek, Producer	2
Edward Colman	2
Edward Cronjager	3
Edward J. Kay	2
Edward Kay	3
Edward Norton	2
Edward Selzer, Producer	2
Edward Ward	2
Elia Kazan	2
Elizabeth Taylor	2
Ellen Burstyn	3
Elliot Goldenthal	2
Elmer Bernstein	5
Emeric Pressburger	2
Emma Stone	2
Emma Thompson	3
Erich Wolfgang Korngold	2
Ernest Gold	3
Ernest Haller	3
Ernest Laszlo	3
Ernest Lehman	3
Ernest Palmer	2
Fay Bainter	2
Faye Dunaway	2
Fox	3
France	2
Frances Goodrich, Albert Hackett	2
Frances Marion	2
Frances McDormand	2
Francis Ford Coppola	3
Frank Borzage	2
Frank DeVol	2
Frank Morgan	2
Frank Sinatra	3
Frank Skinner	3
Franz Waxman	5
Fred Zinnemann, Producer	2
Freddie Francis	2
Freddie Young	2
Frederic Ullman, Jr., Producer	3
Frederick Hollander, Morris Stoloff	2
Gabriel Yared	2
Geena Davis	3
Gena Rowlands	3
Gene Hackman	3
Geoffrey Rush	2
Geoffrey Unsworth	2
George Barnes	3
George Bruns	2
George C. Scott	2
George Clooney	3
George Folsey	3
George J. Folsey	2
George Lucas	3
George Miller	2
George Seaton	4
George Stevens	3
George V. Casey, Producer	2
Georges Delerue	3
Geraldine Page	3
Germany	2
Glenn Close	2
Goldie Hawn	2
Gordon Hollingshead, Producer	3
Grace Kelly	2
Graham Greene	2
Gregg Toland	2
Gregory Peck	2
Guy Glover, Producer	2
H. J. Salter	2
Hal Ashby	2
Hal B. Wallis, Producer	2
Hal Mohr	2
Hal Roach, Producer	2
Hal Rosson	2
Hans Dreier, Roland Anderson	2
Hans Kraly	2
Hans Zimmer	3
Harry Stradling	3
Harry Stradling, Sr.	2
Haskell Wexler	2
Hayao Miyazaki	2
Heath Ledger	2
Hein Heckroth	2
Helen Hayes	2
Helen Hunt	2
Helen Mirren	2
Helen Rose	2
Helena Bonham Carter	2
Henry Fonda	3
Henry Mancini	3
Herbert Morgan, Producer	2
Herbert Stothart	4
Herschel Burke Gilbert	2
Holly Hunter	2
Hong Kong	2
Horton Foote	3
Hugo Friedhofer	2
Ian Ferguson, Producer	2
Ian McKellen	2
Ingmar Bergman	5
Ingrid Bergman	3
Irene	2
Irene Sharaff	3
Irving Berlin	2
Irving Ravetch, Harriet Frank, Jr.	2
Irwin Allen, Producer	2
Isabelle Adjani	2
Italy	2
Jack Cardiff	3
Jack Lemmon	3
Jack Nicholson	3
Jacques-Yves Cousteau, Producer	2
James Basevi	2
James Carr, Producer	3
James Hill, Producer	2
James Horner	2
James L. Brooks	3
James Mason	2
James Newton Howard	2
James Stewart	2
James Whitmore	2
James Wong Howe	3
James Woods	2
Jamie Foxx	2
Jane Alexander	3
Jane Campion	2
Jane Fonda	3
Janet McTeer	2
Japan	2
Javier Bardem	2
Jay Rosenblatt	2
Jean Louis	3
Jean Simmons	2
Jeff Bridges	2
Jeffrey Katzenberg	2
Jennifer Jones	2
Jennifer Lawrence	2
Jeremy Renner	2
Jerry Fielding	3
Jerry Goldsmith	5
Jessica Chastain	2
Jessica Lange	2
Jessica Tandy	2
Joan Allen	2
Joan Keller Stern, Producer	2
Joanne Woodward	2
Joaquin Phoenix	2
Jodie Foster	2
Joe MacDonald	2
John Addison	2
John Barry	4
John Boorman	2
John Cassavetes	3
John Garfield	2
John Healy, Producer	2
John Hurt	2
John Huston	3
John Lasseter	2
John Michael Hayes	2
John Seitz	2
John Singleton	2
John Steinbeck	2
John Victor Mackay	2
John Williams	5
Johnny Green	2
Jon Voight	3
Jonas Poher Rasmussen, Monica Hellström, Signe Byrge Sørensen and Charlotte De La Gournerie	2
José Ferrer	2
Joseph L. Mankiewicz	3
Joseph LaShelle	2
Joseph Ruttenberg	3
Joseph Valentine	2
Joseph Walker	3
Jude Law	2
Judi Dench	2
Judy Davis	2
Judy Garland	2
Jules Dassin	2
Jules White, Producer	2
Julia Roberts	2
Julianne Moore	2
Julie Andrews	2
Julie Christie	2
Julie Harris	2
Julie Walters	2
Juliette Binoche	2
Julius J. Epstein	2
Karl Freund	2
Kate Winslet	2
Katharine Hepburn	2
Kathy Bates	2
Keira Knightley	2
Kenneth Branagh	4
Kevin Costner	2
Kevin Spacey	2
Kim Stanley	2
King Vidor	2
Kirk Douglas	2
Kurt Luedtke	2
Lalo Schifrin	4
Lamar Trotti	3
Larry Lansburgh, Producer	3
Laura Dern	2
Laura Linney	2
Laurence Olivier	4
Lee Garmes	2
Leigh Harline	3
Leith Stevens	2
Leo McCarey	3
Leon Shamroy	3
Leonardo DiCaprio	2
Lewis Milestone	2
Lillian Hellman	2
Lina Wertmüller	3
Lionel Barrymore	2
Lionel Lindon	2
Liv Ullmann	2
Lou Forbes	2
Louis Clyde Stoumen, Producer	2
Louis Gruenberg	2
Louis Malle	3
Louis Marcus, Producer	2
Louis Silvers	2
Loyal Griggs	2
Luis Enrique Bacalov	2
Lyle Wheeler	2
Lynn Redgrave	2
M. Night Shyamalan	2
Mack Sennett, Producer	2
Maggie Smith	2
Manuel Arango and Robert Amram, Producers	2
Marc Shaiman	2
Marcello Mastroianni	2
Margaret Furse	2
Margot Robbie	2
Marik Vos	2
Marlon Brando	2
Marsha Mason	2
Marshall Curry	3
Martin McDonagh	2
Marvin Hamlisch	2
Marvin Hatley	2
Mary McDonnell	2
Mary Wills	2
Matt Damon	2
Maurice Jarre	3
Max Steiner	4
Max von Sydow	2
Maximilian Schell	2
Melissa Leo	2
Melissa McCarthy	2
Melville Shavelson, Jack Rose	2
Melvyn Douglas	2
Meredith Willson	2
Mervyn LeRoy	2
Meryl Streep	2
Metro-Goldwyn-Mayer	11
Metro-Goldwyn-Mayer Studio Sound Department	2
Michael Cacoyannis	2
Michael Caine	3
Michael Fassbender	2
Michael Mills, Producer	2
Michael Wilson	2
Michel Legrand	3
Michelle Pfeiffer	2
Michelle Williams	2
Mickey Rooney	3
Mike Figgis	2
Mike Leigh	2
Miklos Rozsa	3
Millard Kaufman	2
Milton Krasner	3
Miranda Richardson	2
Montgomery Clift	2
Monty Woolley	2
Morgan Freeman	2
Morris Stoloff, Ernst Toch	2
Morris Stoloff, George Duning	2
Morris Stoloff, Harry Sukman	2
Morton Haack	2
Moss Hart	2
Music and Lyrics by Al Kasha and Joel Hirschhorn	3
Music and Lyrics by Leslie Bricusse	2
Music and Lyrics by Richard M. Sherman and Robert B. Sherman	3
Music by Burt Bacharach; Lyrics by Hal David	2
Music by Elmer Bernstein; Lyrics by Don Black	2
Music by George Barrie; Lyrics by Sammy Cahn	2
Music by Henry Mancini; lyrics by Johnny Mercer	3
Music by Marvin Hamlisch; Lyrics by Alan Bergman and Marilyn Bergman	2
Music by Quincy Jones; Lyrics by Bob Russell	2
Music by Sammy Fain; Lyrics by Paul Francis Webster	3
Natalie Portman	2
Natalie Wood	2
National Film Board of Canada	5
Nedrick Young, Harold Jacob Smith	2
Neil Jordan	2
Neil Simon	4
Nelson Riddle	2
Nick Nolte	2
Nicole Kidman	2
Norbert Brodine	2
Norman Jewison	2
Norman Krasna	2
Norman McLaren, Producer	3
Norman Panama, Melvin Frank	3
Norway	2
Oliver Stone	3
Oliver Wallace	2
Olivia Colman	2
Olivia de Havilland	2
Oprah Winfrey	2
Orlando von Einsiedel and Joanna Natasegara	2
Orry-Kelly	3
Orson Welles	2
Otto Lang, Producer	3
Owen Roizman	2
Paddy Chayefsky	4
Paramount	8
Paramount Famous Lasky	3
Paramount Publix	2
Paramount Studio Sound Department, George Dutton, Sound Director	2
Paul C. Vogel	2
Paul Giamatti	2
Paul Newman	5
Paul Osborn	2
Paul Scofield	2
Paul Thomas Anderson	2
Penélope Cruz	2
Pete Smith, Producer	3
Peter Finch	2
Peter Lord	2
Peter O'Toole	2
Peter Sellers	2
Peter Shaffer	2
Peter Weir	2
Philip Dunne	2
Philip Glass	2
Philip Seymour Hoffman	2
Philip Yordan	2
Phyllis Dalton	2
Piero Gherardi	4
Piero Tosi	2
Pierre Collings, Sheridan Gibney	2
Piper Laurie	2
Poland	2
Production Design: Jess Gonchor; Set Decoration: Nancy Haigh	2
Production Design: John Myhre; Set Decoration: Gordon Sim	2
Production Design: Sarah Greenwood; Set Decoration: Katie Spencer	2
Quincy Jones	3
Rachel Portman	2
Ralph Fiennes	2
Randy Newman	3
Ray Heindorf	2
Renée Zellweger	2
Richard Brooks	3
Richard Burton	3
Richard Day	2
Richard Day, Joseph C. Wright	2
Richard Farnsworth	2
Richard Hageman	3
Richard Harris	2
Richard Jenkins	2
Richard Murphy	2
Richard Rodney Bennett	2
Richard Schweizer, David Wechsler	2
RKO Radio	7
Robbie Robertson	2
Robert Benton	5
Robert Burks	2
Robert De Niro	2
Robert Downey Jr.	2
Robert Duvall	2
Robert Emmett Dolan	2
Robert Getchell	2
Robert Redford	2
Robert Riskin	2
Robert Rossen	2
Robert Surtees	3
Robert Towne	2
Robert Wise	3
Robert Wise, Producer	2
Roberto Benigni	2
Robin Williams	2
Rod Steiger	2
Roger Edens, Georgie Stoll	2
Roman Polanski	2
Romulus Films	2
Rooney Mara	2
Rosalind Russell	2
Roy Scheider	2
Roy Webb	2
Russell Harlan	2
Ruth Gordon, Garson Kanin	2
Ruth Prawer Jhabvala	2
Ryan Gosling	2
Sally Field	2
Sally Hawkins	2
Sam Leavitt	2
Sam Spiegel, Producer	2
Samantha Morton	2
Samuel Goldwyn	2
Samuel Goldwyn Productions	3
Samuel Goldwyn Studio Sound Department, Gordon E. Sawyer, Sound Director	2
Saoirse Ronan	2
Saul Bass, Producer	2
Scarlett Johansson	2
Selznick International Pictures	2
Shelley Winters	2
Shirley MacLaine	2
Sidney Buchman	2
Sidney Franklin	2
Sidney Howard	2
Sigourney Weaver	2
Skibo Productions	2
Sol Polito	2
Sophia Loren	2
Spain	2
Spike Lee	3
Stanley Kramer	2
Stanley Kramer, Producer	2
Stanley Kubrick	4
Stephen Bosustow, Executive Producer	2
Steve McQueen	2
Steven Okazaki, Producer	2
Steven Soderbergh	2
Steven Spielberg	2
Steven Zaillian	2
Sylvain Chomet	2
Sylvester Stallone	3
Talia Shire	2
Ted McCord	2
Tennessee Williams	2
Teresa Wright	2
Terrence Malick	2
The Caddo Company	2
The March of Time	2
Thomas Mead, Producer	2
Thomas Newman	2
Tim Robbins	2
Tim Yip	2
Todd-AO Sound Department, Fred Hynes, Sound Director	2
Tom Courtenay	2
Tom Cruise	2
Tom Daly, Producer	3
Tom Hanks	2
Tom Wilkinson	2
Tommy Lee Jones	2
Tony Walton	2
United Kingdom	2
United States Army	3
United States Army Air Force	3
United States Army Pictorial Service	2
United States Army Signal Corps	2
United States Navy	3
Universal	2
Universal-International Studio Sound Department, Leslie I. Carey, Sound Director	2
Vanessa Redgrave	3
Victor McLaglen	2
Victor Milner	2
Victor Young	5
Viola Davis	2
Vittorio Nino Novarese	2
Walt Disney	2
Walt Disney, Producer	6
Walter Huston	2
Walter Matthau	2
Walter Mirisch	2
Walter Plunkett	3
Walter Scharf	2
Walter Wanger, Producer	2
Ward Kimball, Producer	2
Warner Bros.	10
Warren Beatty	4
Wendy Hiller	2
Werner Heymann	3
Werner Janssen	2
Wes Anderson	2
Whoopi Goldberg	2
Wilbur T. Blume, Producer	2
Willem Dafoe	2
William Daniels	2
William Goldman	2
William Holden	2
William Hurt	2
William Rose	4
William Wyler	2
Winona Ryder	2
Wolfgang Petersen	2
Woody Allen	3
Woody Allen, Marshall Brickman	2
Woody Harrelson	2
Written by Damien Chazelle	2
Written by Joel Coen & Ethan Coen	2
Written by Kenneth Lonergan	2
Written by Rian Johnson	2
Yoshiro Muraki	2
**5.5** Quantos indicados têm exatamente 1 indicação na história?
SELECT COUNT(*) FROM (
    SELECT nome_indicado
    FROM indicados_ao_oscar
    GROUP BY nome_indicado
    HAVING COUNT(*) = 1
) AS apenas_uma_indicacao;
5582
**5.6** Qual o maior números de indicados em um único ano? Essa é uma pergunta franca.  
SELECT ano_cerimonia, COUNT(*) AS total_indicados
FROM indicados_ao_oscar
GROUP BY ano_cerimonia
ORDER BY total_indicados DESC
LIMIT 1;
R:1943	186
*/

-- 5.1
SELECT nome_indicado, COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
GROUP BY nome_indicado
HAVING COUNT(*) > 1;

-- 5.2
SELECT nome_indicado, COUNT(*) AS maior_numero
FROM indicados_ao_oscar
GROUP BY nome_indicado
ORDER BY count(*) DESC LIMIT 1;

-- 5.3
SELECT nome_indicado, COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
GROUP BY nome_indicado
HAVING COUNT(*) > 3 
   AND SUM(vencedor) = 0;
   
-- 5.4
SELECT nome_indicado, COUNT(DISTINCT categoria) AS total_categorias_diferentes 
FROM indicados_ao_oscar
GROUP BY nome_indicado 
HAVING COUNT(DISTINCT categoria) > 1;

-- 5.5
SELECT COUNT(*) FROM (
    SELECT nome_indicado
    FROM indicados_ao_oscar
    GROUP BY nome_indicado
    HAVING COUNT(*) = 1
) AS apenas_uma_indicacao;

-- 5.6
SELECT ano_cerimonia, COUNT(*) AS total_indicados
FROM indicados_ao_oscar
GROUP BY ano_cerimonia
ORDER BY total_indicados DESC
LIMIT 1;


/*
## Nível 6: Análise de Filmes

### Toy Story

**6.1** A série de filmes Toy Story ganhou Oscars em quais anos?
SELECT DISTINCT ano_cerimonia
FROM indicados_ao_oscar
WHERE nome_filme LIKE 'Toy Story%'
AND vencedor = true;
2011
2020
**6.2** Quantas indicações a franquia Toy Story recebeu no total?
SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_filme LIKE 'Toy Story%';
11
**6.3** Em quais categorias os filmes Toy Story foram indicados?
SELECT DISTINCT categoria
FROM indicados_ao_oscar
WHERE nome_filme LIKE 'Toy Story%';

MUSIC (Original Musical or Comedy Score)
MUSIC (Original Song)
WRITING (Screenplay Written Directly for the Screen)
ANIMATED FEATURE FILM
BEST PICTURE
SOUND EDITING
WRITING (Adapted Screenplay)
### Crash

**6.4** Em qual edição do Oscar o filme "Crash" concorreu?
SELECT DISTINCT edicao_cerimonia, ano_cerimonia
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash';
78	2006
**6.5** Quantas indicações o filme "Crash" recebeu?
SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash';
6
**6.6** "Crash" ganhou o Oscar de Melhor Filme?
SELECT nome_filme, categoria, vencedor
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash'
  AND categoria IN ('BEST PICTURE', 'OUTSTANDING PICTURE')
  AND vencedor = true;
  Crash	BEST PICTURE	1
  
### Central do Brasil

**6.7** O filme "Central do Brasil" aparece no banco de dados?
SELECT *
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Central Station%'
7795	1998	1999	71	ACTRESS IN A LEADING ROLE	Fernanda Montenegro	Central Station	0
7837	1998	1999	71	FOREIGN LANGUAGE FILM	Brazil	Central Station	0
**6.8** Se sim, quantas indicações "Central do Brasil" recebeu?
SELECT nome_filme, COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Central Station%'
GROUP BY nome_filme;
Central Station	2
*/

-- 6.1
SELECT DISTINCT ano_cerimonia
FROM indicados_ao_oscar
WHERE nome_filme LIKE 'Toy Story%'
AND vencedor = true;

-- 6.2
SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_filme LIKE 'Toy Story%';

-- 6.3
SELECT DISTINCT categoria
FROM indicados_ao_oscar
WHERE nome_filme LIKE 'Toy Story%';

-- 6.4
SELECT DISTINCT edicao_cerimonia, ano_cerimonia
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash';

-- 6.5
SELECT COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash';

-- 6.6
SELECT nome_filme, categoria, vencedor
FROM indicados_ao_oscar
WHERE nome_filme = 'Crash'
AND categoria IN ('BEST PICTURE', 'OUTSTANDING PICTURE')
AND vencedor = true;]

-- 6.7
SELECT *
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Central Station%';
   
-- 6.8
SELECT nome_filme, COUNT(*) AS total_indicacoes
FROM indicados_ao_oscar
WHERE nome_filme LIKE '%Central Station%'
GROUP BY nome_filme;