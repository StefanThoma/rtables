% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tt_export.R
\name{export_as_rtf}
\alias{export_as_rtf}
\title{Export table to RTF}
\usage{
export_as_rtf(
  tt,
  file = NULL,
  colwidths = propose_column_widths(tt),
  page_type = "letter",
  pg_width = page_dim(page_type)[if (landscape) 2 else 1],
  pg_height = page_dim(page_type)[if (landscape) 1 else 2],
  landscape = FALSE,
  margins = c(bottom = 4, left = 4, top = 4, right = 4),
  font_size = 8,
  font_family = "Courier",
  ...
)
}
\arguments{
\item{tt}{TableTree (or related class). A TableTree object representing a
populated table.}

\item{file}{character(1). File to write.}

\item{colwidths}{numeric vector. Column widths for use with vertical pagination.}

\item{page_type}{character(1).   Name   of  a  page  type.   See
`page_types`.   Ignored when  `pg_width` and  `pg_height`
are set directly.}

\item{pg_width}{numeric(1). Page width in inches.}

\item{pg_height}{numeric(1). Page height in inches.}

\item{landscape}{logical(1). Should the  dimensions of `page_type`
be inverted  for landscape?  Defaults to  `FALSE`, ignored when
`pg_width` and `pg_height` are set directly.}

\item{margins}{ A numeric vector interpreted in the same way
    as \code{par(mar)} in base graphics. }

\item{font_size}{numeric(1). Fontsize, defaults to 12.}

\item{font_family}{character(1). Name of a font family. An error
will be thrown if the family named is not monospaced. Defaults
to Courier.}

\item{...}{Passed directly to \code{\link{paginate_table}}}
}
\description{
Experimental export to the RTF format.
}
\details{
RTF export occurs by via the following steps

\itemize{
\item{the table is paginated to the page size (Verticay and horizontally)}
\item{Each separate page is converted to aMatrixPrintForm and from there to RTF-encoded text}
\item{Separate rtfs text chunks are combined and written out as a single RTF file}
}

Conversion of \code{MatrixPrintForm} objects to RTF is done via \code{\link[formatters:mpf_to_rtf]{formatters::mpf_to_rtf()}}.
}
