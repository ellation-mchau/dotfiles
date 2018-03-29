#!/bin/bash

set -euxo pipefail

cd $HOME/workspace

curl -L -O https://pantsbuild.github.io/setup/pants && chmod +x pants && touch pants.ini

cat > pants.ini << END
  [GLOBAL]
  pants_version: 1.2.1
END

./pants
