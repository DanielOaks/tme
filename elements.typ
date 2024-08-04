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

  content
}

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
                h(4pt)
                die
              }
            )
          ]
        )
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
