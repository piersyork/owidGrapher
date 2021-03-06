% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/owid_grapher.R
\name{owid_grapher}
\alias{owid_grapher}
\title{Create an Our World in Data style graph.}
\usage{
owid_grapher(data, x, y, entity)
}
\arguments{
\item{data}{The dataframe to be used in the graph}

\item{x}{The column to be displayed on the x axis. Currently only a column of years is supported.}

\item{y}{The column to be displayed on the y axis.}

\item{entity}{The column containing the entities included in the dataset, e.g. the country column.}
}
\value{
If executed from within an R script then the graph will be displayed within the viewer. If executed from within an RMarkdown file the graph will be displayed within the output document (only if the output is an html document).
}
\description{
Use any dataframe to create your own owid style graphs. The function currently requires an internet connection to work. **Warning:** This function is in very early stages of development, may not be fully functional and may undergo major changes.
}
\examples{
library(dplyr)

\dontrun{
owid_grapher(human_rights, x = year, y = score, entity = entity) \%>\%
  grapher_line() \%>\%
  grapher_map(palette = "RdYlGn") \%>\%
  grapher_labels(title = "Human Rights Score")
}
}
