#!/bin/bash

aws deploy create-deployment --application-name flex-api-dev --deployment-group-name dg-flex-api-dev --s3-location bucket=flex-dev-packages,bundleType=tar,key=flex_server.tar


