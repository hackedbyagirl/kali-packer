# Kali VM to OVA

## Table of Contents
+ [Description](#description)
+ [Getting Started](#getting_started)
+ [Usage](#usage)

## Description <a name = "description"></a>
This repo utilizes `Packer` and `VMware-ISO Builder` to create a VMware virtual machine from an ISO file source. It will build and create a deployable virtual machine that can be run on VMware Fusion. Unlike the other repos, this specific build will export the configuration to an `ova` and `ovf` file to be deployed locally and on remote (esx) builds. 

## Getting Started <a name = "getting_started"></a>
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites
- ovftool (For export as ova file)

## Deployment <a name = "deployment"></a>
Coming soon -- I lost all my notes regarding fixing MacOS issues :/

### Files need editing
- http/preseed.cfg
- scripts/zsh-edit.sh
- scripts/setup.sh