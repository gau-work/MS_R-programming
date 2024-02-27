quick_sort <- function(v) {
  if(length(v) <= 1) return(v)
  
  pivot_idx = sample(seq_along(v), 1)
  pivot <- v[pivot_idx]
  
  rest <- v[-pivot_idx]
  
  left <- quick_sort(rest[rest < pivot])
  right <- quick_sort(rest[rest >= pivot])
  
  return(c(left, pivot, right))
}


quick_sort(c(1, 10, 5, 6, 2, 3, 8, 1, 10))
