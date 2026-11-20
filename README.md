# Chichén Itzá: Recorridos Virtuales (Diseño)

Proyecto universitario de la materia **Sistemas Distribuidos (LIS-4052)**.
Su propósito es sentar la infraestructura de un prototipo web para el diseño de recorridos
virtuales del sitio arqueológico de Chichén Itzá.

## Objetivo general

Organizar un repositorio preparado para el diseño de interfaces que permitan consultar y
administrar participantes, avatares, guías, recorridos y zonas geográficas, así como
presentar estadísticas y reputación.

## Alcance del prototipo

El alcance principal corresponde a HTML y CSS: modelado conceptual, diseño de páginas,
formularios y navegación. No se desarrollarán backend, persistencia de datos, comunicación
entre servidores ni sistemas distribuidos funcionales.

## Tecnologías

- HTML5.
- CSS3.
- Markdown y PlantUML para documentación.
- Shell POSIX para validación local.

No se utilizan frameworks ni dependencias externas.

## Estructura de directorios

```text
chichen-itza-virtual/
├── docs/                 Documentación académica y técnica
├── src/                  Punto de entrada, páginas, estilos y recursos
├── report/               Guía de elaboración del reporte técnico
├── scripts/              Herramientas locales de validación
└── README.md             Información general del proyecto
```

Los estilos globales se encuentran en `src/css/` y deben reutilizarse en todas las áreas.
Cada área funcional cuenta con un directorio independiente dentro de `src/pages/`.

## Uso local

Desde la raíz del repositorio, abra `src/index.html` directamente en un navegador moderno.
No requiere instalación de paquetes ni ejecución de un servidor.

Puede verificar la estructura obligatoria con:

```sh
./scripts/validate.sh
```

## Convenciones de colaboración

- La rama estable será `main`.
- Las contribuciones se realizarán en ramas `feature/<area>-<descripcion>`.
- Cada cambio se integrará mediante pull request.
- Se revisará el código antes de fusionarlo.
- Los commits deberán tener mensajes descriptivos y breves.
- Los estilos compartidos se modificarán de forma coordinada para evitar conflictos.
- Los nombres de archivos, carpetas, clases CSS e identificadores se escribirán en inglés;
  comentarios y documentación podrán estar en español.

## Integrantes

Espacio reservado para incorporar posteriormente a los cinco integrantes del equipo:

1. Pendiente de asignación.
2. Pendiente de asignación.
3. Pendiente de asignación.
4. Pendiente de asignación.
5. Pendiente de asignación.

## Entregables

- Documentación de requisitos, arquitectura y diseño.
- Diagrama de clases en PlantUML.
- Interfaz web prototipo basada en HTML y CSS.
- Reporte técnico de máximo 10 páginas.
- PDF del reporte y ZIP del código fuente.