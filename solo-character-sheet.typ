#import "elements.typ": sheet, characterSheetTop, extraCharacterBox,

#let title = "Talking Magic Equines 1e Solo Character Sheet"

#sheet(
  title: title,
  paper: "a4",
  [
#characterSheetTop()

// separator
#v(11pt)
#align(
  center,
  line(
    length: 6cm,
    stroke: (
      thickness: 7pt,
      paint: luma(87%),
      cap: "round",
    ),
  )
)
#v(7pt)

// extra character snippets
#grid(
  columns: 3,
  gutter: .65cm,
  column-gutter: .65cm,
  extraCharacterBox(),
  extraCharacterBox(),
  extraCharacterBox(),
  extraCharacterBox(),
  extraCharacterBox(),
  extraCharacterBox(),
)
  ]
)
