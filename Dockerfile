FROM aafrey/fwatchdog:latest
ARG repo

RUN apk add --no-cache nodejs
RUN apk add --no-cache --virtual .build-dependencies git

RUN git clone $repo . && \
    npm install get-stdin && \
    npm install

RUN apk del .build-dependencies
ENV fprocess="node function.js"
CMD ["fwatchdog"]
