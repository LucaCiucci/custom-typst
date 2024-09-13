
#import "@preview/jogs:0.2.3": *
#let js-code = ```js
function encode_uri_component(value) {
  //return value;
  return encodeURIComponent(value);
}
```
#js-code
#let js = compile-js(js-code)

Exported functions:\
#list-global-property(js)

#let rust-links(it) = {
  //show link: it => link("aaa")
  show "bool": it => link("https://doc.rust-lang.org/std/primitive.bool.html", "bool")
  show "char": it => link("https://doc.rust-lang.org/std/primitive.char.html", "char")
  show "f128": it => link("https://doc.rust-lang.org/std/primitive.f128.html", "f128")
  show "f16": it => link("https://doc.rust-lang.org/std/primitive.f16.html", "f16")
  show "f32": it => link("https://doc.rust-lang.org/std/primitive.f32.html", "f32")
  show "f64": it => link("https://doc.rust-lang.org/std/primitive.f64.html", "f64")
  show "i8": it => link("https://doc.rust-lang.org/std/primitive.i8.html", "i8")
  show "i16": it => link("https://doc.rust-lang.org/std/primitive.i16.html", "i16")
  show "i32": it => link("https://doc.rust-lang.org/std/primitive.i32.html", "i32")
  show "i64": it => link("https://doc.rust-lang.org/std/primitive.i64.html", "i64")
  show "i128": it => link("https://doc.rust-lang.org/std/primitive.i128.html", "i128")
  show "isize": it => link("https://doc.rust-lang.org/std/primitive.isize.html", "isize")
  show "u8": it => link("https://doc.rust-lang.org/std/primitive.u8.html", "u8")
  show "u16": it => link("https://doc.rust-lang.org/std/primitive.u16.html", "u16")
  show "u32": it => link("https://doc.rust-lang.org/std/primitive.u32.html", "u32")
  show "u64": it => link("https://doc.rust-lang.org/std/primitive.u64.html", "u64")
  show "u128": it => link("https://doc.rust-lang.org/std/primitive.u128.html", "u128")
  show "usize": it => link("https://doc.rust-lang.org/std/primitive.usize.html", "usize")
  show "*": it => link("https://doc.rust-lang.org/std/primitive.pointer.html", "*")
  show "&": it => link("https://doc.rust-lang.org/std/primitive.reference.html", "&")
  show "str": it => link("https://doc.rust-lang.org/std/primitive.str.html", "str")

  // Keywords
  show "Self": it => link("https://doc.rust-lang.org/std/keyword.SelfTy.html", "Self")
  show "as": it => link("https://doc.rust-lang.org/std/keyword.as.html", "as")
  show "async": it => link("https://doc.rust-lang.org/std/keyword.async.html", "async")
  show "await": it => link("https://doc.rust-lang.org/std/keyword.await.html", "await")
  show "break": it => link("https://doc.rust-lang.org/std/keyword.break.html", "break")
  show "const": it => link("https://doc.rust-lang.org/std/keyword.const.html", "const")
  show "continue": it => link("https://doc.rust-lang.org/std/keyword.continue.html", "continue")
  show "crate": it => link("https://doc.rust-lang.org/std/keyword.crate.html", "crate")
  show "dyn": it => link("https://doc.rust-lang.org/std/keyword.dyn.html", "dyn")
  show "else": it => link("https://doc.rust-lang.org/std/keyword.else.html", "else")
  show "enum": it => link("https://doc.rust-lang.org/std/keyword.enum.html", "enum")
  show "extern": it => link("https://doc.rust-lang.org/std/keyword.extern.html", "extern")
  show "false": it => link("https://doc.rust-lang.org/std/keyword.false.html", "false")
  show "fn": it => link("https://doc.rust-lang.org/std/keyword.fn.html", "fn")
  show "for": it => link("https://doc.rust-lang.org/std/keyword.for.html", "for")
  show "if": it => link("https://doc.rust-lang.org/std/keyword.if.html", "if")
  show "impl": it => link("https://doc.rust-lang.org/std/keyword.impl.html", "impl")
  show "in": it => link("https://doc.rust-lang.org/std/keyword.in.html", "in")
  show "let": it => link("https://doc.rust-lang.org/std/keyword.let.html", "let")
  show "loop": it => link("https://doc.rust-lang.org/std/keyword.loop.html", "loop")
  show "match": it => link("https://doc.rust-lang.org/std/keyword.match.html", "match")
  show "mod": it => link("https://doc.rust-lang.org/std/keyword.mod.html", "mod")
  show "move": it => link("https://doc.rust-lang.org/std/keyword.move.html", "move")
  show "mut": it => link("https://doc.rust-lang.org/std/keyword.mut.html", "mut")
  show "pub": it => link("https://doc.rust-lang.org/std/keyword.pub.html", "pub")
  show "ref": it => link("https://doc.rust-lang.org/std/keyword.ref.html", "ref")
  show "return": it => link("https://doc.rust-lang.org/std/keyword.return.html", "return")
  show "self": it => link("https://doc.rust-lang.org/std/keyword.self.html", "self")
  show "static": it => link("https://doc.rust-lang.org/std/keyword.static.html", "static")
  show "struct": it => link("https://doc.rust-lang.org/std/keyword.struct.html", "struct")
  show "super": it => link("https://doc.rust-lang.org/std/keyword.super.html", "super")
  show "trait": it => link("https://doc.rust-lang.org/std/keyword.trait.html", "trait")
  show "true": it => link("https://doc.rust-lang.org/std/keyword.true.html", "true")
  show "type": it => link("https://doc.rust-lang.org/std/keyword.type.html", "type")
  show "union": it => link("https://doc.rust-lang.org/std/keyword.union.html", "union")
  show "unsafe": it => link("https://doc.rust-lang.org/std/keyword.unsafe.html", "unsafe")
  show "use": it => link("https://doc.rust-lang.org/std/keyword.use.html", "use")
  show "where": it => link("https://doc.rust-lang.org/std/keyword.where.html", "where")
  show "while": it => link("https://doc.rust-lang.org/std/keyword.while.html", "while")

  it
}

#let rust-playground(
  main: false,
  it,
) = {
  let code = if main {
    "fn main() {\n    " + it.text.replace("\n", "\n    ") + "\n}"
  } else {
    it.text
  }

  let code = call-js-function(
    js,
    "encode_uri_component",
    code,
  );

  let url = "https://play.rust-lang.org/?version=stable&mode=debug&edition=2021&code=" + code;

  box(width: 100%)[
    #place(top + right, box(link(url, "Run: " + emoji.rocket), stroke: gray, radius: 0.5em, inset: 0.5em, fill: gray.transparentize(50%)))
    #it
  ]
}

#let better-highlight(it) = {
  show raw.where(lang: "rs"): rust-links
  show raw.where(lang: "rust"): rust-links
  it
}

#show: better-highlight

```rs
fn ciao() {
    return 42;
}
```

#rust-playground(main: true, ```rs
fn ciao() -> i32 {
    return 42;
}
println!("Answer: {}", ciao());
```)

#show: rust-playground.with(main: true)
```rs
fn ciao() {
    return 42;
}
```