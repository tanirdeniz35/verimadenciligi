library("clusterSim")
x<-c(251,148,166,244,472,356,379)
y<-c()
std=sd(x)
m=mean(x)

for (i in 0:length(x)) {
   y[i]=(x[i]-m)/std
}

s=data.Normalization(x,type="n1")