# lukeblaney_blog

A Hugo static site blog served by Nginx, deployed on avalon.

## Architecture

- **Hugo** generates static HTML at build time
- **Nginx** serves the built files
- Multi-stage Docker build: Hugo build → Nginx serve
- `lucos_navbar` web component included via Docker multi-stage copy

## Development

### Prerequisites

- Docker and Docker Compose
- Hugo (optional, for local development without Docker)

### Running locally

```bash
PORT=8080 docker compose up --build
```

The blog will be available at `http://localhost:8080`.

### Adding content

Create new posts in `content/posts/`:

```bash
hugo new posts/my-new-post.md
```

Or create the file manually with frontmatter:

```markdown
---
title: "My New Post"
date: 2026-01-01
tags: ["example"]
---

Post content here.
```

### Theme

The custom theme is in `themes/lucos-blog-theme/`. It uses a serif/academic aesthetic with clean typography.

## Key files

- `hugo.toml` — Hugo configuration
- `Dockerfile` — Multi-stage build (Hugo → Nginx)
- `nginx.conf` — Nginx server configuration
- `_info.json` — Service info endpoint data
- `docker-compose.yml` — Container orchestration
- `themes/lucos-blog-theme/` — Custom blog theme

## Conventions

- Follow lucos engineering patterns (see `docs/engineering-patterns.md` in the lucos repo)
- The `/_info` endpoint must return valid JSON (see `docs/info-endpoint-spec.md`)
- Environment variables use array syntax in docker-compose.yml, never `env_file`
