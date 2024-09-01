#! /usr/bin/env bash

sed 's/<[^>]*>//' | sed  's/<[^>]*>//' | sed "s/&#39;/'/" | sed "s/&#39;/'/g" | sed "/^\s*$/d"
