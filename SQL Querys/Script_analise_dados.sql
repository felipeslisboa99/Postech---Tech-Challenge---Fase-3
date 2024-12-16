SELECT 
    CASE
        WHEN A002 BETWEEN 0 AND 12 THEN '0-12 Criança'
        WHEN A002 BETWEEN 13 AND 17 THEN '13-17 Adolescente'
        WHEN A002 BETWEEN 18 AND 25 THEN '18-25 Jovem '
        WHEN A002 BETWEEN 26 AND 59 THEN '26-59 Adulto'
        ELSE '60+ Idoso' 
    END AS classificacao_de_idade, 
      CASE 
        WHEN A003 = 2 THEN  'Mulher'
        WHEN A003 = 1 THEN  'Homem'
    END AS genero,
    CASE
        WHEN UF BETWEEN 11 AND 17 THEN 'Norte'
        WHEN UF BETWEEN 21 AND 29 THEN 'Nordeste'
        WHEN UF BETWEEN 31 AND 35 THEN 'Sudeste'
        WHEN UF BETWEEN 41 AND 43 THEN 'Sul'
        WHEN UF BETWEEN 50 AND 53 THEN 'Centro-Oeste'
    END AS regioes,
    V1013 AS mes_pesquisa,
    COUNT(F0061) AS total_pessoas,

 -- Características dos sintomas    
--Na semana passada teve febre?
    COUNT(CASE WHEN B0011 = 1 THEN 1 END) AS teve_frebe,
    COUNT(CASE WHEN B0011 = 2 THEN 1 END) AS nao_teve_frebe,
    COUNT(CASE WHEN B0011 = 3 THEN 1 END) AS nao_sabe_se_teve_frebre,
    COUNT(CASE WHEN B0011 = 9 THEN 1 END) AS ignorou_frebre,
-- Na semana passada teve tosse?
    COUNT(CASE WHEN B0012 = 1 THEN 1 END) AS teve_tosse,
    COUNT(CASE WHEN B0012 = 2 THEN 1 END) AS nao_teve_tosse,
    COUNT(CASE WHEN B0012 = 3 THEN 1 END) AS nao_sabe_se_teve_tosse,
    COUNT(CASE WHEN B0012 = 9 THEN 1 END) AS ignorado_tosse,

-- Na semana passada teve dor de garganta?
    COUNT(CASE WHEN B0013 = 1 THEN 1 END) AS teve_dor_de_garganta,  
    COUNT(CASE WHEN B0013 = 2 THEN 1 END) AS nao_teve_dor_de_garganta,  
    COUNT(CASE WHEN B0013 = 3 THEN 1 END) AS nao_sabe_dor_de_garganta,  
    COUNT(CASE WHEN B0013 = 9 THEN 1 END) AS ignorado_dor_de_garganta,  

-- Na semana passada teve dificuldade para respirar?
    COUNT(CASE WHEN B0014 = 1 THEN 1 END) AS teve_dificuldade_respirar,
    COUNT(CASE WHEN B0014 = 2 THEN 1 END) AS nao_teve_dificuldade_respirar,
    COUNT(CASE WHEN B0014 = 3 THEN 1 END) AS nao_sabe_dificuldade_respirar,
    COUNT(CASE WHEN B0014 = 9 THEN 1 END) AS ignorado_dificuldade_respirar,

-- Na semana passada teve dor no peito?
    COUNT(CASE WHEN B0016 = 1 THEN 1 END) AS teve_dor_no_peito,
    COUNT(CASE WHEN B0016 = 2 THEN 1 END) AS nao_teve_dor_no_peito,
    COUNT(CASE WHEN B0016 = 3 THEN 1 END) AS nao_sabe_dor_no_peito,
    COUNT(CASE WHEN B0016 = 9 THEN 1 END) AS ignorado_dor_no_peito,
    
-- Na semana passada teve nariz entupido ou escorrendo?
    COUNT(CASE WHEN B0018 = 1 THEN 1 END) AS teve_nariz_escorrendo_entupido,
    COUNT(CASE WHEN B0018 = 2 THEN 1 END) AS nao_teve_nariz_escorrendo_entupido,
    COUNT(CASE WHEN B0018 = 3 THEN 1 END) AS nao_sabe_nariz_escorrendo_entupido,
    COUNT(CASE WHEN B0018 = 9 THEN 1 END) AS ignoradi_nariz_escorrendo_entupido,
  
-- Na semana passada teve fadiga?
    COUNT(CASE WHEN B0019 = 1 THEN 1 END) AS teve_fadiga,
    COUNT(CASE WHEN B0019 = 2 THEN 1 END) AS nao_fadiga,
    COUNT(CASE WHEN B0019 = 3 THEN 1 END) AS sao_sabe_fadiga,
    COUNT(CASE WHEN B0019 = 9 THEN 1 END) AS ignorado_fadiga,

--Na semana passada teve perda de cheiro ou sabor?
    COUNT(CASE WHEN B00111 = 1 THEN 1 END) AS teve_perda_de_ofato_sabor,
    COUNT(CASE WHEN B00111 = 2 THEN 1 END) AS nao_teve_perda_de_ofato_sabor,
    COUNT(CASE WHEN B00111 = 3 THEN 1 END) AS nao_sabe_perda_de_ofato_sabor,
    COUNT(CASE WHEN B00111 = 9 THEN 1 END) AS ignorado_perda_de_ofato_sabor,

--Na semana passada teve dor muscular? 
    COUNT(CASE WHEN B00112 = 1 THEN 1 END) AS teve_dores_musculares,
    COUNT(CASE WHEN B00112 = 2 THEN 1 END) AS nao_teve_dores_musculares,
    COUNT(CASE WHEN B00112 = 3 THEN 1 END) AS nao_sabe_dores_musculares,
    COUNT(CASE WHEN B00112 = 9 THEN 1 END) AS ignorado_dores_musculares,

--Na semana passada teve diarreia?
    COUNT(CASE WHEN B00112 = 1 THEN 1 END) AS teve_diarreia,
    COUNT(CASE WHEN B00112 = 2 THEN 1 END) AS nao_teve_diarreia,
    COUNT(CASE WHEN B00112 = 3 THEN 1 END) AS nao_sabe_teve_diarreia,
    COUNT(CASE WHEN B00112 = 9 THEN 1 END) AS ignorado_diarreia,
--Fim da classificação de sintomas

-- Comportamento da população
--Por causa disso, foi a algum estabelecimento de saúde?
    COUNT(CASE WHEN B002 = 1 THEN 1 END) AS foi_estabelecimento_saude,
    COUNT(CASE WHEN B002 = 2 THEN 1 END) AS nao_foi_estabelecimento_saude,
    COUNT(CASE WHEN B002 = 9 THEN 1 END) AS ignorou_os_sintomas,
-- Local que buscou atendimento foi hospital do SUS
    COUNT(CASE WHEN B0043 = 1 THEN 1 END) AS hospital_sus,
    COUNT(CASE WHEN B0043 = 2 THEN 1 END) AS nao_era_um_hospital_sus,
    COUNT(CASE WHEN B0043 = 9 THEN 1 END) AS ignorou_se_foi_sus,
--Local que buscou atendimento foi pronto socorro privado ou ligado às forças armadas
    COUNT(CASE WHEN B0045 = 1 THEN 1 END) AS atenidento_pivado_ou_militar,
    COUNT(CASE WHEN B0045 = 2 THEN 1 END) AS nao_buscou_atendimento_privado,
    COUNT(CASE WHEN B0045 = 9 THEN 1 END) AS nao_respondeu_atendiento_privado,
--Fez o exame coletado com cotonete na boca e/ou nariz (SWAB)? 
    COUNT(CASE WHEN B009A = 1 THEN 1 END) AS fez_exame_SWAB,
    COUNT(CASE WHEN B009A = 2 THEN 1 END) AS nao_fez_exame_SWAB,
    COUNT(CASE WHEN B009A = 9 THEN 1 END) AS ignorado_exame_SWAB,
--Qual o resultado?
    COUNT(CASE WHEN B009B = 1 THEN 1 END) AS resultado_positivo,
    COUNT(CASE WHEN B009B = 2 THEN 1 END) AS resultado_negativo,
    COUNT(CASE WHEN B009B = 3 THEN 1 END) AS resultado_inconclusivo,
    COUNT(CASE WHEN B009B = 4 THEN 1 END) AS ainda_sem_resultado,
    COUNT(CASE WHEN B009B = 9 THEN 1 END) AS ignorou_resultado,
--Algum médico já lhe deu o diagnóstico de asma/bronquite/enfisema/doenças respiratória crônica ou doença de pulmão?
    COUNT(CASE WHEN B0103 = 1 THEN 1 END) AS tem_doencas_respiratorias,
    COUNT(CASE WHEN B0103 = 2 THEN 1 END) AS nao_tem_doencas_respiratorias,
    COUNT(CASE WHEN B0103 = 9 THEN 1 END) AS ignorou_doencas_respiratorias,  
-- fim do comportamento da população

-- Caracteristicas econimicas
C011A12 AS salario,
--No trabalho (único ou principal) que tinha nessa semana, era: 
    COUNT(CASE WHEN C007 = 1 THEN 1 END) AS tabalhador_domestico,
    COUNT(CASE WHEN C007 = 2 THEN 1 END) AS militar_do_excercito,
    COUNT(CASE WHEN C007 = 3 THEN 1 END) AS policia_ou_bombeiro_militar,  
    COUNT(CASE WHEN C007 = 4 THEN 1 END) AS empregado_do_setor_privado,
    COUNT(CASE WHEN C007 = 5 THEN 1 END) AS empregado_do_setor_publico,
    COUNT(CASE WHEN C007 = 6 THEN 1 END) AS empregador,
    COUNT(CASE WHEN C007 = 7 THEN 1 END) AS conta_propria,
    COUNT(CASE WHEN C007 = 8 THEN 1 END) AS do_lar,
    COUNT(CASE WHEN C007 = 9 THEN 1 END) AS fora_do_mercado_de_trabalho,
--Auxílios emergenciais relacionados ao coronavírus
    COUNT(CASE WHEN D0051 = 1 THEN 1 END) AS recebeu_auxilio_COVID,
    COUNT(CASE WHEN D0051 = 2 THEN 1 END) AS nao_recebeu_auxilio_COVID,
--Tem algum plano de saúde médico, seja particular, de empresa ou de órgão público
    COUNT(CASE WHEN B007 = 1 THEN 1 END) AS tem_algum_plano_de_saude,
    COUNT(CASE WHEN B007 = 2 THEN 1 END) AS nao_tem_plano_de_saude,
    COUNT(CASE WHEN B007 = 9 THEN 1 END) AS ignorado_plano_de_saude,
--Este domicílio é: 
    COUNT(CASE WHEN F001 = 1 THEN 1 END) AS casa_propria_quitada,
    COUNT(CASE WHEN F001 = 2 THEN 1 END) AS casa_propria_ainda_pagando,
    COUNT(CASE WHEN F001 = 3 THEN 1 END) AS casa_alugada,  
    COUNT(CASE WHEN F001 = 4 THEN 1 END) AS cedido_pelo_empregador,
    COUNT(CASE WHEN F001 = 5 THEN 1 END) AS cedido_por_familiar,
    COUNT(CASE WHEN F001 = 6 THEN 1 END) AS cedido_de_outra_forma,
    COUNT(CASE WHEN F001 = 7 THEN 1 END) AS outra_condicao,
--Durante o período da pandemia alguém deste domicílio solicitou algum empréstimo?   
    COUNT(CASE WHEN E001 = 1 THEN 1 END) AS sim_uma_pessoa_conseguiu_emprestimo,
    COUNT(CASE WHEN E001 = 2 THEN 1 END) AS sim_mas_nenhuma_pessoa_conseguiu_emprestimo,
    COUNT(CASE WHEN E001 = 3 THEN 1 END) AS nao_solicitou_emprestimo,
-- fim das caracteristicas economicas

  FROM (
    SELECT * FROM tenacious-ring-366821.PNAD_COVID19.PNAD_COVID_072020
    UNION ALL
    SELECT * FROM tenacious-ring-366821.PNAD_COVID19.PNAD_COVID_082020
    UNION ALL
    SELECT * FROM tenacious-ring-366821.PNAD_COVID19.PNAD_COVID_092020
) AS combined_data
GROUP BY 
    classificacao_de_idade, mes_pesquisa, regioes, genero, salario
ORDER BY 
    mes_pesquisa, regioes;