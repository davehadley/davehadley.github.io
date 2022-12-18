# Git Pages for davehadley.github.io / davehadley.co.uk

This repository contains the personal web pages of David Hadley hosted at (https://davehadley.co.uk).

## Build and Test with Docker

```bash
docker build . -t davehadley.github.io && \
docker run --rm -it -p4000:4000 --name davehadley.github.io davehadley.github.io
```

Then go to http://localhost:4000. You should be able to connect to the container (eg with VS Code or `docker exec -it davehadley.github.io bash`)and modify it and see the changes in realtime.
