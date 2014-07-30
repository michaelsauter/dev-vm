#!/usr/bin/env bash

# Install Skittle
if [ ! -x /usr/local/bin/skittle ]; then
  curl -O https://raw.githubusercontent.com/d11wtq/skittle/master/bin/skittle
  chmod +x skittle
  sudo mv skittle /usr/local/bin/skittle
fi

# Install deps
skittle git
