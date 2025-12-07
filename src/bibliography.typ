#let bibliography-page(meta) = {
  set heading(
    numbering: none,
    outlined: true,
  )
  counter(heading).update(0)

  meta.bib

  pagebreak(weak: true, to: "odd")
}
