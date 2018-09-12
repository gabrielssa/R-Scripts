x <- c(1,2,3,3,5)
n <- 3
sample(x, n, replace = FALSE)

medias <- c(0)
variancias <- c(0)

for (i in 1:1000){
  y = rnorm(x, mean = 100, sd = 25)
  medias[i] <- mean(y)
  variancias[i] <- sum((y-mean(y))^2)/5
}

hist(medias, main="Histograma das médias")
hist(variancias, main="histograma das variâncias")


