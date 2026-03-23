FROM lucas42/lucos_navbar:2.1.20 AS navbar

FROM hugomods/hugo:latest AS build
WORKDIR /src
COPY . .
COPY --from=navbar lucos_navbar.js static/
RUN hugo --minify

FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY --from=build /src/public/ .
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY _info.json .
