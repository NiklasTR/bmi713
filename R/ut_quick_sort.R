ut_quick_sort <- function(seed = 42){
  set.seed(seed)
  test <- c(runif(100, -100, 100) %>% round(),
            runif(100, -100, 100),
            0)
  test_result <- quick_sort(test)
  for(i in 2:length(test_result)-1){
      stopifnot(test_result[i] >= test_result[i-1])
  }
  for(i in 2:length(test_result)-1){
    stopifnot(test_result[i] <= test_result[i+1])
  }
  stopifnot(length(test) == length(test_result))
  return(TRUE)
}




