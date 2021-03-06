
<!-- README.md is generated from README.Rmd. Please edit that file -->

# owidGrapher

<!-- badges: start -->
<!-- badges: end -->

owidGrapher allows you to create interactive charts in the style of Our
World in Data by using their Grapher tool. It is currently experimental
and requires an internet connection, as the package makes calls to the
Our World in Data server. Expect the package to not be fully functional.

## Installation

owidGrapher is still in the early stages of development, you can install
it from github using:

``` r
devtools::install_github("piersyork/owidGrapher")
```

## Example

`owid_grapher()` creates graphs in the style of Our World in Data. The
output of `owid_grapher()` can be piped into `grapher_line()` to add a
line graph, into `grapher_map()` to add a world map, and into
`grapher_labels()` to add labels to the graph. The graph is shown in the
RStudio viewer, or when called in an RMarkdown html document is
displayed within the document. Currently this isn’t implemented as an
htmlwidget and requires an internet connection to function.

The below example uses the owidR package to import data from Our World
in Data and then plots it using owidGrapher.

``` r
library(owidR) # devtools::install_github("piersyork/owidR")
library(dplyr)

rights <- owid("human-rights-scores")

rights %>% 
  owid_grapher(x = year, y = `Human Rights Score (Schnakenberg & Fariss, 2014; Fariss, 2019)`, 
               entity = entity) %>% 
  grapher_line(selected = c("North Korea", "South Korea", "France", "United Kingdom", "United States")) %>% 
  grapher_map(palette = "RdYlGn", bins = c(-2, 0, 2, 4)) %>% 
  grapher_labels(title = "Human Rights Scores",
                 subtitle = "Values range from around -3.8 to around 5.4 (the higher the better)",
                 source = "Our World in Data; Schnakenberg and Fariss (2014); Fariss (2019)")
```
