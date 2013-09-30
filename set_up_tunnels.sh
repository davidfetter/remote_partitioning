#!/bin/bash
for i in {1..4}
do
    ssh -fNL 643${i}:localhost:5432 thread-${i}c.i.disqus.net
done
