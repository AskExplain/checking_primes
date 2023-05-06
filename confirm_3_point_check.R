
three_point_check <- function(a){
  
  d <- 1
  b <- (a - d) / 2
  c <- a - b - d
  checking_val <- max(b,c)
  
  count <- 0
  
  while(T){

    if (count %% 2 == 0){
      b <- b - 1
      d <- d + 1
    } 
    if (count %% 2 == 1){
      c <- c - 1
      d <- d + 1
    }

    b_store <- b %% d # == 0 if divisible
    c_store <- c %% d # == 0 if divisible
    
    if (b_store == 0 && c_store == 0){ 
      verdict_param <- "is not prime"
      break
    }
    
    if (checking_val <= d){ 
      verdict_param <- "is prime"
      break
    }
    
    count <- count + 1
    
  }

  
  return(verdict_param)
  
}



three_point_check(171921) # not prime
three_point_check(171923) # prime




