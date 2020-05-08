ARG BUILD_FROM

FROM $BUILD_FROM AS build
RUN apk add git gcc musl-dev libffi-dev openssl-dev
RUN git clone https://github.com/lbschenkel/broadlink-bridge.git -n /tmp/build \
    && cd /tmp/build \
    && git checkout "v0.1.3" \
    && pip wheel --wheel-dir=/tmp/wheels .

FROM $BUILD_FROM AS runtime
ENV LANG C.UTF-8
COPY --from=build /tmp/wheels /tmp/wheels
COPY run.sh /
RUN pip install --no-index --find-links=/tmp/wheels/ broadlink-bridge \
    && rm -Rfv /tmp/* \
    && chmod a+x /run.sh

WORKDIR /data

CMD [ "/run.sh" ]
