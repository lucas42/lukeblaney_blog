FROM hugomods/hugo:latest AS build
WORKDIR /src
COPY . .
RUN hugo --minify

FROM nginx:alpine
ARG VERSION
ENV VERSION=$VERSION
WORKDIR /usr/share/nginx/html
COPY --from=build /src/public/ .
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY _info.json .
