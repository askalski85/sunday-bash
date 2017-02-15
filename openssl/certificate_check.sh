#!/bin/bash

openssl s_client -showcerts -connect URL:443 -CApath hello
