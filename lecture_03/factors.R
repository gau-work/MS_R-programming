
foo <- "This is a character string!"
foo
length(x=foo)

#

nchar(x=foo)

#

bar <- "23.3"
bar

#

bar*2

#

"alpha"=="alpha"
"alpha"!="beta"
c("alpha","beta","gamma")=="beta"

#

"alpha"<="beta"
"gamma">"Alpha"

#

"Alpha">"alpha"
"beta">="bEtA"

#

baz <- "&4 _ 3 **%.? $ymbolic non$en$e ,; "
baz


## 4.2.2 ##

qux <- c("awesome","R","is")
length(x=qux)
qux

#



firstname <- c("Liz","Jolene","Susan","Boris","Rochelle","Tim","Simon","Amy")
firstname
sex.num <- c(0,0,0,1,0,1,1,0)
sex.num
sex.char <- c("female","female","female","male","female","male","male","female")
sex.char
firstname
sex.num 
sex.char
#

sex.num.fac <- factor(x=sex.num)
sex.num.fac
sex.char.fac <- factor(x=sex.char)
sex.char.fac

#

levels(x=sex.num.fac)
levels(x=sex.char.fac)

#

levels(x=sex.num.fac) <- c("1","2")
sex.num.fac

#

sex.char.fac[2:5]
sex.char.fac[c(1:3,5,8)]

#

sex.num.fac=="2"

#

firstname[sex.char.fac=="male"]




mob <- c("Apr","Jan","Dec","Sep","Nov","Jul","Jul","Jun")

#

mob[2]
mob[3]
mob[2]<mob[3]





foo <- c(5.1,3.3,3.1,4)
bar <- c(4.5,1.2)
c(foo,bar)




#

Y <- c(0.53,5.4,1.5,3.33,0.45,0.01,2,4.2,1.99,1.01)

#

br <- c(0,2,4,6)
cut(x=Y,breaks=br)

#

cut(x=Y,breaks=br,right=F)

#

cut(x=Y,breaks=br,right=F,include.lowest=T)

#
br <- c(0,2,4,6)
lab <- c("Small","Medium","Large")
cut(x=Y,breaks=br,right=F,include.lowest=T,labels=lab)