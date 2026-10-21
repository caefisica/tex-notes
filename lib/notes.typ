// Plantilla de los apuntes: portada, encabezados, cajas de teoremas y la
// notación de física (paquete physica) que cada capítulo importa con
// `#import "/lib/notes.typ": *`.

#import "@preview/physica:0.9.8": *

#let azul = rgb("#1F36C8")

#let cajas = (
  definicion: (nombre: "Definición", color: rgb("#1B6FA8")),
  teorema: (nombre: "Teorema", color: rgb("#C98A00")),
  proposicion: (nombre: "Proposición", color: rgb("#B3261E")),
  lema: (nombre: "Lema", color: rgb("#B3261E")),
  ejemplo: (nombre: "Ejemplo", color: rgb("#444444")),
  nota: (nombre: "Nota", color: rgb("#B3261E"), numerada: false),
  problema: (nombre: "Problema", color: rgb("#2E7D32"), numerada: false),
  demostracion: (nombre: "Demostración", color: azul, numerada: false),
)

// Una caja numerada por tipo. Con el cuerpo vacío es solo la etiqueta en línea.
#let caja(tipo, titulo: none, cuerpo) = {
  let c = cajas.at(tipo)
  let numerada = c.at("numerada", default: true)
  let contador = counter("caja-" + tipo)
  let cabecera = {
    if numerada { contador.step() }
    strong(text(fill: c.color)[#c.nombre#if numerada [ #context contador.display()]])
    if titulo != none [ (#titulo)]
    [.]
  }
  context {
    if cuerpo == [] {
      cabecera
    } else if target() == "html" {
      html.elem("div", attrs: (class: "caja " + tipo))[
        #html.elem("p", attrs: (class: "cabecera"))[#cabecera]
        #cuerpo
      ]
    } else {
      block(
        width: 100%,
        fill: c.color.lighten(92%),
        stroke: (left: 1.2pt + c.color),
        inset: (x: 10pt, y: 8pt),
        above: 1.1em,
        below: 1.1em,
      )[#cabecera #cuerpo]
    }
  }
}

#let definicion = caja.with("definicion")
#let teorema = caja.with("teorema")
#let proposicion = caja.with("proposicion")
#let lema = caja.with("lema")

#let ejemplo = caja.with("ejemplo")
#let nota = caja.with("nota")
#let problema = caja.with("problema")
#let demostracion = caja.with("demostracion")

// En la web las imágenes no se incrustan: se enlaza el archivo de `figures/`,
// que la compilación copia junto a la página.
#let imagen-web(it) = {
  let nombre = it.source.split("/").last()
  let estilo = if type(it.width) == ratio { "width: " + str(calc.round(it.width / 1%, digits: 1)) + "%" } else { "" }
  html.elem("img", attrs: (src: "figures/" + nombre, alt: "", style: estilo))
}

// Número de una ecuación: capítulo.ecuación.
#let numero-ecuacion(ubicacion) = {
  let capitulo = counter(heading).at(ubicacion).first()
  let n = counter(math.equation).at(ubicacion).first()
  [(#capitulo.#n)]
}

// Recuadro alrededor de una fórmula (`\boxed` de LaTeX).
#let enmarcado(..formula, color: black) = box(
  stroke: 0.6pt + color,
  inset: 3pt,
  math.equation(formula.pos().join([,])),
)

// Raya sobre una expresión (`\overline` de LaTeX). `overline` de Typst no tiene
// equivalente en MathML; el acento combinante sí se estira sobre toda la base.
#let barra(base) = math.accent(base, "\u{305}")

#let sinnum(ecuacion) = {
  set math.equation(numbering: none)
  ecuacion
}

#let portada(titulo, subtitulo, editores, basado-en) = page(
  margin: (left: 7.5cm, rest: 2.5cm),
  fill: azul,
  numbering: none,
)[
  #set text(fill: white)
  #set par(justify: false)
  #{
    text(size: 24pt, weight: "bold", smallcaps(titulo))
    if subtitulo != none [\ #text(size: 14pt, style: "italic", subtitulo)]
    v(0.2em)
    line(length: 100%, stroke: 0.5pt + white)
    v(0.4em)
  }
  _Universidad Nacional Mayor de San Marcos_ \
  _Facultad de Ciencias Físicas_
  #v(1fr)
  #set text(size: 10pt)
  #if editores.len() > 0 [Editado por: #editores.join(", ", last: " y ") \ ]
  #if basado-en != none [Basado en #basado-en \ ]
  #line(length: 100%, stroke: 0.5pt + white)
  Última actualización: #datetime.today().display("[day]/[month]/[year]")
]

#let notas(
  titulo: "",
  subtitulo: none,
  editores: (),
  basado-en: none,
  cuerpo,
  ..curso,
) = {
  // El nombre del PDF lo fija la compilación: `--input curso=<slug>`.
  let enlace-pdf = sys.inputs.at("curso", default: none)
  if enlace-pdf != none { enlace-pdf += ".pdf" }
  set document(title: titulo, author: editores)
  set text(lang: "es", font: "New Computer Modern", size: 11pt)
  set par(justify: true)
  set heading(numbering: "1.1")
  set math.equation(numbering: (..) => context numero-ecuacion(here()))
  set table(stroke: 0.5pt + luma(120), inset: 6pt)
  set figure(gap: 0.8em)
  show math.equation: set text(font: "New Computer Modern Math")
  show link: set text(fill: azul)

  show heading.where(level: 1): it => {
    counter(math.equation).update(0)
    context if target() == "html" { it } else {
      pagebreak(weak: true)
      v(2em)
      block(below: 1.5em)[
        #text(size: 11pt, fill: azul, weight: "bold")[Capítulo #counter(heading).display()] \
        #text(size: 22pt, weight: "bold", it.body)
      ]
    }
  }

  show image: it => context if target() == "html" { imagen-web(it) } else { it }

  // Las referencias llevan solo el número: «la figura 2», «la ecuación (1.3)».
  show ref: it => {
    let el = it.element
    if el == none { return it }
    let ubicacion = el.location()
    if el.func() == math.equation {
      link(ubicacion, numero-ecuacion(ubicacion))
    } else if el.func() == heading and el.numbering != none {
      link(ubicacion, numbering(el.numbering, ..counter(heading).at(ubicacion)))
    } else if el.func() == figure {
      link(ubicacion, numbering(el.numbering, ..el.counter.at(ubicacion)))
    } else { it }
  }

  show math.equation.where(block: true): it => context {
    if target() == "html" and it.numbering != none {
      html.elem("div", attrs: (class: "ecuacion"))[
        #it
        #html.elem("div", attrs: (class: "numero"))[#numero-ecuacion(here())]
      ]
    } else { it }
  }

  context if target() == "html" {
    html.elem("link", attrs: (rel: "stylesheet", href: "../estilo.css"))
    html.elem("link", attrs: (rel: "stylesheet", href: "../pagefind/pagefind-component-ui.css"))
    html.elem("script", attrs: (src: "../pagefind/pagefind-component-ui.js", type: "module"))[]
    html.elem("main")[
      #html.elem("header", attrs: (class: "cabecera-curso"))[
        #html.elem("a", attrs: (href: "../index.html"))[← Todos los cursos]
        #html.elem("h1")[#titulo]
        #if subtitulo != none { html.elem("p", attrs: (class: "subtitulo"))[#subtitulo] }
        #html.elem("p", attrs: (class: "creditos"))[
          Universidad Nacional Mayor de San Marcos, Facultad de Ciencias Físicas
          #if editores.len() > 0 [· Editado por #editores.join(", ", last: " y ")]
          #if basado-en != none [· Basado en #basado-en]
        ]
        #if enlace-pdf != none {
          html.elem("p", attrs: (class: "pdf"))[#html.elem("a", attrs: (href: enlace-pdf))[Descargar PDF]]
        }
      ]
      #html.elem("pagefind-searchbox", attrs: (id: "buscar", "show-sub-results": "", placeholder: "Buscar en los apuntes"))[]
      #html.elem("div", attrs: (data-pagefind-ignore: "all"))[#outline(title: [Índice], depth: 3)]
      #cuerpo
    ]
  } else {
    set page(paper: "a4", margin: (x: 2.5cm, y: 2.5cm), numbering: "1")
    portada(titulo, subtitulo, editores, basado-en)
    outline(title: [Índice], depth: 3)
    cuerpo
  }
}
