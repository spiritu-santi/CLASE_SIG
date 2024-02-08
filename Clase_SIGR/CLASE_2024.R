### VECTORES ATOMICOS
c("uno","dos","tres")
1:3
c(1,2,3)
c(TRUE,TRUE,FALSE)

vector("numeric",10)
vector("character",10)
vector("logical",10)

### LISTAS
list(1:10,LETTERS,TRUE,factor(c(1,2,1,2)),seq(0,1,0.1))
lista <- list("Numero"=1:10,"Caracter"=LETTERS,"Logico"=TRUE,"Factor"=factor(c(1,2)),"Numero"=seq(0,1,0.1))

#### INDEXEADO/CORCHETEADO
# ¿Cómo indexeo la LETRA 'F'?
lista
lista$Caracter
lista[[2]]
lista[["Caracter"]]
lista[2][6]
lista[[2]][6]
lista[[c(2,6)]]

NULL

mean
unavacia <- function() { 
  3 
  }
unavacia()

### OBJETOS DERIVADOS
matrix(nrow=5,ncol=5)
data.frame("Numero"=1:10,"Caracter"=LETTERS,"Logico"=TRUE,"Factor"=factor(c(1,2)),"Numero"=seq(0,1,0.1))
data.frame("Numero"=1:26,"Caracter"=LETTERS,"Logico"=rep(TRUE,26),"Factor"=factor(c(1:26)),"Numero"=seq(0,2.5,0.1))

#### INDEXEADO/CORCHETEADO
a <- matrix(nrow=5,ncol=5,data=sample(25,25))
a
colnames(a)  <- letters[1:5]
rownames(a) <- LETTERS[1:5]
a
a$a
a[,"a"]
a["B",]
a[TRUE]
a[1,1] <- 0
a
a[TRUE,TRUE] # lo mismo que a[,]
a[FALSE,1]
a[1,TRUE]
a[[2]]
a[1]
a[[1]]
a[,5]
a[5,]
a[5,1]
a[c(1,2),c(1,2)]
a[c(1,7)]
a[which(a == 9 | a == 6)] <- NA
diag(a)
upper.tri(a)
lower.tri(a) * a
t(a)
a*a # multipicacion de vectores
a**a # Algebra de matrices

library(babynames)
babynames
nombres <- c("Mary","Emma","Santiago","Angela","Danielle")
a <- babynames[which(babynames$name==nombres[1]),]
cat(sum(a$n),"\n")
a <- babynames[which(babynames$name==nombres[2]),]
cat(sum(a$n),"\n")
a <- babynames[which(babynames$name==nombres[3]),]
cat(sum(a$n),"\n")
a <- babynames[which(babynames$name==nombres[4]),]
cat(sum(a$n),"\n")
a <- babynames[which(babynames$name==nombres[5]),]
cat(sum(a$n),"\n")

nombres <- unique(babynames$name)
# iterando sobre i
#i <- 1
for(i in 1:length(nombres)){
a <- babynames[which(babynames$name==nombres[i]),]
cat(i, nombres[i],":",sum(a$n),"\n")
#plot(a$year,a$n,type="l",main=nombres[i])
}
babynames %>% count(name)


### DATOS DE GBIF EN R ####
read.table("0007415-240202131308920.csv",sep="\t")
data <- data.table::fread("0007415-240202131308920.csv")
data <- as.data.frame(data)
summary(data)
### VAMOS A REDUCIR UN POCO EL RUIDO: species, lat, lon, year, country
colnames(data)
data[13]
data[13,]
data[,13]
data[,"scientificName"]
data[["scientificName"]]
data$scientificName
data <- data[,c(13,16,33,22,23)]
data
data[1,2]
data[1:2]
data[[1:2]] 
data[[c(2,5)]] ## RECURSIVE INDEXING!!

#install.packages("maps")
maps::map("world",lwd=0.1)
points(data$decimalLongitude,data$decimalLatitude,pch=19)


data <- data[-which(is.na(data$decimalLatitude)),]
data <- data[-which(is.na(data$year)),]
head(data)
summary(data)


unvector <- rnbinom(n=36*18, size=10, prob=0.1)
ras <- raster::raster(nrows=18, ncols=36, xmn=-180, xmx=180, ymn=-90, ymx=90,vals=unvector)
ras@data@values
ras[1:2]
ras < 100
raster::plot(ras < 100,col=heat.colors(100))




