<<<<<<< HEAD
Publicar los Términos y Condiciones (página estática)

Archivos incluidos:

- index.html — página con los Términos en Español (lista para publicar)
- deploy_github.ps1 — script PowerShell opcional que automatiza git + gh (crear repo y push)

Opciones gratuitas de despliegue (elige una):

1) GitHub Pages (recomendado si quieres una URL basada en github.io)

Paso rápido (recomendado desde PowerShell):

```powershell
cd path\to\ScripPro\website\terms
git init
git add .
git commit -m "Add terms and conditions site"
# Si tienes la CLI de GitHub (gh) instalada y configurada:
gh repo create YOUR_GITHUB_USERNAME/your-terms-site --public --source=. --remote=origin --push
# En la web de GitHub, ve a Settings → Pages y habilita GitHub Pages (branch: main / docs folder según cómo hayas creado el repo)
```

Si no usas `gh`, crea manualmente el repo en github.com y empuja con `git remote add origin <url>` y `git push -u origin main`.

2) Netlify — despliegue muy sencillo (arrastrar y soltar) o usando Netlify CLI

- Opción "Drop" (sin instalar nada): https://app.netlify.com/drop
  - Abre la URL y arrastra la carpeta `website/terms` o el archivo `index.html`.
- Opción CLI (requiere cuenta y netlify-cli):

```powershell
npm i -g netlify-cli
cd path\to\ScripPro\website\terms
netlify deploy --prod --dir=.
```

3) Vercel — similar a Netlify (requiere cuenta)

```powershell
npm i -g vercel
cd path\to\ScripPro\website\terms
vercel --prod
```

Notas y recomendaciones
- Revisa el contenido y cambia cualquier contacto o fecha antes de publicar.
- Si necesitarás HTTPS y un dominio personalizado, Netlify/ Vercel/GitHub Pages lo manejan gratis (con configuración extra para el dominio).
- Si prefieres que yo cree el repo y haga el push, necesito que otorgues credenciales o uses la `gh` CLI en tu entorno (por seguridad, no puedo crear repos remotos desde aquí sin tu autorización y tokens).

Si quieres, puedo:
- Crear el repo localmente y prepararte el `deploy_github.ps1` para que lo ejecutes.
- Generar versiones en otros idiomas (en inglés/pt/zh) y añadir un selector de idioma.
- Preparar un sitemap o meta tags para SEO.

Dime qué opción prefieres y te doy los siguientes pasos concretos o ejecuto la automatización local (script) para ti.
=======
# scriptpro-terms
Página estática con los Términos y Condiciones (versión en Español) de la aplicación móvil Script Pro, preparada para desplegar en GitHub Pages, Netlify o Vercel.
>>>>>>> bd40eb9fca0f4cf8617a50827450a820bb2942e4
