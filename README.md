# aws-bastion
Packer build for an AWS SSH bastion with extra tooling installed

## Extra Tools

* MySQL 5.6.19

## Public AMIs
If you trust me, you can water one of the public AMIs I have created.

* ap-northeast-1: ami-c27cf6c2
* ap-southeast-1: ami-a2979df0
* ap-southeast-2: ami-4569267f
* eu-central-1: ami-581d1d45
* eu-west-1: ami-25597a52
* sa-east-1: ami-f5eb7ee8
* us-east-1: ami-49640c2c
* us-west-1: ami-3953a97d
* us-west-2: ami-63554953

## Build your own
If you don't trust me, then simply clone this repo, `chmod 755 *.sh`, and `./codeship.sh` to build your own.

### Tips for building your own
You probably don't want the AMI to be public, so remove `"ami_groups": ["all"],` from `packer.json`.
You probably don't want it copied to every AWS region, so remove elements from `"ami_regions":` in `packer.json` as desired.
