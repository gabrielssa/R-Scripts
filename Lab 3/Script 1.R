x <- c(1,2,3,3,5)
n <- 3
sample(x, n, replace = FALSE)

medias <- c(0)
variancias <- c(0)

for (i in 1:1000){
  vetorTemp = rnorm(x, mean = 100, sd = 25)
  medias[i] <- mean(vetorTemp)
  variancias
}


variancia = sum((medias-mean(medias))^2)/1000
varianciaXBarra = (sum((x-mean(x))^2)/5)
varianciaTeoricaXBarra = (sum((x-mean(x))^2)/5) /n

mean(medias)
mean(x)

# Valores específicos para o determinado n
print(mean(medias))
print(variancia)
print(varianciaTeoricaXBarra)
hist(medias)



