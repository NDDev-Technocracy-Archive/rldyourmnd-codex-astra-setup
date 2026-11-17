set shell := ["bash", "-euo", "pipefail", "-c"]

# List the source-maintenance commands.
default:
    @just --list

# Validate command formatting and the existing launcher without executing it.
check:
    just --fmt --check
    bash -n bin/astra
    shellcheck --severity=warning bin/astra

# Run the complete source-only validation after integration.
verify: check
