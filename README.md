# Catálogo de apps ligeras de Revivo

Este repositorio contiene `catalogo.json`, el listado de apps ligeras que la app **Revivo** descarga al conectarse a internet
para sugerirlas en su *Tienda Lite*. Si no hay conexión, Revivo usa la última copia guardada o la que lleva integrada.

## Formato

```json
{"id": "org.videolan.vlc", "name": "VLC", "cat": "video", "source": "fdroid", "minSdk": 17, "desc": "..."}
```

| Campo | Significado |
|---|---|
| `id` | Nombre de paquete de Android (o `web.algo` para webs) |
| `cat` | Una de las categorías definidas en `categories` |
| `source` | `play` (abre Google Play), `fdroid` (Revivo descarga e instala el APK de f-droid.org) o `web` (abre `url` en el navegador ligero) |
| `minSdk` | Versión mínima de Android (21 = Android 5.0, 23 = 6.0, 24 = 7.0, 26 = 8.0) |

Para añadir o quitar apps basta con editar `catalogo.json`; los dispositivos lo recogen la próxima vez que abran la Tienda Lite.
Antes de añadir una app de F-Droid, comprueba en su ficha qué versión de Android exige.
