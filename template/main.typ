#import "@preview/oxford-scholar:0.1.0": *

#let meta = (
  title: "Thesis Title",
  author: "Author",
  college: "College",
  degree: "Doctor of Philosophy",
  submission-term: "Submission Term, Year",
  abstract: include "content/abstract.typ",
  logo: image("assets/beltcrest.png", width: 4.5cm),
  show-toc: true,
)

#show: thesis.with(meta: meta)

#include "content/section01.typ"
#include "content/section02.typ"
