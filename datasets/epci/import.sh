#!/bin/sh

psql -d apicarto -f schema.sql
psql -d apicarto -f import.sql




