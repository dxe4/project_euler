# 10 | Summation of primes
<<<<<<< HEAD
=======
# 
>>>>>>> aa005b7... Added support to linebreaks if files are executed via command line.
# https://projecteuler.net/problem=10
# 
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.

<<<<<<< HEAD
is_prime <- function(nr) {
  if (!any(nr %% 2:ceiling(sqrt(nr)) == 0)) {
    return(T)
  }
  return(F)
=======
# Initialises an array to store the logical indices of the prime nrs
idxs <- !logical(2e6)
idxs[1] <- F # excludes 1

j <- 2L
while (j < sqrt(length(idxs))) { # we just need to check these cases
  idxs[seq(j*2, length(idxs), by = j)] = F # excludes all multiples of j
  primes <- as.numeric(which(idxs == T))
  j <- primes[primes > j][1] # updates j to the next prime
>>>>>>> aa005b7... Added support to linebreaks if files are executed via command line.
}

cands <- 3:(2e6-1)
print(sum(c(2, cands[which(sapply(cands, is_prime))])))
