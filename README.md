# Python Pickle Deserialization RCE

[Vulhub](https://vulhub.org)'s [`python/unpickle`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/python/unpickle) environment, by
phith0n and the Vulhub contributors: a Flask application that base64-decodes the `user` cookie and passes it to `pickle.loads`, so a crafted pickle runs code. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine runs Vulhub's published image `vulhub/flask:1.1.1` with Vulhub's `app.py` copied in ([`build/flask/`](build/flask)); the environment folder is vendored in [`build/flask/app/`](build/flask/app) and the image's Dockerfile in [`base/`](base).

| Machine | Service |
| --- | --- |
| flask | Flask 1.1.1 (gunicorn, Python 3.6) on port 8000 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8000/. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/python/unpickle/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
