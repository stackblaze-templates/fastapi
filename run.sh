#! /bin/bash

# this will use dependecies restored from the Stackblaze cache
uv run -- uvicorn --host 0.0.0.0 main:app
