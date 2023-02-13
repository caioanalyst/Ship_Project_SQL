# 1- Quais embarcações possuem pontuação de risco igual a 310?

selct nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where pontuacao_risco = 310;


# 2- Quais embarcações têm classificação de risco A e índice de conformidade maior ou igual a 95%?

select nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where classificacao_risco = 'A' and indice_conformidade >= 95;


#3- Quais embarcações têm classificação de risco C ou D e índice de conformidade menor ou igual a 95%?

select nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where classificacao_risco in ('C','D') and indice_conformidade <= 95;

OU

select nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where classificacao_risco ='C' or classificacao_risco = 'D' and indice_conformidade <= 95;


#4- Quais embarcações têm classificação de risco A ou pontuação de risco igual a 0?

select nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where classificacao_risco = 'A' and pontuacao_risco = 0;


#5- [DESAFIO] Quais embarcações foram inspecionadas em Dezembro de 2016?

select nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where mes_ano = '12/2016';

OU

select nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where temporada like '%Dezembro 2016';