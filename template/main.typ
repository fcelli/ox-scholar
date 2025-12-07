#import "@preview/oxford-scholar:0.1.0": *

#let meta = (
  title: "Thesis Title",
  author: "Author",
  college: "College",
  submission-term: "Submission Term, Year",
  abstract: include "content/abstract.typ",
  logo: image("assets/crest.png"),
  show-toc: true,
)

#show: thesis.with(meta: meta)

#include "content/section01.typ"
#include "content/section02.typ"
