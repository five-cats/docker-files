#!/bin/sh

crond -d 8 && php-fpm7 -O -F
