# Generador de Prompts IA

App de una sola página (`index.html`) que convierte una **idea, historia, escena o diálogo** en prompts
**positivos y negativos**, siempre en **español e inglés**, para imagen y vídeo.

## Instalar en Windows (acceso directo en el escritorio)
1. Descarga `Generador-de-Prompts-Windows.zip` y descomprímelo (clic derecho → *Extraer todo*).
2. Haz doble clic en `Instalar.bat`. Copia el programa a `%LOCALAPPDATA%\GeneradorPrompts` y crea en el escritorio
   el acceso directo **Generador de Prompts**, que lo abre en su propia ventana de Microsoft Edge, como una app.
3. Si Windows muestra *"Windows protegió su PC"*, pulsa *Más información → Ejecutar de todas formas*
   (el aviso aparece con cualquier .bat descargado; el script es texto legible, ábrelo con el Bloc de notas para revisarlo).
4. Para quitarlo: ejecuta `Desinstalar.bat` (borra el acceso directo y la carpeta).

## Cómo usarla
1. Abre `index.html` con doble clic en cualquier navegador (Chrome, Edge, Firefox). No necesita instalación ni internet.
2. Escribe tu idea (en español o inglés), elige el sistema y el medio final (o deja todo en *Auto*).
3. Pulsa **Generar prompts** (o Ctrl+Enter). Copia el positivo y el negativo en inglés en tu generador.

## Sistemas compatibles
- **Stability Matrix / local:** SDXL, SD 1.5, Pony, Illustrious/NoobAI, FLUX.1, SD 3.5 (Inference, ComfyUI, Forge, A1111, Fooocus),
  y vídeo con Wan 2.x, LTX-Video, HunyuanVideo, AnimateDiff y Stable Video Diffusion.
- **Online:** Midjourney, ChatGPT/GPT Image, Ideogram, Leonardo, Veo, Sora, Kling, Runway, Luma, Pika y un modo genérico.

Cada sistema recibe su formato: etiquetas con pesos `(sujeto:1.2)` para SD, frases naturales para el resto,
`--ar`/`--no` en Midjourney, y el negativo integrado o marcado como «solo referencia» donde no existe ese campo.
También muestra relación de aspecto, resolución y ajustes recomendados (pasos, CFG, sampler, frames…).

## Funciones
- Detección automática de idioma, imagen/vídeo, género, estilo, hora del día y clima.
- Diálogos (`NOMBRE: frase` o `— frase`): en Veo/Sora se incluyen como voz; en el resto se convierten en acción.
- Historias largas → **storyboard** con un prompt por escena (hasta 8).
- Negativos inteligentes: anatomía si hay personas, artefactos de vídeo, estilo opuesto, filtro apto para todo público.
- Botón 🎲 *Variar*, historial local, exportar a `.txt` y `.json`, tema claro/oscuro, adaptada a móvil.

## Modo IA opcional
La traducción sin conexión es por diccionario y avisa de las palabras que no conoce. Para traducción y redacción
perfectas, abre **Modo IA**, pega tu clave de API de Anthropic y pulsa *Mejorar con IA* (Claude Opus 5.5 por defecto,
o Sonnet 5.5 / Haiku 5.5 para abaratar). Cada uso consume tokens de tu cuenta.

## Seguridad
- Sin dependencias ni recursos externos; una política CSP bloquea cualquier conexión salvo `api.anthropic.com`.
- La clave de API solo vive en la memoria de la pestaña: no se guarda en disco, ni en el historial, ni en ningún archivo.
- Todo el texto se pinta como texto plano (sin `innerHTML`), así que lo que escribas no puede inyectar código.
- El historial y las preferencias se guardan solo en tu navegador (`localStorage`); el botón *Borrar historial* los elimina.
