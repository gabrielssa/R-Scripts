# Lendo dataset de repositório
dados <- read.csv('C:/Users/Gabriel/Documents/mizera.csv')
library(magrittr)
library(rpart)
#install.packages('rpart',dependencies=T)
#install.packages('magrittr', dependencies=T)

arvore = rpart(Price ~ ., data=dados)
plot(arvore)
text(arvore, use.n=TRUE, all=TRUE, cex=.8)

# Utilizar o valor de CP para o menor xerror da tabela (0.010000)
printcp(arvore)
arvore = prune(arvore, cp = 0.010000)

#testando se o modelo consegue prever os dados

test = predict(arvore, newdata = dados)
head(test)
head(dados)
dados_price <-dados[,-c(2,3,4,5)]
head(dados_price)

#amostra da predição
amostraPredicao = test[1:5000]
#amostra dos dados
amostraDados = dados_price[1:5000]

erro = abs(amostraPredicao - amostraDados)
plot(amostraDados, erro)

plot(amostraPredicao, amostraDados)
