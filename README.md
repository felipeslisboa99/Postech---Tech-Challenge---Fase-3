
# README do Projeto Tech Challenge: Análise de Dados sobre a COVID-19

## **Visão Geral do Projeto**

Este projeto foi desenvolvido no contexto do Tech Challenge, com o objetivo de realizar uma análise abrangente sobre os principais indicadores relacionados à pandemia de COVID-19 no Brasil. Utilizando uma base de dados composta por 1.157.984 participantes, fornecemos insights que visam:

- Identificar o perfil dos potenciais pacientes.
- Analisar os impactos econômicos e sociodemográficos.
- Propor diretrizes práticas para otimização da infraestrutura e recursos hospitalares.

## **Arquitetura do Projeto**

O projeto está organizado nos seguintes arquivos e documentos:

- **Grupo.txt**: Lista dos integrantes do grupo com seus respectivos e-mails para contato.
- **Tech Challenge Covid-19.docx**: Documento principal que detalha a análise realizada, incluindo tabelas e insights relevantes.
- **Script\_analise\_dados.sql**: Script utilizado para a análise dos dados.
- **caracteristicas\_dos\_sintomas.csv**: Base de dados contendo informações sobre os sintomas relatados pela população.
- **caracteristicas\_economicas.csv**: Dados relacionados à situação econômica dos participantes.
- **comportamento\_COVID19.csv**: Informações sobre o comportamento da população durante a pandemia.
- **Explicações das tabelas.docx**: Documento explicativo sobre as tabelas utilizadas no projeto.
- **tabela\_agrupada\_COVID19.xlsx**: Documento Excel com a consolidação de dados relevantes para a pesquisa.
- **Tech Challenge - Fase 3\_apresentação.pdf**: Apresentação final detalhando os principais resultados e diretrizes do projeto.

## **Relações entre os Arquivos CSV**

Os arquivos CSV estão organizados para capturar diferentes aspectos da pesquisa e possuem relações que permitem uma análise integrada:

1. **caracteristicas\_dos\_sintomas.csv**:

   - Contém dados sobre os sintomas relatados, incluindo tipo, frequência e severidade.
   - Chave principal: `id_participante`.

2. **caracteristicas\_economicas.csv**:

   - Inclui informações sobre condições econômicas, como renda, ocupação e auxílios recebidos.
   - Chave principal: `id_participante`.

3. **comportamento\_COVID19.csv**:

   - Registra o comportamento da população em relação à pandemia, como busca por atendimento médico, tipo de atendimento e exames realizados.
   - Chave principal: `id_participante`.

### **Relacionamento entre os Arquivos**:

- **Chave Primária Comum**: Todos os arquivos compartilham a chave `id_participante`, que permite relacionar os dados de um mesmo participante entre os diferentes aspectos analisados.
- **Integração dos Dados**:
  - Dados de sintomas podem ser cruzados com condições econômicas para identificar perfis de vulnerabilidade.
  - Informações de comportamento permitem entender a relação entre severidade dos sintomas e busca por atendimento.
- **Possibilidades Analíticas**:
  - Identificar correlações entre condição econômica e taxa de busca por atendimento.
  - Avaliar a frequência de sintomas graves em diferentes regiões ou classes sociais.

## **Detalhes do Documento Excel**

O arquivo **tabela\_agrupada\_COVID19.xlsx** consolida as principais informações extraídas dos arquivos CSV e análises realizadas. Ele é estruturado para facilitar a visualização e integração dos dados:

1. **Estrutura das Abas**:

   - Cada aba representa um pilar da pesquisa:
     - **Sintomas Clínicos**: Frequência e distribuição dos sintomas entre os participantes.
     - **Características Econômicas**: Dados sobre renda, ocupação e dependência de auxílios.
     - **Comportamento Populacional**: Indicadores como busca por atendimento e realização de exames.

2. **Relações Internas**:

   - Os dados são integrados por meio do identificador único `id_participante`, permitindo análises cruzadas dentro do próprio Excel.
   - Exemplo: Comparar a severidade dos sintomas com a condição econômica do participante.

3. **Indicadores Calculados**:

   - Médias, medianas e totais por região, faixa etária e gênero.
   - Percentuais de sintomas graves em relação ao total de casos reportados.

4. **Usos Potenciais**:

   - Criação de gráficos e dashboards para apresentações visuais.
   - Exportação para outras ferramentas de análise, como Python ou Power BI.
   - Comparações regionais e segmentações por demografia.

## **Detalhes da Apresentação PDF**

O documento **Tech Challenge - Fase 3\_apresentação.pdf** sintetiza os principais resultados e direcionamentos do projeto. Os destaques incluem:

1. **Objetivos Principais**:

   - Oferecer um panorama detalhado dos indicadores relacionados à COVID-19.
   - Identificar o perfil dos potenciais pacientes.
   - Propor diretrizes práticas para enfrentar novas ondas de contaminação.

2. **Panorama Geral da Pesquisa**:

   - Participantes: **1.157.984**.
   - Distribuição de gênero: **52% Mulheres**, **48% Homens**.
   - Faixa etária predominante: **26-59 anos (47,3%)**.

3. **Distribuição Regional**:

   - Nordeste: **30,6%**.
   - Sudeste: **29,4%**.
   - Sul: **17,2%**.
   - Norte: **12,2%**.
   - Centro-Oeste: **10,6%**.

4. **Média Salarial por Faixa Etária**:

   - Adultos (26-59 anos): **R\$ 1.268,86**.
   - Jovens (18-25 anos): **R\$ 478,06**.
   - Idosos (60+): **R\$ 398,81**.

5. **Principais Sintomas Relatados**:

   - Leves: **Nariz entupido (17%)**, **Tosse (15%)**, **Dor de garganta (12%)**.
   - Graves: **Dificuldade para respirar (5%)**, **Dor no peito (4%)**.

6. **Recomendações Estratégicas**:

   - **Infraestrutura**: Reforçar a capacidade de atendimento para casos leves e graves.
   - **Capacitação da Equipe**: Treinamento para identificação rápida de sintomas críticos.
   - **Monitoramento**: Implementar triagem avançada e estratégias de comunicação.

## **Detalhes do Script SQL**

O arquivo **Script\_analise\_dados.sql** contém os códigos necessários para manipulação e análise da base de dados. Aqui está uma visão geral de suas principais seções:

1. **Criação de Tabelas**:

   - Definição de tabelas para armazenar dados dos sintomas, comportamento e condições econômicas.
   - Exemplos de colunas: `idade`, `gênero`, `estado`, `sintomas`, `plano_saude`.

2. **Importação de Dados**:

   - Utilização de comandos `LOAD DATA` ou `INSERT INTO` para popular tabelas com os arquivos CSV fornecidos.

3. **Limpeza e Normalização**:

   - Scripts para tratar inconsistências, como valores nulos e duplicatas.
   - Conversão de dados para formatos consistentes (ex.: datas, tipos de dados numéricos).

4. **Análises Estatísticas**:

   - Comandos para calcular médias, medianas e distribuições (ex.: `AVG`, `COUNT`, `GROUP BY`).
   - Exemplos de consultas:
     - Média salarial por região.
     - Frequência de sintomas por faixa etária.
     - Porcentagem de participantes com plano de saúde.

5. **Relatórios e Exportação**:

   - Geração de tabelas resumidas com comandos `SELECT INTO OUTFILE` ou integrações para exportação.
   - Dados preparados para visualização em ferramentas como Excel ou Python.

## **Metodologia**

A análise seguiu as etapas abaixo:

1. **Coleta e Limpeza de Dados**:

   - Garantimos a diversidade amostral considerando idade, gênero e região geográfica.

2. **Análise Descritiva**:

   - Avaliamos distribuições demográficas, como gênero (52% mulheres, 48% homens) e faixa etária predominante (26-59 anos).
   - Estudamos os sintomas mais prevalentes e sua relação com a gravidade dos casos.

3. **Análise Regional e Econômica**:

   - Consideramos diferenças salariais e de infraestrutura por região.
   - Identificamos vulnerabilidades econômicas, como a baixa média salarial no Nordeste (R\$ 511,31).

4. **Planejamento e Recomendações**:

   - Propostas para preparação hospitalar, incluindo triagem rápida e expansão da capacidade de leitos de UTI.
   - Sugestões de campanhas educativas para subnotificação e busca precoce de atendimento.

## **Resultados Chave**

- A maioria dos sintomas relatados foi leve, como nariz entupido (17%), tosse (15%) e dor de garganta (12%).
- Apenas 1,31% dos participantes buscaram atendimento médico, sugerindo desafios no acesso à saúde.
- Regiões Nordeste e Sudeste concentraram 60% dos participantes, exigindo foco prioritário em ações locais.

## **Recomendações para o Hospital**

1. Expandir a estrutura para atendimento de casos leves e moderados.
2. Investir em capacitação de equipes médicas para identificar rapidamente sintomas graves.
3. Implementar sistemas de triagem e monitoramento preventivo.
4. Realizar campanhas educativas para aumentar a adesão aos serviços hospitalares privados.

## **Integrantes do Grupo**

Os responsáveis pelo projeto são:

- **Renato Batista dos Santos** ([renatobatista10@icloud.com](mailto\:renatobatista10@icloud.com))
- **Jéssyca Dias Matos Lima** ([jessycadiasmatoslima@gmail.com](mailto\:jessycadiasmatoslima@gmail.com))
- **Everton Ferreira Alves** ([everton.f.a@outlook.com](mailto\:everton.f.a@outlook.com))
- **Felipe Saraiva Lisboa** ([felipe.marcela@hotmail.com](mailto\:felipe.marcela@hotmail.com))
- **Roberto Silva de Sá Barreto** ([roberval77@gmail.com](mailto\:roberval77@gmail.com))

## **Como Utilizar**

1. **Acesse os Documentos**: Verifique os arquivos listados na seção "Arquitetura do Projeto" para a análise detalhada.
2. **Entre em Contato**: Utilize os e-mails listados no arquivo "Grupo.txt" para qualquer dúvida ou esclarecimento.
3. **Adapte as Recomendações**: As diretrizes são personalizáveis para aplicação em diferentes hospitais e cenários regionais.

## **Contato**

Para mais informações ou colaborações, entre em contato com os integrantes do grupo ou consulte o documento principal.

