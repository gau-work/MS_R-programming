
df = read.csv("./lecture_08-midterm/fl_student_survey.csv", header=TRUE, sep=",", dec=".")

head(df)

# 1
intervals = cut(df$age, breaks = c(20, 25, 30, 39, 72), labels = c('A', 'B', 'C', 'D'), include.lowest = T, right = F)
df$category = intervals

mean(df[df$category == 'B',]$distance_residence) - mean(df[df$category == 'A',]$distance_residence)


# 2
mean(df[df$category == "B" & df$gender == "m",]$college_GPA) - 
  mean(df[df$category == "A" & df$gender == "f",]$college_GPA)


# 3
nrow(df[df$category == "A" & df$gender == "m" & df$political_affiliation == "r",]) / nrow(df)


# 4
nrow(df[df$religiosity == 0 & df$life_after_death == "y",]) / nrow(df[df$religiosity == 0,])

# 5
nrow(df[df$gender == "f" & df$religiosity == 0 & df$life_after_death == "y",]) / nrow(df[df$gender == "f" & df$religiosity == 0,])


# 6
nrow(df[df$political_affiliation != "r" & df$gender == "f" & df$abortion_legalize == "y",]) / nrow(df[df$political_affiliation != "r" & df$gender == "f", ])


# 7
nrow(df[df$abortion_legalize == "y" & df$gender == "f" & df$political_affiliation == "r",]) / nrow(df[df$abortion_legalize == "y",])


# 8
box = c(rep(1, 5), rep(0, 4))
orange_count = 0

iterations = 1000
for (x in 1:iterations) {
  took = sample(box, 3, replace = FALSE)
  if(sum(took) == 3) {
    orange_count = orange_count + 1 
  }
}

orange_count / iterations


# 9
nums = 1:10
iterations = 100000
match_count = 0
for (x in 1:iterations) {
  choices = sample(nums, size = 3, replace = TRUE)
  if (length(unique(choices)) < 3) {
    match_count = match_count + 1 
  }
}

match_count / iterations
