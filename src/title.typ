#let title-page(meta: ()) = {
  let font-size = 15pt
  let title-size = 20pt
  let author-size = 17pt
  let line-spacing = 1em

  let title-block = block[
    #set par(justify: false, leading: 0.5em)
    #set text(size: title-size, weight: 700)
    #meta.title
  ]

  let author-block = block[
    #text(author-size, meta.author) \
    #text(meta.college) \
    University of Oxford
  ]

  let degree-block = block[
    A thesis submitted for the degree of \
    #emph(meta.degree)
    #v(0.4cm)
    #text(meta.submission-term)
  ]

  // Title page style settings
  set page(numbering: none)
  set text(size: font-size)
  set par(leading: line-spacing)
  set align(center)

  // Content
  place(center + top, title-block, dy: 2.3cm)
  if meta.logo != none {
    place(center + horizon, figure(meta.logo), dy: -3.3cm)
  }
  place(center + horizon, author-block, dy: 3.2cm)
  place(center + bottom, degree-block, dy: -3cm)

  // Skip a page after title
  pagebreak(to: "odd")
}
