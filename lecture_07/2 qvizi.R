head(iris)

## 1
# Sepal.Width -ის საშუალოს
# (საშუალოს გამოთვლით mean ფუნქციით) Petal.Length -ის საშუალო ტოლია:
df = iris
mean(df$Sepal.Width) - mean(df$Petal.Length)

## 2
# Versicolor -თვის Sepal.Width -ის საშუალოს (საშუალოს გამოთვლით mean ფუნქციით) 
# გამოკლებული virginica-თვის Sepal.Width -ის საშუალო ტოლია:

mean(df[df$Species == 'versicolor',]$Sepal.Width) - 
  mean(df[df$Species == 'virginica',]$Sepal.Width)

## 3
# დააჯგუფეთ Versicolor -თვის Sepal.Width -ის virginica-თვის Sepal.Width -ის მონაცემებ
# ი. დაჯგუფებული მონაცემების მედიან
# ა (მედიანა გამოითვლება median ფუნქციით) ტოლია

median(df[df$Species == 'versicolor',]$Sepal.Width) - median(df[df$Species == 'virginica',]$Sepal.Width)

## 4
# Sepal.Width -ის სვეტი დაყავით კატეგორიების მიხედვი
# თ. იმ მონაცემებს, რომლებიც ჩავარდებიან [2-2.4) ინტერვალშ
# ი, მიანიჭეთ A კატეგორია. მონაცემებს, რომლებიც ჩავარდებიან [2.4-3.5) ინტერვ
# ალში მიანიჭეთ B კატეგორია. მონაცემებს, რომლებიც ჩავარდებიან [3.5-4.5) ინტერვ
# ალში მიანიჭეთ C კატეგორია. A კატეგორიის Petal.Width -ის საშუალოს გამოაკელით
# B კატეგორიის Petal.Width -ის საშუალო. სწორი პასუხია
sort(iris$Sepal.Width)
lab <- c('A','B','C')
df$category <- cut(df$Sepal.Width, breaks = c(2, 2.4, 3.5, 4.5),right=F,include.lowest=T, labels=lab)
mean(df[df$category == "A", ]$Petal.Widt) - mean(df[df$category == "B", ]$Petal.Widt)
## pasuxi 

## 5

#Petal.Length-ის სვეტი დაყავით კატეგორიების მიხედვი
#თ. იმ მონაცემებს, რომლებიც ჩავარდებიან [1- 1.7) ინტერვალში, მიანიჭეთ A კატეგო
#რია. მონაცემებს, რომლებიც ჩავარდებიან [1.7- 5.5) ინტერვალში მიანი
#ჭეთ B კატეგორია. მონაცემებს, რომლებიც ჩავარდებიან [5.5-6) ინტერვალში მიან
#იჭეთ C კატეგორია. გამოიტანეთ მონაცემები, რომლებიც ეკუთვნიან B კატეგორიას
#და setosa-ს. ამ მონაცემებში Sepal.Length -ის მაქსიმუმი უდრის
sort(iris$Petal.Length)

lab <- c('A','B','C')
df$category <- cut(df$Petal.Length,breaks = c(1,1.7,5.5,6),right=F,include.lowest=T,labels=lab)
max(df[df$Species == 'setosa' & df$category == "B", ]$Sepal.Length)
