FROM python:3-alpine AS builder

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip3 install -q --no-cache-dir -r requirements.txt -t ./
COPY . .


# FROM gcr.io/distroless/python3
FROM python:3

LABEL \
  org.label-schema.schema-version="1.0" \
  org.label-schema.name="sosconf-2019-end" \
  org.label-schema.vcs-url="https://github.com/sosconf/sosconf-2019-end" \
  maintainer="sosconf <hi@sosconf.org>"

ENV SERVERURL ""

WORKDIR /app
COPY --from=builder /usr/src/app/ .

CMD ["python", "manage.py", "runserver", "0.0.0.0:9000"]

ARG BUILD_DATE
ARG VCS_REF
LABEL \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.vcs-ref=$VCS_REF

