#import "/src/lib.typ": *

#let meta = (
  title: "Thesis Title",
  author: "Author",
  college: "College",
  submission-term: "Submission Term, Year",
  abstract: include "../../template/content/abstract.typ",
  logo: image("../../template/assets/crest.png"),
  show-toc: false,
)

#show: thesis.with(meta: meta)

#include "../../template/content/section01.typ"
#include "../../template/content/section02.typ"
