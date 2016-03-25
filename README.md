# Environment Setup automation
Ultimately should be OS agnostic as much as possible. In practice, currently this is for setting up an OS X laptop for dev.

## Instructions
`sudo ls &> /dev/null && ./setup.sh`

This 'warms' sudo so that anything that gets called within the chain started from `setup.sh` is approved, at least if it happens within the standard sudo timeout (typically 15 minutes).
