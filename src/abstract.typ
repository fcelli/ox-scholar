#import "utils.typ": page-has-heading

#let abstract-page(body) = {
  set page(
    header: none,
    footer: context {
      if page-has-heading(here()) { none } else {
        set align(center)
        set text(style: "italic")
        counter(page).display()
      }
    },
  )

  heading(
    level: 1,
    numbering: none,
    outlined: false,
    "Abstract",
  )

  body

  pagebreak(weak: true, to: "odd")
}
