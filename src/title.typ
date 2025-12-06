#let title-page(meta: ()) = {
  let font-size = 15pt
  let title-size = 20pt
  let author-size = 17pt
  let line-spacing = 1em
  let university = "University of Oxford"

  set page(
    numbering: none,
    margin: (
      left: 3.1cm,
      top: 2.7cm,
      right: 3.1cm,
      bottom: 2.1cm,
    )
  )

  set text(
    size: font-size,
  )

  set par(
    leading: line-spacing,
  )

  set align(center)

  // Content
  v(2.3cm)
  block[
    #set par(justify: false, leading: 0.5em)
    #set text(size: title-size, weight: 700)
    #meta.title
  ]
  v(2.5cm)
  if meta.logo != none {
    figure(meta.logo)
    v(2cm)
  }
  block[
    #text(author-size, meta.author) \
    #text(meta.college) \
    #text(university)
    #v(2cm)
    A thesis submitted for the degree of \
    #emph(meta.degree)
    #v(0.4cm)
    #text(meta.submission-term)
  ]

  pagebreak(to: "odd")
}
