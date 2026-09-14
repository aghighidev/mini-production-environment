FROM python:3.10.21-slim-trixie AS builder
WORKDIR /build
COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

FROM python:3.10.21-slim-trixie
LABEL "author"="elessar"
LABEL "version"="1.0.0"
WORKDIR /app
COPY --from=builder /install /usr/local
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD python -c "import urllib.request; urllib.request.urlopen('http://localhost:5000/health')"
RUN addgroup --system gdevops && adduser --system --gid gdevops devops
COPY --chown=devops:gdevops . .
USER devops:gdevops
CMD ["python", "app.py"]
