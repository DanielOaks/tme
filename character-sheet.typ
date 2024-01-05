#let title = "Talking Magic Equines 1e Solo Character Sheet"

#let avatar_box_size = (
  x: 5.5cm,
  y: 5cm,
)

#set text(
  font: (
    "Helvetica",
    "Arial",
    "sans-serif",
  ),
  size: 13pt,
)

#set document(title: [title])

#set page(
  paper: "a4",
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    x: 1.5cm,
  ),
  footer: [
    #align(center, 
      text(
        size: 11pt,
        title
      )
    )
  ]
)

#let titleEntry(content) = {
  content + ":"
  v(-6pt)
  line(
    length: 100%,
    stroke: luma(20%),
  )
}

#let smallTitleEntry(content) = {
  v(-1pt)
  text(
    size: 10pt,
    content + ":"
  )
  v(-7pt)
  line(
    length: 100%,
    stroke: luma(20%),
  )
}

#let attribute(content) = {
  grid(
    columns: 2,
    gutter: .33cm,

    box(
      height: 1.1cm,
      width: 1.55cm,
      stroke: luma(60%),
      radius: .43cm,
      text(
        luma(40%),
        {
          v(12pt)
          h(6pt)
          "d"
        }
      )
    ),
    text(
      size: 16pt,
      align(start + horizon, content)
    )
  )
}

#let emptyLines(count) = {
  let n = 0
  while n < count {
    n += 1
    v(11pt)
    line(
      length: 100%,
      stroke: luma(60%)
    )
  }
}

#let extraCharacterBox() = {
  box(
    width: 100%,
    stroke: luma(30%),
    radius: .5cm,
    {
      v(3.5cm)
      line(
        length: 100%,
        stroke: luma(30%),
      )
      box(
        inset: .4cm,
        {
          v(-10pt)
          emptyLines(3)
          v(3pt)
        }
      )
    }
  )
}

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