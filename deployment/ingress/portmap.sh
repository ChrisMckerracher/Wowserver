#!/bin/bash

sudo nohup socat TCP-LISTEN:3724,fork TCP:localhost:30895 > /dev/null 2>&1 &
sudo nohup socat TCP-LISTEN:8085,fork TCP:localhost:31466 > /dev/null 2>&1 &
sudo nohup socat TCP-LISTEN:7878,fork TCP:localhost:32015 > /dev/null 2>&1 &
