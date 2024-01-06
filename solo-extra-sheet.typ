#import "elements.typ": sheet, extraCharacterBox

#let title = "Talking Magic Equines 1e Solo Extras Sheet"

#sheet(
  title: title,
  paper: "a4",
  [
// top matter
#align(
  end,
  image(
    "./tme - light bg.svg",
    height: 1.2cm,
  )
)
#v(-10pt)

// character snippets
#grid(
  columns: 3,
  gutter: .65cm,
  column-gutter: .65cm,
  extraCharacterBox(lines: 4),
  extraCharacterBox(lines: 4),
  extraCharacterBox(lines: 4),
  extraCharacterBox(lines: 4),
  extraCharacterBox(lines: 4),
  extraCharacterBox(lines: 4),
  extraCharacterBox(lines: 4),
  extraCharacterBox(lines: 4),
  extraCharacterBox(lines: 4),
)
  ]
)
