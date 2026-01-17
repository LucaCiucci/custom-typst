#let l-rect = (it, stroke: black, radius: 0.25em, inset: 5pt) => rect(it, stroke: (
  left: stroke,
  right: none,
  top: stroke,
  bottom: stroke,
), radius: radius, inset: inset)

#let r-rect = (it, stroke: black, radius: 0.25em, inset: 5pt) => rect(it, stroke: (
  left: none,
  right: stroke,
  top: stroke,
  bottom: stroke,
), radius: radius, inset: inset)

#let full-rect = (it, stroke: black, radius: 0.25em, inset: 5pt) => rect(it, stroke: (
  left: stroke,
  right: stroke,
  top: stroke,
  bottom: stroke,
), radius: radius, inset: inset)

#let lrect(it) = l-rect(it, inset: 0.75em)
#let rrect(it) = r-rect(it, inset: 0.75em)
#let orect(it) = full-rect(it, inset: 0.75em)

#let grayed(content) = text(gray, content)