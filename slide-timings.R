# based on the 5:01 recording submitted for NormConf, here I note the time of
# each slide transition
# the goal is to determine how long I spent on each slide
# I then used those timings to automatically advance (most) slides when I
# re-delivered this as a 5-minute lightning talk at 2023 January Posit work week

library(tidyverse)
library(hms)

dat <- tribble(
  ~min, ~sec, ~slide, ~desc,
  0, 22, 1, "Intro slide",
  0, 46, 2, "Bourne clip",
  1,  3, 3, "Pick a convention",
  1, 23, 4, "Examples of good vs bad",
  1, 34, 5, "Machine readable, human readable, sort well",
  1, 42, 6, "globbing",
  2, 17, 7, "regular expressions, delimiters",
  2, 25, 8, "thou shalt",
  2, 37, 9, "machine readable summary",
  2, 49, 10, "examples to set up slug",
  3, 03, 11, "embrace the slug",
  3, 14, 12, "human readable summary",
  3, 38, 13, "(chrono)logical sorting examples",
  3, 56, 14, "left padding",
  4, 10, 15, "map of countires with stupid date conventions",
  4, 24, 16, "ISO 8601",
  4, 42, 17, "sorting summary",
  5, 00, 18, "conclusion"
) |>
  mutate(tm = hms(minutes = min, seconds = sec))

dat <- dat |>
  mutate(duration = c(sec[1], diff(tm)))
sum(dat$duration) # 300 = 5 * 60

dat |>
  select(slide, duration, desc)
