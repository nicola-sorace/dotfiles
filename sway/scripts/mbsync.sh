#!/bin/bash

DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus
export DBUS_SESSION_BUS_ADDRESS
export DISPLAY=:0.0

mbsync -a
