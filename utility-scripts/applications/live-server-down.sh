#!/usr/bin/env bash

ps aux | grep live-server | grep -v grep | awk '{print $2}' | xargs kill
