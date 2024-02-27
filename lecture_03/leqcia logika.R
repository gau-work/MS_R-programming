
foo <- TRUE
foo
bar <- F
bar

#

baz <- c(T,F,F,F,T,F,T,T,T,F,T,F)
baz
length(x=baz)

#

qux <- matrix(data=baz,nrow=3,ncol=4,byrow=foo)
qux


##
#  == Equal to
#     != Not equal to
#    > Greater than
#   < Less than
## >= Greater than or equal to
##   <= Less than or equal to
##

1==2
1>2
(2-1)<=2
1!=(2+3)

#

foo <- c(3,2,1,4,1,2,1,-1,0,3)
bar <- c(4,1,2,1,1,0,0,3,0,4)
length(x=foo)==length(x=bar)

#

foo==bar
foo<bar
foo<=bar
foo<=(bar+10)

#

baz <- foo[c(10,3)]
baz

#

foo>baz

#

foo<3

#

foo.mat <- matrix(foo,nrow=5,ncol=2)
foo.mat
bar.mat <- matrix(bar,nrow=5,ncol=2)
bar.mat

#

foo.mat<=bar.mat
foo.mat<3

#

qux <- foo==bar
qux
any(qux)
all(qux)

#

quux <- foo<=(bar+10)
quux
any(quux)
all(quux)


#

FALSE||((T&&TRUE)||FALSE)
!TRUE&&TRUE
(T&&(TRUE||F))&&FALSE
(6<4)||(3!=1)

#

foo <- c(T,F,F,F,T,F,T,T,T,F,T,F)
foo

#

bar <- c(F,T,F,T,F,F,F,F,T,T,T,T)
bar

#

foo&bar
foo|bar

#

foo&&bar
foo||bar


#

TRUE+TRUE
FALSE-TRUE
T+T+F+T+F+F+T

#

1&&1
1||0
0&&1




myvec <- c(5,-2.3,4,4,4,6,8,10,40221,-8)

#

myvec[c(F,T,F,F,F,F,F,F,F,T)]

#

myvec<0

#

myvec[myvec<0]

#

myvec[c(T,F)]

#

myvec[(myvec>0)&(myvec<1000)]

#

myvec[myvec<0] <- -200
myvec

#

which(x=c(T,F,F,T,T))

#

which(x=myvec<0)

#

myvec[-which(x=myvec<0)]

#

A <- matrix(c(0.3,4.5,55.3,91,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)
A

#

A[c(T,F,F),c(F,T,T)]

#

A<1

#

A[A<1] <- -7
A

#

A>25

#

which(x=A>25)

#
