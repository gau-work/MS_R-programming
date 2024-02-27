grades = c(
  42,28,37,45,58,41,39,52,40,34,25,43,49,45,48,42,44,44,38,41,41,38,37,50,40,31,
  50,41,46,37,40,38,26,41,41,44,22,32,35,41,38,47,52,48,55,41,28,26,41,44,55,36,
  34,48,43,46,43,42,28,41,38,41,65,42,46,34,38,40,39,40,39,36,25,31,40,39,38,45,
  70,36,44,39,42,44,50,46,37,60,60,47,36,73,43,46,37,46,34,29,40,37
)


ni = 10
i = round((max(grades) - min(grades)) / ni)

breaks = seq(min(grades) - 2, max(grades), i)
breaks = c(breaks, breaks[length(breaks)] + i)

df = transform(table(cut(grades, breaks = breaks, include.lowest = TRUE, right = FALSE)))
df$rFreq  = df$Freq / length(grades)
df$pFreq  = df$rFreq * 100
df$cFreq  = cumsum(df$Freq)
df$crFreq = cumsum(df$rFreq)
df$cpFreq = cumsum(df$pFreq)
df


# df$mid = (breaks[-length(breaks)] + breaks[-1])/2
names(df)[names(df) == 'Var1'] <- 'stated_limits'

df$real_limit.lower = breaks[-length(breaks)] - .5
df$real_limit.upper = breaks[-1] - .5
df$mid = (df$real_limit.lower + df$real_limit.upper)/2
df


p_rank = function(x) {
  v = df[df$real_limit.lower < x & df$real_limit.upper > x,]
  cfl = df[as.integer(rownames(v)) - 1,]$cFreq
  if (length(cfl) == 0) {
    cfl = 0
  }
  
  xl = v$real_limit.lower
  fi = v$Freq
  px = ((cfl + ((x - xl) / i) * fi) / length(grades)) * 100
  return(round(px))
}

p_rank(41)


percentile = function(p)  {
  v = df[df$cFreq > p,][1,]
  xl = v$real_limit.lower
  cfl = df[as.integer(rownames(v)) - 1,]$cFreq
  if (length(cfl) == 0) {
    cfl = 0
  }
  fi = v$Freq
  xp = xl + ((p/100 * length(grades) - cfl) / fi) * i
  return(round(xp))
}

percentile(49)
  


# df[order(df$stated_limits, decreasing = TRUE),]
