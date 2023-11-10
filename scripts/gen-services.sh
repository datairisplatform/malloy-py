#!/bin/sh

pushd ./submodules/malloy-service

npm ci && npm run malloy-link && npm run build && npm run package

popd

cp -r submodules/malloy-service/pkg/@malloydata/* src/malloy/service
