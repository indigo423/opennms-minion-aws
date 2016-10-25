# OpenNMS Minion Lab on AWS

## Overview

The repository contains an AWS CloudFormation stack and Ansible playbooks for setting up the stack and configuring the EC2 instances.

## Setup

    ansible-playbook -vv cloudformation.yaml --tags "provision"
    ./ec2.py --refresh-cache
    ansible-playbook -i ec2.py -vv cloudformation.yaml --tags "setup"

## Teardown

    ansible-playbook -vv cloudformation.yaml --tags "destroy"

## Other useful commands

    ansible-playbook -i ec2.py -vv cloudformation.yaml --tags "debug"
    ansible -i ec2.py -u ec2-user tag_aws_cloudformation_stack_name_opennms_minion_lab -m ping

## References

* [AWS EC2 External Inventory Script](http://docs.ansible.com/ansible/intro_dynamic_inventory.html#example-aws-ec2-external-inventory-script)
* [Cloudformation Example]( https://github.com/ansible/ansible-examples/blob/master/language_features/cloudformation.yaml)
* [Another Cloudformation Example with linked stacks](http://odecee.com.au/cloudformation-and-ansible/)
