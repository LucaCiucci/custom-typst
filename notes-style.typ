

#let common-styles(it) = {
  set math.equation(numbering: "(1)")
  set heading(numbering: "1.")

  show link: link => text(link, rgb("#0000CD").darken(50%))
  show ref: ref => text(ref, rgb("#0000CD").darken(50%))

  it
}

#let doc-level = state("doc-level", 0)

#let notes(
  it
) = {
  doc-level.update(it => it + 1)

  show: common-styles

  context if doc-level.get() == 1 {
    outline(
      indent: 1em,
      depth: 4,
    )
  }

  it

  context doc-level.update(it => it - 1)
}
