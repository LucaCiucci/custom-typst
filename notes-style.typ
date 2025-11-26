

#let common-styles(it) = {
  set math.equation(numbering: c => {
    [§#(counter(heading).display())#c]
  })
  set heading(numbering: "1.")
  show heading.where(level: 1): h1 => {
    counter(math.equation).update(0)
    h1
  }

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

  let it = context context if doc-level.get() == 1 {
    outline(
      indent: 1em,
      depth: 4,
    )
    it
  } else {
    it
  }

  let it = context context if doc-level.get() == 1 {
    it
  } else {
    set heading(offset: doc-level.get() - 1)
    it
  }

  let it = context if doc-level.get() == 1 {
    set page(numbering: "1 / 1")
    it
  } else {
    it
  }

  it

  context doc-level.update(it => it - 1)
}
