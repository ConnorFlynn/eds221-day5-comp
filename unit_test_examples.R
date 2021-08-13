# Testing testthat

install.packages("testthat")
install.packages("devtools")
install.packages("remotes")

library(testthat)
library(devtools)
library(remotes)


# Function to Find mean of all columns, maximum column mean, 
# minimum column mean and returns mean values in a vector
# (min_mean_value, max_mean_value)

# apply(x = df, MARGIN = 2, FUN = mean, na.rm = TRUE)



#' Find Mean Range
#' 
#' This is a function that allows the user to find the min and max mean of a column
#'
#' @param df dataframe name
#'
#' @return
#' @export
#'
#' @examples
mean_range <- function(df) {
  col_means <- apply(df, 2, mean, na.rm = TRUE)
  col_mean_max <- max(col_means)
  col_mean_min <- min(col_means)
  return(c(col_mean_min, col_mean_max))
}

mean_range(mtcars)


expect_length(mean_range(df = mtcars), 2)

# If nothing happens your test function worked

expect_true(mean_range(mtcars)[1] < mean_range(mtcars)[2])

expect_type(mean_range(mtcars), "double")
