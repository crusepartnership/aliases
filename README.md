# Aliases
## What is this?
This, my friends, is a bunch of useful shell aliases and scripts that help to speed up your development.

## Getting Started
Let's install!

```
git clone git@github.com:luciditysoftware/aliases.git
cd aliases
./install.sh
```
## Prerequisites before running the commands
###AWS
You’ll need the aws cli installed to use the aliases project.

Test if installed with `aws --version`
Installer at:
https://docs.aws.amazon.com/cli/latest/userguide/install-macos.html#install-bundle-macos

You’ll also need:
* To have AWS credentials already set up (key, secret)
* to configure the aws client with your access keys: `aws configure`
* for your AWS account to be set up with access to retrieve the AWS instance IPs. You can see if you have permission to see the instances by going to
https://ap-southeast-2.console.aws.amazon.com/ec2/v2/home?region=ap-southeast-2#Instances:sort=instanceId


## Using
Now that you've installed the magic, view the help to see what helpful aliases you have available:

```
aliashelp
```
If you run into any issues please add to this readme.
If you add any new aliases please add them to help.txt.