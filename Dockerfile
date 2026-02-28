FROM nineseconds/mtg:latest AS mtg

FROM alpine:latest

COPY --from=mtg /usr/bin/mtg /usr/bin/mtg

CMD ["sh", "-c", "mtg run $SECRET --bind 0.0.0.0:$PORT"]
