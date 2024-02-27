# a
dframe <- data.frame(
  person=c("Stan", "Francine", "Steve", "Roger", "Hayley", "Klaus"),
  sex = factor(c("M", "F", "M", "M", "F", "M"), levels = c("M", "F")),
  funny = factor(c("High", "Med", "Low", "High", "Med", "Med"), levels = c("Low", "Med", "High"))
)

# b
dframe$age = c(41, 41, 15, 1600, 21, 60)

# c
dframe[,c("person", "age", "sex", "funny")]


#d
mydata <- data.frame(person=c("Peter","Lois","Meg","Chris","Stewie"),age=c(42,40,17,14,1),sex=factor(c("M","F","F","M","M")),stringsAsFactors=FALSE)
newrecord <- data.frame(person="Brian",age=7,sex=factor("M",levels=levels(mydata$sex)))
mydata <- rbind(mydata,newrecord)
funny <- c("High","High","Low","Med","High","Med")
funny <- factor(x=funny,levels=c("Low","Med","High"))
mydata <- cbind(mydata,funny)
mydata$age.mon <- mydata$age*12
mydata2 <- mydata[,-5]


# e
mydataframe <- rbind(dframe, mydata2)
mydataframe


# f
mydataframe[mydataframe$sex=="F" & mydataframe$funny == c("Med", "High"), c("person", "age")]
