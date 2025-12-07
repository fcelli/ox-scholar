#import "./metadata.typ": normalize-meta
#import "./title.typ": title-page
#import "./abstract.typ": abstract-page

#let thesis(
  meta: (),
  body,
) = {
  // Normalize metadata
  let meta = normalize-meta(meta)

  // =========== Document settings ===========
  set document(
    title: meta.title,
    author: meta.author,
  )

  set page(
    paper: "a4",
    margin: (
      left: 3.1cm,
      top: 2.7cm,
      right: 3.1cm,
      bottom: 2.1cm,
    ),
  )

  set par(
    justify: true,
    leading: 1.5em,
  )

  set text(
    font: "New Computer Modern",
    size: 12pt,
  )

  // Suppress header, footers and numbering on
  // empty pages
  show selector.or(
    pagebreak.where(to: "odd"),
    pagebreak.where(to: "even"),
  ): set page(
    header: none,
    footer: none,
    numbering: none,
  )

  // Heading styling
  set heading(numbering: "1.1.1")
  show heading: it => {
    v(1em)
    it
    v(1em)
  }
  show heading.where(level: 1): it => {
    // Place level 1 headings on an odd page
    pagebreak(weak: true, to: "odd")
    align(
      right,
      block[
        #v(4cm)
        #let num = counter(heading).get().at(0)
        #if num > 0 {
          set text(
            size: 90pt,
            weight: 900,
            fill: gray,
          )
          num
        } \
        #set text(
          size: 24pt,
          weight: 100,
        )
        #it.body
        #v(1em)
      ],
    )
  }

  // ============== Title page ==============
  title-page(meta: meta)

  // ============== Frontmatter =============
  // Set latin page numbering
  set page(numbering: "i")
  counter(page).update(1)

  // Abstract
  if meta.abstract != none {
    abstract-page(meta.abstract)
  }

  // Table of contents
  if meta.show-toc {
    outline(
      title: "Contents",
      indent: 2em,
      depth: 3,
    )
    pagebreak(weak: true, to: "odd")
  }

  // ============== Main body ==============
  // Page numbering
  set page(numbering: "1")
  counter(page).update(1)

  body
}
