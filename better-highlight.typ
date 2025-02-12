
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
  show regex("\bbool\b"): it => link("https://doc.rust-lang.org/std/primitive.bool.html", "bool")
  show regex("\bchar\b"): it => link("https://doc.rust-lang.org/std/primitive.char.html", "char")
  show regex("\bf128\b"): it => link("https://doc.rust-lang.org/std/primitive.f128.html", "f128")
  show regex("\bf16\b"): it => link("https://doc.rust-lang.org/std/primitive.f16.html", "f16")
  show regex("\bf32\b"): it => link("https://doc.rust-lang.org/std/primitive.f32.html", "f32")
  show regex("\bf64\b"): it => link("https://doc.rust-lang.org/std/primitive.f64.html", "f64")
  show regex("\bi8\b"): it => link("https://doc.rust-lang.org/std/primitive.i8.html", "i8")
  show regex("\bi16\b"): it => link("https://doc.rust-lang.org/std/primitive.i16.html", "i16")
  show regex("\bi32\b"): it => link("https://doc.rust-lang.org/std/primitive.i32.html", "i32")
  show regex("\bi64\b"): it => link("https://doc.rust-lang.org/std/primitive.i64.html", "i64")
  show regex("\bi128\b"): it => link("https://doc.rust-lang.org/std/primitive.i128.html", "i128")
  show regex("\bisize\b"): it => link("https://doc.rust-lang.org/std/primitive.isize.html", "isize")
  show regex("\bu8\b"): it => link("https://doc.rust-lang.org/std/primitive.u8.html", "u8")
  show regex("\bu16\b"): it => link("https://doc.rust-lang.org/std/primitive.u16.html", "u16")
  show regex("\bu32\b"): it => link("https://doc.rust-lang.org/std/primitive.u32.html", "u32")
  show regex("\bu64\b"): it => link("https://doc.rust-lang.org/std/primitive.u64.html", "u64")
  show regex("\bu128\b"): it => link("https://doc.rust-lang.org/std/primitive.u128.html", "u128")
  show regex("\busize\b"): it => link("https://doc.rust-lang.org/std/primitive.usize.html", "usize")
  //show regex("\b*\b"): it => link("https://doc.rust-lang.org/std/primitive.pointer.html", "*")
  show regex("\b&\b"): it => link("https://doc.rust-lang.org/std/primitive.reference.html", "&")
  show regex("\bstr\b"): it => link("https://doc.rust-lang.org/std/primitive.str.html", "str")

  // Keywords
  show regex("\bSelf\b"): it => link("https://doc.rust-lang.org/std/keyword.SelfTy.html", "Self")
  show regex("\bas\b"): it => link("https://doc.rust-lang.org/std/keyword.as.html", "as")
  show regex("\basync\b"): it => link("https://doc.rust-lang.org/std/keyword.async.html", "async")
  show regex("\bawait\b"): it => link("https://doc.rust-lang.org/std/keyword.await.html", "await")
  show regex("\bbreak\b"): it => link("https://doc.rust-lang.org/std/keyword.break.html", "break")
  show regex("\bconst\b"): it => link("https://doc.rust-lang.org/std/keyword.const.html", "const")
  show regex("\bcontinue\b"): it => link("https://doc.rust-lang.org/std/keyword.continue.html", "continue")
  show regex("\bcrate\b"): it => link("https://doc.rust-lang.org/std/keyword.crate.html", "crate")
  show regex("\bdyn\b"): it => link("https://doc.rust-lang.org/std/keyword.dyn.html", "dyn")
  show regex("\belse\b"): it => link("https://doc.rust-lang.org/std/keyword.else.html", "else")
  show regex("\benum\b"): it => link("https://doc.rust-lang.org/std/keyword.enum.html", "enum")
  show regex("\bextern\b"): it => link("https://doc.rust-lang.org/std/keyword.extern.html", "extern")
  show regex("\bfalse\b"): it => link("https://doc.rust-lang.org/std/keyword.false.html", "false")
  show regex("\bfn\b"): it => link("https://doc.rust-lang.org/std/keyword.fn.html", "fn")
  show regex("\bfor\b"): it => link("https://doc.rust-lang.org/std/keyword.for.html", "for")
  show regex("\bif\b"): it => link("https://doc.rust-lang.org/std/keyword.if.html", "if")
  show regex("\bimpl\b"): it => link("https://doc.rust-lang.org/std/keyword.impl.html", "impl")
  show regex("\bin\b"): it => link("https://doc.rust-lang.org/std/keyword.in.html", "in")
  show regex("\blet\b"): it => link("https://doc.rust-lang.org/std/keyword.let.html", "let")
  show regex("\bloop\b"): it => link("https://doc.rust-lang.org/std/keyword.loop.html", "loop")
  show regex("\bmatch\b"): it => link("https://doc.rust-lang.org/std/keyword.match.html", "match")
  show regex("\bmod\b"): it => link("https://doc.rust-lang.org/std/keyword.mod.html", "mod")
  show regex("\bmove\b"): it => link("https://doc.rust-lang.org/std/keyword.move.html", "move")
  show regex("\bmut\b"): it => link("https://doc.rust-lang.org/std/keyword.mut.html", "mut")
  show regex("\bpub\b"): it => link("https://doc.rust-lang.org/std/keyword.pub.html", "pub")
  show regex("\bref\b"): it => link("https://doc.rust-lang.org/std/keyword.ref.html", "ref")
  show regex("\breturn\b"): it => link("https://doc.rust-lang.org/std/keyword.return.html", "return")
  show regex("\bself\b"): it => link("https://doc.rust-lang.org/std/keyword.self.html", "self")
  show regex("\bstatic\b"): it => link("https://doc.rust-lang.org/std/keyword.static.html", "static")
  show regex("\bstruct\b"): it => link("https://doc.rust-lang.org/std/keyword.struct.html", "struct")
  show regex("\bsuper\b"): it => link("https://doc.rust-lang.org/std/keyword.super.html", "super")
  show regex("\btrait\b"): it => link("https://doc.rust-lang.org/std/keyword.trait.html", "trait")
  show regex("\btrue\b"): it => link("https://doc.rust-lang.org/std/keyword.true.html", "true")
  show regex("\btype\b"): it => link("https://doc.rust-lang.org/std/keyword.type.html", "type")
  show regex("\bunion\b"): it => link("https://doc.rust-lang.org/std/keyword.union.html", "union")
  show regex("\bunsafe\b"): it => link("https://doc.rust-lang.org/std/keyword.unsafe.html", "unsafe")
  show regex("\buse\b"): it => link("https://doc.rust-lang.org/std/keyword.use.html", "use")
  show regex("\bwhere\b"): it => link("https://doc.rust-lang.org/std/keyword.where.html", "where")
  show regex("\bwhile\b"): it => link("https://doc.rust-lang.org/std/keyword.while.html", "while")

  show regex("\bprintln\!"): it => link("https://doc.rust-lang.org/std/macro.println.html", "println!")
  show regex("\btodo\!"): it => link("https://doc.rust-lang.org/std/macro.todo.html", "todo!")
  show regex("\bln\b"): it => link("https://docs.rs/num/latest/num/trait.Float.html#tymethod.ln", "ln")
  show regex("\bsin\b"): it => link("https://docs.rs/num/latest/num/trait.Float.html#tymethod.sin", "sin")
  show regex("\bcos\b"): it => link("https://docs.rs/num/latest/num/trait.Float.html#tymethod.cos", "cos")
  show regex("\bsqrt\b"): it => link("https://docs.rs/num/latest/num/trait.Float.html#tymethod.sqrt", "sqrt")

  it
}

#let rust-playground(
  main: false,
  code: none,
  it,
) = {
  let code = if code == none {
    it.text
  } else {
    code
  };

  // fix hidden lines
  let lines = code.trim().split("\n");
  let code = "";
  for line in lines {
    if code != "" {
      code += "\n";
    }
    if line.starts-with("# ") {
      code += line.slice(2);
    } else {
      code += line;
    }
  }

  let code = if main {
    "fn main() {\n    " + code.replace("\n", "\n    ") + "\n}"
  } else {
    code
  }

  let code = call-js-function(
    js,
    "encode_uri_component",
    code,
  );

  let url = "https://play.rust-lang.org/?version=stable&mode=debug&edition=2021&code=" + code;

  box(width: 100%)[
    #{
      set text(size: 1.25em)
      it
    }
    #place(top + right, box(link(url, "Run: " + emoji.rocket), stroke: gray, radius: 0.5em, inset: 0.5em, fill: gray.transparentize(50%)))
  ]
}

#let better-highlight(it) = {
  show raw.where(lang: "rs"): rust-links
  show raw.where(lang: "rust"): rust-links

  let remove-hidden-lines(code) = {
    let lines = code.trim().split("\n");
    let code = "";
    for line in lines {
      if line.starts-with("# ") {
        continue;
      }
      if code != "" {
          code += "\n";
        }
        // half the leading spaces to make the code more readable on pdf
        // by reducing the indentation from 4 to 2 spaces
        let n_leading_spaces = line.position(line.trim());
        let line = "  " * calc.div-euclid(n_leading_spaces, 4) + " " * calc.rem-euclid(n_leading_spaces, 4) + line.trim();
        code += line;
    }
    code
  }

  show raw.where(lang: "rs"): it => {
    let code = it.text;
    if code.starts-with("run-main") {
      //set text(size: 11pt)
      let code = code.slice(8);
      // set text(size: 1.125em) // TODO see https://github.com/typst/typst/issues/1331
      rust-playground(main: true, code: code, raw(remove-hidden-lines(code), lang: "rs", block: true))
    } else if code.starts-with("run") {
      let code = code.slice(3);
      rust-playground(main: false, code: code, raw(remove-hidden-lines(code), lang: "rs", block: true))
    } else {
      it
    }
  }

  it
}

#show: better-highlight

```rs
fn ciao() {
    return 42;
}
```

```rs run
fn ciao() {
    return 42;
}
```

```rs run-main
fn ciao() {
    return 42;
}
```