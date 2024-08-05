#import "elements.typ": sheet, extraCharacterBox

#let title = "Talking Magic Equines 1e Extras Sheet"

#sheet(
  title: title,
  paper: "a4",
  [
// top matter
#align(
  end,
  image(
    "./tme_v2_-_light_bg.svg",
    height: .9cm,
  )
)
#v(3pt)

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
