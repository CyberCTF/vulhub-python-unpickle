#!/bin/sh
# Without a cookie the page says Hello Guest (the cookie decoding path falls back).
set -e
curl -fsS http://flask:8000/ | grep -q 'Hello Guest'
