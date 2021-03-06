% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diff.R
\name{redoc_diff}
\alias{redoc_diff}
\title{Compare changes in an edited redoc Word Document against the original}
\usage{
redoc_diff(docx, target = "original", current = "current",
  track_changes = "comments_only", block_missing = "comment",
  inline_missing = "omit", wrap = 80, mode = "sidebyside",
  context = "auto", tar.banner = NULL, cur.banner = NULL, ...)
}
\arguments{
\item{docx}{Path to an MS Word \code{.docx} file originally generated with
\code{redoc()} and since edited.}

\item{target, current}{Which versions of the document to compare. One of
"original", "roundtrip", or "current".}

\item{track_changes, block_missing, inline_missing}{Arguments passed to
\code{\link[=dedoc]{dedoc()}} to determine how to handle edits in the Word document.}

\item{wrap}{Width to wrap text lines when converting from docx to markdown.
If \code{NULL}, no wrapping.}

\item{mode, context, tar.banner, cur.banner, ...}{Arguments passed to
\code{\link[diffobj:diffFile]{diffobj::diffFile()}} to customize printing of the diff.}
}
\value{
A \code{\link[diffobj:diffPrint]{Diff}} object, which will be displayed in the RStudio
Viewer, a browser, or the console, depending on the context.
}
\description{
\code{redoc_diff()} produces a diff object comparing the current contents of a Word
document originally generated by \code{\link[=redoc]{redoc()}} to the original R markdown file
used to create it.
}
\details{
When an \code{.docx} file is created with \code{redoc()}, it internally stores the
original R Markdown file as well as a version that is round-tripped to
\code{.docx} and back. \code{redoc_diff()} de-renders the current \code{.docx} to R
Markdown (with \code{\link[=dedoc]{dedoc()}}) and compares against these versions.
}
