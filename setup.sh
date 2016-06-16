#!/bin/bash
ssh-keygen -t rsa -f ./keys/host_key -N ''
ssh-keygen -t rsa -f ./keys/worker_key -N ''
ssh-keygen -t rsa -f ./keys/session_signing_key -N ''
