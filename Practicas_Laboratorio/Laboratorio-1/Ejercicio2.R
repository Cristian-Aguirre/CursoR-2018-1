
# Nombres : Cristian Aguirre Janampa 20150058I
#Ejercicio N°2 : Operaciones sobre una matriz en R

# Item (a)

x<-matrix(c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5), nrow = 4, ncol = 2, byrow = TRUE)
x

#Item (b)

## Por ejemplo eliminamos la fila 1 :

dim(x[-1,])

#Item (c)

y<- cbind(x[,-2], sort(x[,2]))
y

#Item (d)

z<-matrix(x[-4,-1])
z         ## Vemos que el resultado es una matriz de 3x1, como deberia ser.

#Item (e)
a<-as.vector(t(y))
r<-matrix(a[seq(length(a)-3, length(a))], nrow = 2, byrow = TRUE)
r

#Item (f)

y[4,2]<- -1/2*(r[1,1])  #Sobreescribiendo los valores de la matriz (c) 
y[1,2]<- -1/2*(r[2,2])
y[4,1]<- -1/2*(r[1,1])
y[1,1]<- -1/2*(r[2,2])
y

#Item (g)

A<- matrix(c(2, rep(0,4), 3, rep(0,4), 5, rep(0,4), -1), nrow = 4)
A
solve(A)
Identidad<- diag(nrow = 4)
A%*%solve(A) - Identidad    #Obtenemos una matriz 4x4 de ceros.



