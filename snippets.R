# used interactively when preparing code for slides

library(tidyverse)
library(withr)

local_dir("~/research/haynes/data/2014-03-21/")
list.files()

# ls *Plasmid*

list.files(pattern = "Plasmid")

filenames <- list.files(pattern = "Plasmid")

stringr::str_split_fixed(filenames, "[_\\.]", 5)

tibble(filenames) |>
  separate_wider_delim(
    filenames,
    delim = regex("[_\\.]"),
    names = c("date", "assay", "line", "well", NA)
  )

deferred_run()

local_dir("~/research/bohlmann/White_Pine_Weevil_DE/analysis/")
list.files()

writeLines(list.files())
# 01_marshal-data.md
# 01_marshal-data.r
# 02_pre-dea-filtering.md
# 02_pre-dea-filtering.r
# 03_dea-with-limma-voom.md
# 03_dea-with-limma-voom.r
# 04_explore-dea-results.md
# 04_explore-dea-results.r
# 90_limma-model-term-name-fiasco.md
# 90_limma-model-term-name-fiasco.r
# figure
# helper01_load-counts.r
# helper02_load-exp-des.r
# helper03_load-focus-statinf.r
# helper04_extract-and-tidy.r
# Makefile
# tmp.txt

deferred_run()

local_dir("~/resources/system-setup/")
writeLines(list.files(pattern = "[.]R$"))
# 2015-11-09_package-installation.R
# 2015-12-23_package-installation.R
# 2016-05-21_package-installation.R
# 2016-07-30_package-installation.R
# 2017-09-05_package-installation.R
# 2018-06-29_package-installation.R
# 2019-02-19_repair-default-library.R
# 2019-06-25_package-installation.R
# 2020-06-06_record-existing-pkgs.R
# 2021-06-15_git-config-analysis.R
# 2021-07-19_fix-https-git-urls.R
# 2021-08-29_git-default-branch-analysis.R
# 2022-08-11_rebuilding-my-user-library.R
# 2022-08-11_record-existing-pkgs.R
