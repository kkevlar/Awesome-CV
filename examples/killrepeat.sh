#!/bin/sh

ps -aux | grep simple-r | sed -r 's;kevlar\s*([0-9]+).*;\1;' | xargs kill



