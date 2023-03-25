#!/bin/bash

acpi -b | grep -P -o '[0-9]+(?=%)'
