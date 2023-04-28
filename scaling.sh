#!/bin/bash
/opt/homebrew/bin/atlas config set public_api_key $1 | /opt/homebrew/bin/atlas config set private_api_key $2 | /opt/homebrew/bin/atlas cluster update $3  --projectId $4  --tier $5