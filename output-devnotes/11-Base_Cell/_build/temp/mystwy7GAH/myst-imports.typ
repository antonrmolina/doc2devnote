#let breakableDefault = true

#import "@preview/tablex:0.0.9": tablex, cellx, hlinex, vlinex

#let tableStyle = (:)

#let columnStyle = (:)


#let tabSet(body) = {
  block(width: 100%, stroke: luma(240), [#body])
}


#let tabItem(body, heading: none) = {
  let title
  if heading != none {
    title = block(width: 100%, inset: (x: 8pt, y: 4pt), fill: luma(250))[#text(9pt, weight: "bold")[#heading]]
  }
  block(width: 100%, [
    #title
    #block(width: 100%, inset: (x: 8pt, bottom: 8pt))[#body]
  ])
}