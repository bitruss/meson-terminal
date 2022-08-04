FROM golang:alpine AS builder
RUN mkdir /meson-terminal
ADD . /meson-terminal/
WORKDIR /meson-terminal
RUN .auto-build.sh

FROM gcr.io/distroless/base
COPY --from=builder /bitruss/meson-terminal /meson-terminal
ENTRYPOINT ["/meson-terminal"]