#let horizontalrule = line(start: (25%,0%), end: (75%,0%))
$if(highlighting-definitions)$
$highlighting-definitions$
$endif$
#set page(paper: "$if(papersize)$$papersize$$else$a4$endif$", margin: $if(margin)$$margin$$else$2.5cm$endif$)
#set text(font: ("$if(mainfont)$$mainfont$$else$Georgia$endif$",), size: $if(fontsize)$$fontsize$$else$11pt$endif$)
#set par(justify: true, leading: $if(line-spacing)$$line-spacing$$else$0.8em$endif$)
$if(watermark-image)$
#set page(background: {
  place(center + horizon, image("$watermark-image$", width: 100%, height: 100%, fit: "contain"))
  place(rect(width: 100%, height: 100%, fill: white.transparentize(100% - $watermark-transparency$)))
$if(watermark-text)$
  place(center + horizon, rotate(-45deg, text(size: 60pt, weight: "bold", fill: luma(0).transparentize($watermark-transparency$))[$watermark-text$]))
$endif$
})
$else$
$if(watermark-text)$
#set page(background: place(center + horizon, rotate(-45deg, text(size: 60pt, weight: "bold", fill: luma(0).transparentize($watermark-transparency$))[$watermark-text$])))
$endif$
$endif$
#show heading: set text(font: ("$if(headerfont)$$headerfont$$else$Impact$endif$",), weight: "bold")
#show heading.where(level: 2): set block(below: 1.4em)
#show heading.where(level: 3): set block(above: 2em)
#show heading.where(level: 2): it => {
  pagebreak(weak: true)
  it
}
#show raw: set text(size: 0.85em)
#show raw.where(block: true): block.with(fill: luma(245), inset: 8pt, radius: 4pt, width: 100%)
#set table(inset: 6pt, stroke: 0.5pt + luma(200))
#set table.hline(stroke: 0.75pt + luma(160))
#show quote.where(block: true): it => block(
  width: 100%,
  fill: luma(250),
  stroke: (left: 3pt + rgb("#5b7c99")),
  inset: (left: 14pt, right: 12pt, top: 10pt, bottom: 10pt),
  radius: (top-right: 4pt, bottom-right: 4pt),
  text(style: "italic", fill: luma(64), size: 0.95em)[#it.body]
)
$if(cover)$
// full-bleed cover page: image should be at least 1240x1754 px for A4 portrait (150 dpi), ideally 2480x3508 px (300 dpi)
#page(margin: 0pt)[
  #image("$cover$", width: 100%, height: 100%, fit: "cover")
]
$endif$
$if(logo)$
#align(right)[#image("$logo$", width: $if(logo-width)$$logo-width$$else$3cm$endif$)]
$endif$
$if(title)$
#align(center)[#text(font: ("$if(headerfont)$$headerfont$$else$Impact$endif$",), size: 1.6em, weight: "bold")[$title$]]
#v(1em)
$endif$
$if(toc)$
#outline(title: auto, depth: $if(toc-depth)$$toc-depth$$else$3$endif$)
#v(1em)
$endif$
$body$
