#import "/src/lib.typ": *

#show: thesis.with(
  title: "Thesis Title",
  author: "Author",
  college: "College",
  degree: "Doctor of Philosophy",
  submission-term: "Submission Term, Year",
  acknowledgements: none,
  abstract: include "../../template/content/abstract.typ",
  logo: image("../../template/assets/beltcrest.png", width: 4.5cm),
  show-toc: false,
  bib: bibliography(
    "../../template/content/bibliography.bib",
    title: "References",
  ),
)

#include "../../template/content/section01.typ"
