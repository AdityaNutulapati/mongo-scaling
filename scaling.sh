#!/bin/bash
atlas config set public_api_key $1 | atlas config set private_api_key $2 | atlas cluster update $3  --projectId $4  --tier $5