# Use pinned stable version
FROM nineseconds/mtg:2 AS mtg

FROM alpine:latest

COPY --from=mtg /mtg /usr/bin/mtg

# Properly quote $SECRET to handle any special chars
CMD ["sh", "-c", "mtg simple-run 0.0.0.0:$PORT \"$SECRET\""]
