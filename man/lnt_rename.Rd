% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LexisNexisTools.R
\name{lnt_rename}
\alias{lnt_rename}
\title{Assign proper names to LexisNexis files}
\usage{
lnt_rename(
  x,
  encoding = "UTF-8",
  recursive = FALSE,
  report = TRUE,
  simulate = TRUE,
  verbose = FALSE
)
}
\arguments{
\item{x}{Can be either a character vector of LexisNexis file name(s),
folder name(s) or can be left blank (see example).}

\item{encoding}{Encoding to be assumed for input files. Defaults to UTF-8
(the LexisNexis standard value).}

\item{recursive}{A logical flag indicating whether subdirectories are
searched for more files.}

\item{report}{A logical flag indicating whether the function will return a
report which files were renamed.}

\item{simulate}{Should the renaming be simulated instead of actually done?
This can help prevent accidental renaming of unrelated files which
happen to be in the same directory as the files from 'LexisNexis'.}

\item{verbose}{A logical flag indicating whether information should be
printed to the screen.}
}
\description{
Give proper names to files downloaded from 'LexisNexis' based on search
term and period retrieved from each file cover page. This information is not
always delivered by LexisNexis though. If the information is not present in
the file, new file names will be empty.
}
\details{
Warning: This will rename all supported files in a give folder.
}
\examples{
\dontrun{
# Copy sample file to current wd
lnt_sample()

# Rename files in current wd and report back if successful

report.df <- lnt_rename(
  recursive = FALSE,
  report = TRUE
)


# Or provide file name(s)
my_files <- list.files(
  pattern = ".txt", full.names = TRUE,
  recursive = TRUE, ignore.case = TRUE
)
report.df <- lnt_rename(
  x = my_files,
  recursive = FALSE,
  report = TRUE
)

# Or provide folder name(s)
report.df <- lnt_rename(x = getwd())

report.df
}
}
\author{
Johannes B. Gruber
}
\keyword{LexisNexis}
