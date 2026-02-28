FROM nineseconds/mtg:latest AS mtg

FROM alpine:latest

# Copy the mtg binary (it's at /mtg in the source image)
COPY --from=mtg /mtg /usr/bin/mtg

# Run with env vars (SECRET and PORT) that Render provides
CMD ["sh", "-c", "mtg simple-run 0.0.0.0:$PORT $SECRET"]
