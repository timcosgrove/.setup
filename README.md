# Environment Setup automation
Ultimately should be OS agnostic as much as possible. In practice, currently this is for setting up an OS X laptop for dev.

## Instructions for OS X
**This command executes a remote script. Never do this without fully understanding and trusting what you're executing.**

`sudo ls &> /dev/null && bash <(curl -s https://raw.githubusercontent.com/timcosgrove/.setup/master/setup.sh)`

* `sudo ls &> /dev/null`: This 'warms' sudo so that anything that gets called within the chain started from `setup.sh` is approved, at least if it happens within the standard sudo timeout (typically 15 minutes).
* `bash <(curl -s https://raw.githubusercontent.com/timcosgrove/.setup/master/setup.sh)` curls the basic setup.sh from this repo and runs it.
  * For Darwin/OS X, the setup script checks to see if Xcode Commandline Tools are installed, and installs them if they are not. We do this this way because you will not actually be able to clone this repo and set anything up without the Commandline Tools installed.
  * Once the Xcode tools are installed, the script clones this repo and then runs the Darwin-specific setup script.
