
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

datasets::iris

tibble(iris)

# Usando pacote DescTools
iris %>%
  group_by(Species) %>% # Agrupar por espécies
  get_summary_stats(Sepal.Width, type = "mean_sd")

describeBy(dados$ALT_MEDIA, group = dados$TRAT) # package psych 
