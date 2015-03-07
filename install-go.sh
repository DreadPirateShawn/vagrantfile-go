#!/usr/bin/env bash

go_version=$1


echo "#############"
echo "# Go check: $go_version"

VERSION=$1
OS=$2
ARCH=$3

if command -v go >/dev/null 2>&1
then
  echo "# ~> Go already installed."
else
  PACKAGE=go$VERSION.$OS-$ARCH.tar.gz
  wget -q https://storage.googleapis.com/golang/$PACKAGE
  sudo tar -C /usr/local -xzf $PACKAGE

  export GOPATH=/coding_sync/go
  export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

  sudo echo -e "\nexport GOPATH=/coding_sync/go" >> /etc/profile
  sudo echo -e "\nexport PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> /etc/profile
fi

go get github.com/tools/godep
