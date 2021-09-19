#### Generation of graph for the 'Assignment 02'


## Encoding: windows-1250
## Created:  2021-09-16 FrK
## Edited:   2021-09-16 FrK


## NOTES:
# Instructions
# QUESTION 1: UNDERSTANDING   You succeed in measuring the extent to which the words used in a book's blurb predict the gender of the book's author. Let’s tell a story!
#
# Let's imagine that...
#
# In the 1940s, there were very few women writing monographs in a certain field. Blurbs on the back of women's books looked similar to those on men's books.
# By the 1970s, however, blurbs began to treat men and women authors in the field quite differently.
# By the 2000s, greater awareness of equitable treatment, and sensitivity to gendered language choices, led this effect to decline.
# Draw (sketch on paper* or digitally) a "signal strength" graph, using the example for the Old Bailey as a template [Chapter 1; 15:10]. Your graph should show the change in blurbs' capacity to signal the book author's gender, as described above. The graph should include: (1) labeled x and y axes (with words, briefly describe what each axis means), (2) a graph element corresponding to the signal, and (3) an indication of how the different time periods are represented in the graph. The graph does not need to be quantitatively accurate but should include some indication of the relevant years, in response to (3).
#
# * Drawings on paper can be photographed and uploaded. Please ensure your writing is legible in the photo.
#
# Grading Rubric
#
# Axes labelled descriptively: +2
# Graph element corresponding to signal: +2
# Indication of time periods: +1
# Total points: X out of five


library(tibble)
library(ggplot2)

years = 1940:2020
corrs = c(rep(0, 30), seq(0, 0.58, 0.02), seq(0.6, 0.30, -0.015))
df = tibble(years = years, correlation = corrs + runif(81, 0, 0.1))

ggplot(df, aes(years, correlation)) +
  geom_line() +
  geom_vline(xintercept = c(1970, 2000)) +
  theme_minimal()

