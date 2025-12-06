#let default-meta = (
  title: "Thesis Title",
  author: "Author",
  college: none,
  degree: "Doctor of Philosophy",
  submission-term: none,
  logo: "./assets/crest.pdf",
)

#let normalize-meta(meta) = {
  // Merge defaults
  let m = default-meta + meta

  // Validate metadata
  assert(m.title != none, message: "Thesis title must be provided") 
  assert(m.author != none, message: "Thesis author must be provided")

  m
}
