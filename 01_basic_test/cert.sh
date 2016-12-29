#!/bin/bash

unlink mykey.pub
unlink mykey
ln -s /home/ubuntu/.ssh/mykey.pub .
ln -s /home/ubuntu/.ssh/mykey .
