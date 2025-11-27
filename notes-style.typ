

#let common-styles(it) = {
  let section-based-numbering(c) = {
    let max-displayed-level = 2
    let heading-numbers = counter(heading).get()
    let heading-numbers = heading-numbers.slice(0, calc.min(heading-numbers.len(), max-displayed-level))
    let heading-fmt = heading-numbers.map(it => str(it)).join(".")

    [§#(heading-fmt)-#c]
  }

  set math.equation(numbering: section-based-numbering)
  set heading(numbering: "1.")
  show heading.where(level: 1): h1 => {
    counter(math.equation).update(0)
    h1
  }

  show figure.where(kind: "note"): set figure(numbering: section-based-numbering)

  show link: link => text(link, rgb("#0000CD").darken(50%))
  show ref: ref => text(ref, rgb("#0000CD").darken(50%))

  it
}

#let doc-level = state("doc-level", 0)

#let notes(
  title: none,
  it
) = {
  doc-level.update(it => it + 1)

  show: common-styles

  let it = context if doc-level.get() == 1 {
    outline(
      indent: 1em,
      depth: 4,
    )
    it
  } else {
    it
  }

  let it = context if doc-level.get() == 1 and title != none {
    set document(title: title)
    align(center, text(weight: "bold", size: 1.5em, title))
    it
  } else if title != none {
    heading(title)
    set heading(offset: doc-level.get() - 1)
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
