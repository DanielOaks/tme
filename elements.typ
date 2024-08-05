#let sheet(
  title: "",
  paper: "a4",
  content
) = {
  set text(
    font: (
      "Helvetica",
      "Arial",
      "sans-serif",
    ),
    size: 13pt,
  )

  set document(
    title: title,
  )

  set page(
    paper: paper,
    margin: (
      top: 1.5cm,
      bottom: 1.5cm,
      x: 1.5cm,
    ),
    footer: [
      #align(center, 
        text(
          size: 8pt,
          title
        )
      )
    ]
  )

  content
}

#let titleEntry(content) = {
  v(2pt)
  text(
    size: 11pt,
    content + ":"
  )
  v(-7pt)
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

#let attribute(content, die: "") = {
  grid(
    columns: 2,
    gutter: .33cm,

    box(
      height: 1.1cm,
      width: 1.55cm,
      stroke: luma(60%),
      radius: .43cm,
      pad(
        x: 7pt,
        y: 5pt,
        stack(
          dir: ltr,
          align(left + horizon)[
            #text(
              luma(40%),
              {
                v(3pt)
                "d"
              }
            )
          ],
          align(left + horizon)[
            #text(
              18pt,
              {
                h(4.5pt)
                die
              }
            )
          ]
        )
      )
    ),
    text(
      size: 14pt,
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

#let avatar_box_size = (
  x: 5.5cm,
  y: 5cm,
)

#let characterSheetTop() = [
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
          "./tme_v2_-_light_bg.svg",
          width: 35%,
        )
      )
      v(5pt)

      titleEntry("Name")
      grid(
        columns: (1.5fr, 2fr),
        gutter: .7cm,

        titleEntry("Family"),
        titleEntry("Magic Affinity"),
        titleEntry("Vibe"),
        titleEntry("Magic Focus"),
      )
    },
  )

  // main content
  #grid(
    columns: (4cm, 3.8cm, auto),
    gutter: .75cm,

    // attributes
    {
      attribute("Strength")
      attribute("Speed")
      attribute("Style")
    },
    {
      attribute("Smarts")
      attribute("Guts")
      attribute("Magic", die: "6")
    },

    // space for notes
    {
      v(8pt)
      emptyLines(5)
    }
  )
]

#let extraCharacterBox(
  lines: 3,
) = {
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
          emptyLines(lines)
          v(3pt)
        }
      )
    }
  )
}
