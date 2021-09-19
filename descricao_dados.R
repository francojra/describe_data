
# Estatística descritiva -------------------------------------------------------------------------------------------------------------------


# Pacotes necessários ----------------------------------------------------------------------------------------------------------------------

if (!require(tibble)) install.packages("tibble") 
library(tibble) # Ver tabela simplificada
if (!require(dplyr)) install.packages("dplyr")
library(dplyr) # Manipulação de dados 
if (!require(DescTools)) install.packages("DescTools")
library(DescTools)
if (!require(psych)) install.packages("psych") 
library(psych) # Função para descrição dos dados: describeBy

# Exemplo ----------------------------------------------------------------------------------------------------------------------------------

### Selecionando o banco de dados
datasets::iris

### Verificando a tabela e tipos de variáveis
tibble(iris)

### Descrevendo os dados usando pacote DescTools
iris %>%
  group_by(Species) %>% # Agrupar por espécies
  get_summary_stats(Sepal.Width, type = "mean_sd") # Calcula média e desvio padrão

### Descrevendo os dados usando pacote psych
describeBy(iris$Sepal.Width, group = iris$Sepal.Width) 
