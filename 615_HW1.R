title: "MA615_HW_1"
  

knitr::opts_chunk$set(echo = TRUE)


Load tidyverse, using the library() command so that you can use all the required functions such as ggplot. Load your data into R using the data() command.


library(tidyverse)

# call built-in data mtcars.
data(mtcars)


Select car models where mpg is less than 20 by creating another column and assigning them to a new data set.
We will call this mtcars_mpg2.



# Select only car models where mpg<20
mtcars_mpg2 <- mtcars[mtcars$mpg < 20,]
mtcars_mpg2
In this new data set, reduce the variables in your data and leave only the relevant ones such as mpg, cyl, disp, hp and gears.


# Reduce the variables to mpg, cyl, disp, hp, gears
mtcars_mpg2 <- mtcars_mpg2[, c(1,2,3,4,10)]
mtcars_mpg2


Read the handfunctions.R file so you can use it to calculate data summary statistics. We calculate data summary statistics of our new refined data frame with sum_special() and define them as a sp_out. This is what we will plot.
 
# read the R file hand_functions.R so that it can be used
# notice that with echo = TRUE 
source(file = "/Users/zarawaheed/Documents/BostonUniversity/MA615/Homework/Assignment_1/hand_functions.R", echo = TRUE)

# Now use the function from hand_functions.R

sp_out <- sum_special(mtcars_mpg2)

We use ggplot to visualise the data. Here we are comparing disp and mpg. We can define the shape, size and colour of the data points when we are using the geom_point() function.
# library(esquisse)
# 
# esquisser(data = mtcars_mpg2, viewer = "browser")

ggplot(mtcars_mpg2) +
  aes(x = disp, y = mpg) +
  geom_point(shape = "bullet", size = 4L, colour = "#B22222") +
  geom_smooth(span = 0.5) +
  theme_minimal()
