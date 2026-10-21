# Cómo contribuir

Los apuntes están en Typst. De un mismo texto salen el PDF de cada curso y su
página web. Instala las herramientas con `mise install`.

## Añadir una clase a un curso

1. Crea `courses/<curso>/chapters/NN-titulo.typ`. El nombre usa solo ASCII y
   guiones, con el número de orden al inicio.
2. Empieza el archivo con la plantilla y un encabezado de nivel 1 para el
   capítulo:

   ```typ
   #import "/lib/notes.typ": *

   = Electrostática

   == Ley de Coulomb
   ```

3. Incluye el capítulo en `courses/<curso>/main.typ`:

   ```typ
   #include "chapters/03-electrostatica.typ"
   ```

4. Guarda las imágenes en `courses/<curso>/figures/` y úsalas con una ruta
   relativa al capítulo:

   ```typ
   #figure(image("../figures/campo.png", width: 60%), caption: [Campo de una carga.])
   ```

5. Ejecuta `mise run check` antes de abrir el pull request.

## Añadir un curso

1. Elige un nombre de carpeta en minúsculas, ASCII y con guiones, como
   `calculo-vectorial`. Ese nombre es la dirección del curso en el sitio.
2. Crea `courses/<curso>/curso.toml`:

   ```toml
   titulo = "Electromagnetismo I"
   area = "Electromagnetismo"
   editores = ["Nombre Apellido"]
   ```

   `subtitulo` y `basado-en` son opcionales.

3. Crea `courses/<curso>/main.typ`:

   ```typ
   #import "/lib/notes.typ": *

   #show: notas.with(..toml("curso.toml"))

   #include "chapters/01-introduccion.typ"
   ```

La portada del sitio lista los cursos por `area` sin más cambios.

## Escribir

- Las fórmulas usan la sintaxis de Typst y el paquete
  [physica](https://typst.app/universe/package/physica) para derivadas (`pdv`,
  `dv`), gradiente, divergencia y rotacional.
- Las cajas de la plantilla son `definicion`, `teorema`, `proposicion`, `lema`,
  `ejemplo`, `nota`, `problema` y `demostracion`:

  ```typ
  #teorema(titulo: [de Gauss])[
    El flujo del campo a través de una superficie cerrada es proporcional a la
    carga encerrada.
  ]
  ```

- Las ecuaciones se numeran por capítulo, como `(2.3)`. Pon una etiqueta con
  `$ ... $ <eq:gauss>` y cítala con `@eq:gauss`.
- `sinnum[$ ... $]` escribe una ecuación sin número. `enmarcado(...)` la
  encierra en un recuadro.

## Reglas de la versión web

La web usa la exportación HTML de Typst, que escribe las fórmulas en MathML. Lo
que ese formato no representa genera un aviso y `mise run check` falla.

- Para una raya sobre una expresión usa `barra(x)`, no `overline(x)`.
- No pongas `align` fuera de una tabla.
- Una figura que Typst no pueda exportar a HTML se convierte antes en imagen
  (SVG o PNG) y se incluye con `image`.
