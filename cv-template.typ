// Shared CV layout. Requires Typst 0.15 or later; no external packages.
// Keep this file beside cv_en.typ and cv_de.typ.

#let accent = rgb("235a81")
#let muted = rgb("53606a")
#let no-links = sys.inputs.at("nolinks", default: "0") == "1"
// Public build for the GitHub page: hides the relocation note and the job-search sentence.
//   typst compile --input public=1 cv_en.typ cv_en.pdf
#let public = sys.inputs.at("public", default: "0") == "1"

#let cv-link(destination, body) = text(fill: accent, if no-links {
  body
} else {
  link(destination, body)
})

#let section(body) = heading(level: 1, numbering: none, outlined: false, body)

#let rows(..items) = {
  for item in items.pos() {
    let (label, value) = item
    block(above: 0pt, below: 6.5pt)[#strong(label): #value]
  }
}

#let entry(title: "", org: [], place: "", dates: "", body) = {
  block(above: 10pt, below: 7pt, breakable: false, sticky: true)[
    #grid(
      columns: (1fr, auto),
      column-gutter: 8pt,
      align: (left, right),
      text(weight: "semibold", title),
      text(size: 9pt, fill: muted, dates),
    )
    #text(fill: muted)[#org#if place != "" [, #place]]
  ]
  body
}

#let cv(
  name: "",
  headline: "",
  lang: "en",
  region: none,
  footer-label: "CV",
  contact-lines: (),
  body,
) = {
  set document(title: name + " " + footer-label, author: name)
  set text(
    font: ("Inter", "Arial", "Nimbus Sans", "DejaVu Sans"),
    size: 10.5pt,
    fill: rgb("20262b"),
    lang: lang,
    region: region,
    hyphenate: false,
  )
  set par(justify: false, leading: 0.58em, spacing: 4pt)
  // Never break a line inside "C++" (Typst allows a break between the two plus signs).
  show regex("C\+\+\d*"): it => box(it)
  set page(
    paper: "a4",
    margin: (top: 14mm, bottom: 17mm, x: 17mm),
    footer: context [
      #set text(size: 7.7pt, fill: muted)
      #grid(
        columns: (1fr, auto),
        [#name · #footer-label],
        counter(page).display("1/1", both: true),
      )
    ],
    footer-descent: 5mm,
  )
  set list(indent: 0pt, body-indent: 11pt, spacing: 7pt, tight: false)
  show heading.where(level: 1): it => block(
    above: 9pt,
    below: 5pt,
    breakable: false,
    sticky: true,
  )[
    #stack(
      dir: ttb,
      spacing: 3pt,
      text(size: 9.7pt, weight: "semibold", fill: accent, tracking: 0.65pt, upper(it.body)),
      line(length: 100%, stroke: (paint: rgb("cbd5dc"), thickness: 0.45pt)),
    )
  ]

  block(below: 11pt, breakable: false)[
    #text(size: 23pt, weight: "semibold")[#name]
    #v(2pt)
    #text(size: 10.5pt, fill: muted)[#headline]
    #v(5pt)
    #set text(size: 8.5pt)
    #set par(leading: 0.6em, spacing: 0pt)
    #for row in contact-lines {
      block(above: 0pt, below: 4pt)[
        #for (i, item) in row.enumerate() {
          if i > 0 {
            h(4pt)
            text(fill: muted)[|]
            h(4pt)
          }
          item
        }
      ]
    }
  ]
  body
}
