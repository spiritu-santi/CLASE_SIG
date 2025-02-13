2
1:20
20:1

A
"A"


TRUE
FALSE


1.8:10.8
c(1,5,824,7)

r <- rnorm(n=100,mean=10,sd=2)
mean(r)
plot(r)


a <- 1:10
a + a

a + 1:3


rev(sort(table(c("vector","data.frame","lista","matriz","data.frame","vector","array","Lista","lista","vector","matriz","data.frame","vector","data.frame","vector","matriz","data.frame","lista","vector","dato","lista","numero","letra","vector","matriz","data.frame","entero","vector","matriz","data.frame","vector","matriz","data.frame","data.frame","grafica","vector","vector","matriz","data.frame","lista","matriz","vector","vector","matriz","data.frame"))))





animales <- c("perro","gato","raton")
c(animales,animales) ## lo mismo para vector tipo caracter (y logico)
paste("Desde","aqui","hasta","aca")
animales
paste(animales,"loco")
paste(animales,c("bien","mal"))

aninamles <- rep(animales,300)
aninamles[587]
aninamles[-824]
aninamles[aninamles=="gato"]

cosa <- aninamles == "perro"
otra <- which(cosa)
aninamles[otra] <- "tiburon"
aninamles

aqui <- list(A=c("tiburon","abulon","trucha","tortuga"),b=c("delfin","gallo","calamar"),C=c(10,75,3,4),D=list(c("esto","aquello"),"aculla"))
aqui$A
aqui[[1]]
aqui[["A"]]
aqui$quepasa <- "JA"
aqui$laseis <- "El gato de Schrodinger"
aqui$laseis <- NULL
aqui[-5]


aqui[[4]][[1]][1]
aqui[[4]][[2]][1]
masfacil <- aqui[[1]]
masfacil[1]

masfacil <- aqui[[4]]
menosfacil <- masfacil[[2]]
menosfacil[1]


mat <- matrix(rnorm(15), nrow = 5, ncol = 3)
mat
mat[3,2]
mat[2,]
mat[,3]
mat[2,1]
mat[4,1] <- NA
mat
mat[-4,]
mat[,1][,2]
este <- 1:10
este[c(1,3)]
aca <- c(1,3)
mat[, aca]

mat <- matrix(c(rnorm(14),"A"), nrow = 5, ncol = 3)
mat
which(mat < 0)
mat < 0

mat[mat < 0]
mat[which(mat < 0)]

mat[which(mat < 0)] <- 0
mat * (!mat < 0)
mat * mat


mat_let <- matrix(LETTERS[1:15], nrow = 5, ncol = 3)
mat_let
mat_let[mat_let == "H"] <- "perro"

bonito <- data.frame(Pinguino = LETTERS[1:10],
           Pico = rnorm(10),plumas = rnorm(10))

# corcheteen el renglon 4
bonito[4,]

# corcheteen la columna 3
bonito[,3]
bonito
# Quiero un nuevo data.frame con sólo los pinguinos que tengan un pico mayor a 0.3
bonito[which(bonito$Pico == 0.3),]
otro <- bonito$Pico * bonito$plumas
bonito$otro <- otro
bonito

# otro
y = 1:10
bonito
bonito$otracosa <- c(FALSE,TRUE)

bonito[which(row.names(bonito)=="2"),]

#install.packages("babynames")
library(babynames)
babynames
aqui <- babynames$name == "Santiago"
esto <- which(aqui)
santi <- babynames[esto, ]
santi[which(santi$sex=="M"),]

facil <- babynames[which(babynames$name == "Ilana" & babynames$sex=="F" & babynames$year <= 2020 & babynames$year >= 2000),]

sum(facil$n)
plot(facil$year,facil$n )

grep("Ng$",babynames$name)
babynames[12686,]
tres <- which(nchar(babynames$name) == 3)
length(tres)
table(nchar(babynames$name))

babynames$largoNombre <- nchar(babynames$name)

babynames[which(babynames$largoNombre > 10),]
