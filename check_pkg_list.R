library(jsonlite)
library(dplyr)

# pkgs we're tracking
using <- tolower(sort(readLines("packages.txt")))

# pkgs we're not going to track
donttrack <- tolower(sort(readLines("dont-track.txt")))

# combine
all <- unique(c(using, donttrack))

url <- "https://raw.githubusercontent.com/ropensci/roregistry/gh-pages/registry.json"
df <- fromJSON(url)
(pkgs <- tbl_df(df$packages) %>%
  # filter(on_cran, !cran_archived) %>%
  # filter(!cran_archived) %>%
  filter(name != "pleiades") %>%
  .$name %>% sort %>% tolower)

# compare
cat(pkgs[!pkgs %in% all], sep = "\n")
