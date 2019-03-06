#!/bin/bash
bundle config --local build.pg --with-pg-config=/usr/pgsql-10/bin/pg_config
bundle config --local silence_root_warning true
bundle install --path vendor/bundle --clean
mkdir -p /var/task/lib
cp -a /usr/pgsql-10/lib/*.so.* /var/task/lib/