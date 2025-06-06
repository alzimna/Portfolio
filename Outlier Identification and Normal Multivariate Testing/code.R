install.packages("readxl")
install.packages("matlib")
library("matlib")
library("readxl")

#Tugas kontekstual
Y = as.matrix(read_excel("~/Portfolio/Outlier Identification and Normal Multivariate Testing/kontekstual1.xlsx"))
Y = na.omit(Y)
p = dim(Y)[2]
n = dim(Y)[1]

ybar = rep(0,p)
for (i in 1:p){
  ybar[i] = sum(Y[,i])/length(Y[,i])
}

S = cov(Y)
D = rep(0,n)
for (i in 1:n){
  temp = Y[i,]
  x = as.matrix(temp-ybar,ncol=1)
  D[i]=t(x) %*% inv(S) %*% x
}

u = rep(0,n)
for (i in 1:n){
  u[i] = n*D[i]/(n-1)**2
}

a = p/2
b= (n-p-1)/2
alpha = (p-2)/(2*p)
beta = (n-p-3)/(2*(n-p-1))

v = rep(0,n)
for (i in 1:n){
  prob = (i-alpha)/(n-alpha-beta+1)
  v[i] = qbeta(prob, a, b)
}

plot(x = sort(u), y = v,
     xlab = "u_i",
     ylab = "v_i",
     xlim = c(0, 1),
     ylim = c(0, 1),      
)

sigma_topi = 0
for (i in 1:n){
  y = matrix(Y[i,],ncol=1)
  sigma_topi = sigma_topi+(y-ybar)%*%t(y-ybar)/n
}

g = matrix(0,nrow=n,ncol=n)
for(i in 1:n){
  for(j in 1:n){
    g[i,j] = t(matrix(Y[i,],ncol=1)-ybar) %*% inv(sigma_topi) %*% (matrix(Y[i,],ncol=1)-ybar)
  }
}

b1 = 0
for (i in 1:n){
  for (j in 1:n){
    b1 = b1+1/n**2*g[i,j]**3
  }
}

b2 = 0
for (i in 1:n){
  for (j in 1:n){
    if (i==j){
      b2 = b2+1/n*g[i,j]**2
    }
  }
}

pairs(Y)
