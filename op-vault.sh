#!/usr/bin/env sh

op_entry_id="4dzmtcopbdz42uatcp3zb3cuty"

op item get "$op_entry_id" --format json | jq '.fields[] | select(.id=="password").value' | tr -d '"'
