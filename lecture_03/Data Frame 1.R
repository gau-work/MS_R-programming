mydata <- data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"),age=c(42,40,17,14,1),sex=factor(c("M","F","F","M","M")))
mydata

#

mydata[2,2]

#

mydata[3:5,3]

#

mydata[,c(3,1)]

#

mydata$age

#

mydata$age[2]

#

nrow(mydata)
ncol(mydata)
dim(mydata)

#

mydata$person

#

mydata <- data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"),age=c(42,40,17,14,1),sex=factor(c("M","F","F","M","M")),stringsAsFactors=FALSE)
mydata
mydata$person


## 

newrecord <- data.frame(person="Brian",age=7,sex=factor("M",levels=levels(mydata$sex)))
newrecord

#

mydata <- rbind(mydata,newrecord)
mydata

#

funny <- c("High","High","Low","Med","High","Med")
funny <- factor(x=funny,levels=c("Low","Med","High"))
funny

#

mydata <- cbind(mydata,funny)
mydata

#

mydata$age.mon <- mydata$age*12
mydata


## 

mydata$sex=="M"

#

mydata[mydata$sex=="M",]

#

mydata[mydata$sex=="M",-3]

#

mydata[mydata$sex=="M",c("person","age","funny","age.mon")]

#

mydata[mydata$age>10|mydata$funny=="High",]

#

mydata[mydata$age>45,]