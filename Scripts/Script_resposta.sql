
# 1- Which vessels have a risk score equal to 310?
# 1- Quais embarcações possuem pontuação de risco igual a 310?

selct nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where pontuacao_risco = 310;


# 2- Which vessels have risk classification A and compliance rate greater than or equal to 95%?
# 2- Quais embarcações têm classificação de risco A e índice de conformidade maior ou igual a 95%?

select nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where classificacao_risco = 'A' and indice_conformidade >= 95;


# 3- Which vessels have risk classification C or D and compliance rate less than or equal to 95%?
# 3- Quais embarcações têm classificação de risco C ou D e índice de conformidade menor ou igual a 95%?

select nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where classificacao_risco in ('C','D') and indice_conformidade <= 95;

#OR

select nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where classificacao_risco ='C' or classificacao_risco = 'D' and indice_conformidade <= 95;


# 4- Which vessels have risk classification A or risk score equal to 0?
# 4- Quais embarcações têm classificação de risco A ou pontuação de risco igual a 0?

select nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where classificacao_risco = 'A' and pontuacao_risco = 0;


# 5- Which vessels were inspected in December 2016?
# 5- Quais embarcações foram inspecionadas em Dezembro de 2016?

select nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where mes_ano = '12/2016';

#OR

select nome_navio, mes_ano, classificacao_risco, indice_conformidade, pontuacao_risco, temporada from cap02.TB_NAVIOS
where temporada like '%Dezembro 2016';