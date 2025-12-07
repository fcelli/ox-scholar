#import "/src/lib.typ": *

#let meta = (
  title: "Thesis Title",
  author: "Author",
  college: "College",
  degree: "Doctor of Philosophy",
  submission-term: "Submission Term, Year",
  abstract: include "../../template/content/abstract.typ",
  logo: image("../../template/assets/beltcrest.png", width: 4.5cm),
  show-toc: false,
  bib: bibliography(
    "../../template/content/bibliography.bib",
    title: "References",
  ),
)

#show: thesis.with(meta: meta)

#include "../../template/content/section01.typ"
#include "../../template/content/section02.typ"
