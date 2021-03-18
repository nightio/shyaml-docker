FROM alpine:3.13

RUN apk add --no-cache python3;
RUN set -eux; \
    apk add --no-cache --virtual .build-deps \
		py-pip \
	; \
	\
	pip install --no-cache-dir \
        shyaml \
    ; \
	\
	apk del .build-deps;