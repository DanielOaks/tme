#import "elements.typ": sheet, titleEntry, attribute, emptyLines, extraCharacterBox

#let title = "Talking Magic Equines 1e Solo Character Sheet"

#let avatar_box_size = (
  x: 5.5cm,
  y: 5cm,
)

#sheet(
  title: title,
  paper: "a4",
  [
// header
#grid(
  columns: (avatar_box_size.x, auto),
  gutter: .75cm,

  // avatar box
  rect(
    width: avatar_box_size.x,
    height: avatar_box_size.y,
    stroke: luma(30%),
    radius: .4cm,
  ),

  // top matter
  {
    align(
      end,
      image(
        "./tme - light bg.svg",
        width: 50%,
      )
    )
    v(-10pt)

    titleEntry("Name")
    grid(
      columns: 2,
      gutter: .7cm,

      titleEntry("Family"),
      titleEntry("Magic"),
    )
    titleEntry("Vibe")
  },
)

// main content
#grid(
  columns: (3.5cm, 4.5cm, auto),
  gutter: .75cm,

  // attributes
  {
    attribute("Bam")
    attribute("Speed")
    attribute("Style")
  },
  {
    attribute("Smarts")
    attribute("Guts")
    attribute("Magic / Friendship")
  },

  // space for notes
  {
    v(8pt)
    emptyLines(5)
  }
)

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
