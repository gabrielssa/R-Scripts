#Variável que porta o N
n <- 100

medias <- c(0)
medianas <- c(0)

for (i in 1:10000){
  vetorTemp = rnorm(n, mean = 500, sd = 10)
  medias[i] <- mean(vetorTemp)
  medianas[i] <- median(vetorTemp)
}

mediaDasMedias = mean(medias)
varDasMedias = var(medias)

mediaDasMedianas = mean(medianas)
varDasMedianas = var(medianas)

#Plotagem dos histogramas
hist(medias)
hist(medianas)

#Pedindo valores requisitados
print(mediaDasMedias)
print(varDasMedias)
print(mediaDasMedianas)
print(varDasMedianas)

# Questão 2

x <- 100

t1 <- c(0)
t2 <- c(0)

for (i in 1:10000){
  vetorTemp = runif(x, 0, 500)
  t1[i] <- 2*mean(vetorTemp)
  t2[i] <- ((x+1)/x)*max(vetorTemp)
}

mean(t1)
mean(t2)
var(t1)
var(t2)

#Plotagem do histograma
hist(t1)
hist(t2)
