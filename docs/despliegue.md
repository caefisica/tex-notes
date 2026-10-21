# Despliegue

El sitio y los PDF se publican en GitHub Pages. El flujo
`.github/workflows/pages.yml` construye con `mise run build` y despliega el
contenido de `public/` con `actions/deploy-pages` en cada push a `master`.

## Activar Pages

Hazlo una vez por repositorio, en una cuenta con permisos de administración.

1. Abre el repositorio en GitHub, pestaña **Settings**, sección **Pages**.
2. En **Build and deployment**, elige **Source: GitHub Actions**.
3. Haz un push a `master`, o ejecuta el flujo **pages** a mano desde la pestaña
   **Actions** con **Run workflow**.
4. Cuando el flujo termine, el sitio está en
   `https://<usuario>.github.io/<repositorio>/`.

No hace falta crear secretos ni ramas. El flujo usa el permiso `pages: write` y
`id-token: write` que declara en su propio archivo.

## Fork

Los enlaces del sitio son relativos, así que funciona bajo cualquier ruta. Un
fork solo activa Pages como se describe arriba.

## Dominio propio

Con un dominio propio, en **Settings**, **Pages**, **Custom domain**, escribe el
dominio y crea el registro DNS que GitHub indica.

## Construir sin publicar

```sh
mise run build
```

deja el sitio en `public/`. `mise run serve` lo sirve en
<http://localhost:1414>.
