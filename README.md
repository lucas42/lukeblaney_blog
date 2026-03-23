# lukeblaney_blog

A personal blog built with Hugo and served by Nginx, replacing the previous Tumblr-hosted blog at blog.lukeblaney.co.uk.

## Dependencies

* Docker
* Docker Compose

## Runtime dependencies

Nginx (Alpine)

## Running

`nice -19 docker compose up -d --no-build`

## Building

The build is configured to run in CircleCI when a commit is pushed to the main branch on GitHub.

For local builds:

```bash
PORT=8080 docker compose up --build
```
