#!/usr/bin/env sh

# Valida la estructura mínima necesaria para iniciar el proyecto.

set -u

missing=0
root_dir=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)

require_directory() {
  if [ ! -d "$root_dir/$1" ]; then
    printf 'Falta el directorio: %s\n' "$1" >&2
    missing=1
  fi
}

require_file() {
  if [ ! -f "$root_dir/$1" ]; then
    printf 'Falta el archivo: %s\n' "$1" >&2
    missing=1
  fi
}

for directory in \
  docs/requirements \
  docs/architecture \
  docs/design \
  docs/evidence \
  src/pages/participants \
  src/pages/avatars \
  src/pages/tours \
  src/pages/zones \
  src/pages/dashboard \
  src/css \
  src/assets/images \
  src/assets/icons \
  report/figures \
  scripts
do
  require_directory "$directory"
done

for file in \
  README.md \
  .gitignore \
  .editorconfig \
  src/index.html \
  src/css/variables.css \
  src/css/reset.css \
  src/css/base.css \
  src/css/layout.css \
  src/css/components.css \
  docs/requirements/functional-requirements.md \
  docs/requirements/non-functional-requirements.md \
  docs/requirements/scope.md \
  docs/architecture/class-diagram.puml \
  docs/architecture/distributed-design.md \
  docs/design/sitemap.md \
  docs/design/forms.md \
  docs/design/design-guidelines.md \
  docs/evidence/README.md \
  report/README.md
do
  require_file "$file"
done

if [ "$missing" -ne 0 ]; then
  printf 'Validación fallida: faltan elementos obligatorios.\n' >&2
  exit 1
fi

printf 'Validación correcta: la estructura obligatoria está presente.\n'
