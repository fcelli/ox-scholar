#import "/src/lib.typ" as my-package: *
#set page(fill: none)
// style thumbnail for light and dark theme
#let theme = sys.inputs.at("theme", default: "light")
#set text(white) if theme == "dark"

#let meta = (
  title: "Thesis Title",
  author: "Author",
  college: "College",
  degree: "Doctor of Philosophy",
  submission-term: "Submission Term, Year",
  logo: image("../template/assets/beltcrest.png", width: 4.5cm),
)

#title-page(meta: meta)
