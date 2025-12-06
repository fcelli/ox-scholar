#import "/src/lib.typ": *

#let meta = (
  title: "Thesis Title",
  author: "Author",
  college: "College",
  submission-term: "Submission Term, Year",
)

#show: thesis.with(meta: meta)

= Heading 1
== Heading 2
=== Heading 3
#lorem(100)
