# FastAPI [![Version](https://img.shields.io/badge/version-0.115-009688)](https://github.com/stackblaze-templates/fastapi) [![Maintained by StackBlaze](https://img.shields.io/badge/maintained%20by-StackBlaze-blue)](https://stackblaze.com) [![Weekly Updates](https://img.shields.io/badge/updates-weekly-green)](https://github.com/stackblaze-templates/fastapi/actions) [![License](https://img.shields.io/github/license/stackblaze-templates/fastapi)](LICENSE) [![Deploy on StackBlaze](https://img.shields.io/badge/Deploy%20on-StackBlaze-orange)](https://stackblaze.com)

<p align="center"><img src="logo.png" alt="fastapi" width="120"></p>

A modern, high-performance Python web framework for building APIs. FastAPI is based on standard Python type hints, with automatic OpenAPI documentation.

> **Credits**: Built on [FastAPI](https://fastapi.tiangolo.com) by [Sebastián Ramírez](https://github.com/tiangolo). All trademarks belong to their respective owners.

## Deploy on StackBlaze

This template includes a `stackblaze.yaml` for one-click deployment on [StackBlaze](https://stackblaze.com).

## Local Development

```bash
docker compose up
```

See the project files for configuration details.

## Production Security Notes

Before deploying to production, review these defaults:

- **CORS**: FastAPI does not enable CORS by default. If your API must accept cross-origin requests, explicitly configure `CORSMiddleware` with a restricted list of allowed origins — **never use `allow_origins=["*"]` in production**.
- **Debug mode**: Uvicorn's `--reload` flag (development only) must **not** be used in production. The provided `run.sh` does not enable it.
- **Environment variables**: Store all secrets and credentials in environment variables or a secrets manager — never commit them to the repository. Add any `.env` file to `.gitignore` (already done in this template).

---

### Maintained by [StackBlaze](https://stackblaze.com)

This template is actively maintained by StackBlaze. We perform **weekly automated checks** to ensure:

- **Up-to-date dependencies** — frameworks, libraries, and base images are kept current
- **Security scanning** — continuous monitoring for known vulnerabilities and CVEs
- **Best practices** — configurations follow current recommendations from upstream projects

Found an issue? [Open a ticket](https://github.com/stackblaze-templates/fastapi/issues).
