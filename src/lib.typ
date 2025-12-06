#import "./metadata.typ": normalize-meta
#import "./title.typ": title-page

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
    )
  )

  set par(
    justify: true,
    leading: 1.5em,
  )

  set text(
    font: "New Computer Modern",
    size: 12pt,
  )

  // ============== Title page ==============
  title-page(meta: meta)

  // ============== Frontmatter =============
  // Set latin page numbering
  set page(numbering: "i")
  counter(page).update(1)

  // Table of contents
  outline(
    title: "Contents",
    indent: auto,
    depth: 3,
  )

  // ============== Main body ==============
  // Page numbering
  set page(numbering: "1")
  counter(page).update(1)

  // Heading numbering
  set heading(numbering: "1.1.1")

  body
}
