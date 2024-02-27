# შემთხვევით შერჩეული კალკულატორი
type1 = c("r", "r", "g", "g")
type2 = c("r", "r", "r", "r", "r", "g")
boxes = append(rep(list(type1), 9), list(type2))
sims = 100000
red_type2_count = 0
for (i in 1:sims){
  s = sample(boxes, 1)[[1]]
  c = sample(s, 1)
  if(c == "r" & length(s) == 6) {
    red_type2_count = red_type2_count + 1 
  }
}

red_type2_count / sims





# ამოცანა მოთამაშის გაკოტრებაზე
money = 5
target = 20
sims = 10000
play = function() {
  while (money > 0 | money < target) {
    guess = sample(c(1, 0), 1)
    actual = sample(c(1, 0), 1)
    if (guess == actual) {
      money = money + 1
    } else {
      money = money - 1
    }
    
    if (money == 0) {
      return(-1)
    }
    if (money == target){
      return(1)
    }
  }
}

bankrupt_count = 0
for (i in 1:sims) {
  if (play() == -1) {
    bankrupt_count = bankrupt_count + 1
  } 
}

bankrupt_count / sims





# მონეტის აგდება
sims = 10000
t2_count = 0
for (i in 1:sims) {
  toss = sample(c(0, 1), replace = TRUE, size = 3, prob = c(2/3, 1/3))
  if (sum(toss) == 2) {
    t2_count = t2_count + 1 
  }
}

t2_count / sims






# ორი კამათელი
sims = 10000
count_of_5 = 0
count_of_less_than_4 = 0
for (i in 1:sims) {
  toss = sample(1:6, replace = TRUE, size = 2)
  if (sum(toss) == 5) {
    count_of_5 = count_of_5 + 1
  }
  if(sum(toss) <= 4) {
    count_of_less_than_4 = count_of_less_than_4 + 1
  }
}

count_of_5 / sims
count_of_less_than_4 / sims




# წიგნები თაროზე
books = c(rep("r", 4), rep("p", 3), "d")
sims = 10000
dict_count = 0
r_and_l_count = 0
for(i in 1:sims) {
  s = sample(books, size=3, replace=FALSE)
  if ("d" %in% s) {
    dict_count = dict_count + 1
  } 
  
  if (setequal(s, c("r", "r", "p"))) {
    r_and_l_count = r_and_l_count + 1 
  }
}

dict_count / sims
r_and_l_count / sims
