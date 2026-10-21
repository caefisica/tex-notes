// Portada del sitio: lista de cursos por área. La compilación pasa los slugs
// en `--input cursos=a,b,c`.

#set document(title: "Apuntes de Física FCF-UNMSM")
#set text(lang: "es")

#let cursos = sys.inputs.cursos.split(",").map(slug => {
  let datos = toml("/courses/" + slug + "/curso.toml")
  (slug: slug, ..datos)
})

#let areas = cursos.map(c => c.area).dedup().sorted()

#html.elem("link", attrs: (rel: "stylesheet", href: "estilo.css"))
#html.elem("link", attrs: (rel: "stylesheet", href: "pagefind/pagefind-component-ui.css"))
#html.elem("script", attrs: (src: "pagefind/pagefind-component-ui.js", type: "module"))[]

#html.elem("main", attrs: (data-pagefind-ignore: "all"))[
  #html.elem("h1")[Apuntes de Física FCF-UNMSM]
  #html.elem("p")[
    Transcripciones de clases de la Facultad de Ciencias Físicas de la
    Universidad Nacional Mayor de San Marcos. Cada curso se lee en el
    navegador y se descarga en PDF.
  ]
  #html.elem("pagefind-searchbox", attrs: (id: "buscar", "show-sub-results": "", placeholder: "Buscar en los apuntes"))[]

  #for area in areas [
    #html.elem("h2")[#area]
    #html.elem("ul", attrs: (class: "cursos"))[
      #for c in cursos.filter(c => c.area == area) {
        html.elem("li")[
          #link(c.slug + "/index.html")[#c.titulo]
          #if "subtitulo" in c { html.elem("small")[#c.subtitulo] }
          #html.elem("small")[#link(c.slug + "/" + c.slug + ".pdf")[PDF]]
        ]
      }
    ]
  ]
]
