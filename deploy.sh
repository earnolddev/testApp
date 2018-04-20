#!/bin/bash
docker rm -f testtarget || true
docker run --name testtarget -d -p 80:5000 testapp
