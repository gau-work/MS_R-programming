df = read.csv("fl_student_survey.csv",header=TRUE,sep=",",dec=".")

head(df)

# 1
tv_intervals = cut(df$TV, breaks = c(0, 4, 7, 10, 38), labels = c('A', 'B', 'C', 'D'), include.lowest = T, right = F)
sports_intervals = cut(df$sports, breaks = c(0, 7, 9, 17), labels = c('k', 'm', 'n'), include.lowest = T, right = F)

df$tv_cat = tv_intervals
df$sports_cat = sports_intervals

min(df[df$tv_cat == 'A' & df$sports_cat == 'n',]$distance_residence)


# 2
male_k = df[df$gender == "m" & df$sports_cat == "k",]
male_k_republican = male_k[male_k$political_affiliation == "r",]

nrow(male_k_republican) / nrow(male_k) * 100


# 3
religious_m = df[df$religiosity == 0 & df$sports_cat == "m",]
religious_m_afterlife = religious_m[religious_m$life_after_death == "y", ]

nrow(religious_m_afterlife) / nrow(religious_m) * 100


# 4
female_m = df[df$gender == "f" & df$sports_cat == "m", ]
female_m_abortion_legalize = female_m[female_m$life_after_death == "y",]

nrow(female_m_abortion_legalize) / nrow(female_m) * 100


# 5
female_republican = df[df$gender == "f" & df$political_affiliation == "r", ]
female_republican_abortion_legalize = female_republican[female_republican$abortion_legalize == "y", ]

nrow(female_republican_abortion_legalize) / nrow(female_republican) * 100


# 6
tv_a_index = df$tv_cat == "A"
non_republican_male_index = df$political_affiliation != "r" & df$gender == "m"
sports_n_female = df$gender == "f" & df$sports_cat == "n"

selection = df[tv_a_index & non_republican_male_index | sports_n_female, ]

selection_abortion_legalize = selection[selection$abortion_legalize == "y", ]

nrow(selection_abortion_legalize)


# 7 - 8
box_a = c(rep("red", 6), rep("green", 2))
box_b = c(rep("red", 4), rep("green", 3))

red_count = 0
red_b_count = 0

sims = 100000
for(i in 1:sims) {
  dice = sample(1:6, 1)
  if (dice %% 2 == 0) {
    ball = sample(box_a, 1)
    box = "a"
  } else {
    ball = sample(box_b, 1)
    box = "b"
  }

  if (ball == "red") {
    red_count = red_count + 1

    if(box == "b") {
      red_b_count = red_b_count + 1
    }
  }
}

paste("ამოღებული ბურთი წითელია: ", red_count / sims)
paste("ბურთი ამოღებული იყო B ყუთიდან, თუ ცნობილია, რომ ბურთი წითელია ", red_b_count / red_count)

