FROM nineseconds/mtg:latest

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["mtg run $SECRET --bind 0.0.0.0:$PORT"]
