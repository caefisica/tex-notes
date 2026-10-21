# Apuntes de Física FCF-UNMSM

Transcripciones de clases de la Facultad de Ciencias Físicas de la Universidad
Nacional Mayor de San Marcos. Cada curso se puede leer en el navegador, buscar y
descargar en PDF desde una sola fuente escrita en [Typst](https://typst.app).

Sitio: <https://caefisica.github.io/tex-notes/>

## Construir

Instala las herramientas que fija `mise.toml` y compila:

```sh
mise install
mise run build
```

`mise run build` deja en `public/` el sitio web de todos los cursos, el PDF de
cada uno y el índice de búsqueda. `mise run serve` lo construye y lo sirve en
<http://localhost:1414>.

Para compilar solo el PDF de un curso:

```sh
typst compile --root . courses/calculo-vectorial/main.typ calculo-vectorial.pdf
```

## Estructura

```
courses/<curso>/
  main.typ       portada y lista de capítulos
  curso.toml     título, área, editores
  chapters/      un archivo .typ por capítulo
  figures/       imágenes del curso
lib/notes.typ    plantilla: portada, cajas de teoremas y notación de física
site/            portada del sitio y hoja de estilo
mise-tasks/      tarea que construye el sitio
```

## Comprobar

```sh
mise run check
```

Da formato a los documentos sin cambiarlos, compila todos los cursos a PDF y a
HTML, construye el índice de búsqueda y falla ante cualquier aviso. CI ejecuta
esta misma tarea. `mise run fix` da formato a los documentos.

## Contribuir

[`.github/CONTRIBUTING.md`](.github/CONTRIBUTING.md) explica cómo añadir una
clase. [`docs/despliegue.md`](docs/despliegue.md) explica cómo se publica el
sitio.
