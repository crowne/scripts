#!/usr/bin/env bash
docker run --rm -t -i --entrypoint="get_ntlm.sh" btrepp/cntlm userid@DOMAIN proxy.corporate.com:8080
