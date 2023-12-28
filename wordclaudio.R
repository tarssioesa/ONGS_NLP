### librarys
library(tidyverse)
library(tidytext)
library(tm)
library(wordcloud2)
library(RColorBrewer)

#### Criando banco de dados:

word <- df |> 
  unnest_tokens(word, descricao) |> 
  group_by(word) |> 
  tally() |> 
  filter(!word %in% tm::stopwords("en")) |> 
  filter(!word %in% c("will")) |> 
  filter(n > 50)


### criando wordclaudio
set.seed(1234) # for reproducibility


wordcloud2(data=word, size=1.6, color='random-dark')

