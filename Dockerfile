FROM aafrey/func-builder:latest
# NodeJS index.json and get-stdin already built-in
# Add the function.js and package.json
ADD . /function
RUN npm install

RUN apk del .build-dependencies
ENV fprocess="node ./function/index.js"
CMD ["fwatchdog"]
