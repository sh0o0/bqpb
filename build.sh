#!/bin/sh
exec deno run --allow-env --allow-read --allow-write=bqpb.sql,bqpb.tf.sql build.ts
