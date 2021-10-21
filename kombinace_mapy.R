xA<-c(2,4)
xB<-c(1,5)
xAB<-c(1,1,4)

mapa_xA <- c(0,xA[1])
mapa_xB <- c(0,xB[1])

for (i in 2:length(xA)) {
  prvek <- mapa_xA[i]+xA[i]
  mapa_xA <- c(mapa_xA, prvek)
}

for (i in 2:length(xB)) {
  prvek <- mapa_xB[i]+xB[i]
  mapa_xB <- c(mapa_xB, prvek)
}

mapa <- unique(sort(c(mapa_xA, mapa_xB)))

diference <- c()

for (i in 2:length(mapa)){
  prvek <- mapa[i]-mapa[i-1]
  diference <- c(diference, prvek)
}

diference <- sort(diference)
q <- identical(xAB,diference)
posledni_prvek <- tail(mapa,1)
xA_novy <- c()
xB_novy <- c()
if (q == FALSE){
  print('xAB a mapa se neshodují')
}
else {
  for (i in length(xA):1){
    prvek <- posledni_prvek - xA[i] 
    xA_novy <- c(xA_novy, prvek)
  }
  for (j in length(xB):1){
    prvek <- posledni_prvek - xB[j] 
    xB_novy <- c(xB_novy, prvek)
  }
}

