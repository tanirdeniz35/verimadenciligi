
library("stats")
library("lsa")
# library("clusterSim")
# veri<-c(60,80,75,55,70,45)
# y<-c()
# enb=max(veri)
# enk=min(veri)

# for (i in 0:length(veri)) {
#    y[i]=(veri[i]-enk)/(enb-enk)
# }
# print (y)
#s=data.Normalization(veri,type="n4")
# x<-matrix(veri,byrow = TRUE,ncol=2,nrow = 3)
# print (x)
# oklid<-dist(x,method = "euclidean")
#print  (oklid^2)  karesel öklid 
# oklid<-dist(x,method = "minkowski",p=3)
# print  (oklid)

# a<-c(55,85,70)
# b<-c(65,55,75)
# korelasyon<-cor(a,b,method=c("pearson"))
# print(korelasyon)
# d<-(1-korelasyon)/2
# print(d)
# cumle1<-c(1,1,2,2,0,1)
# cumle2<-c(1,1,1,1,2,1)
# acisal<-cosine(cumle1,cumle2)
# print(acisal)
cat("\n")
veri<-matrix(c(14,17,19,12,9,35,39,41,33,28),nrow=5,ncol=2,byrow=FALSE)
print(veri)
S<-var(veri)
print(S)
M<-mahalanobis(c(18,40),apply(veri,2,mean),S)
M<-mahalanobis(veri,c(18,40),S)
M<-mahalanobis(veri,apply(veri,2,mean),S)
print(M)