#!/usr/bin/env bash
set -x
awslocal --endpoint-url=http://localhost:4566 s3api create-bucket --bucket sample-priv-bucket --region eu-west-2 --create-bucket-configuration LocationConstraint=eu-west-2

awslocal --endpoint-url=http://localhost:4566 s3api put-bucket-acl --acl authenticated-read --bucket sample-priv-bucket
set +x
