#!/usr/bin/env bash
#
# Note: this file is not intended to be executed as a script, but sourced instead.
# Simply executing won't set the environment variables in your current shell.
# Usage: source set-tf-env.sh

{ read subID ; read tenantID; } <<< "$(az account list --output=json | jq -r '.[0]|.id,.tenantId')"

export TF_VAR_azure_tenant_id="$tenantID"
export TF_VAR_azure_subscription_id="$subID"
