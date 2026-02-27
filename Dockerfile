FROM nineseconds/mtg:latest

CMD ["sh", "-c", "mtg run $SECRET --bind 0.0.0.0:$PORT"]
