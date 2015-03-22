#!/bin/bash

VERSION=$1

echo "######################"
echo "# install rrdcached: $VERSION"

apt-get remove -y rrdcached
apt-get install -y libpango1.0-dev libxml2-dev

BUILD_DIR=/tmp/rrdbuild
INSTALL_DIR=/opt/rrdtool-$VERSION

mkdir -p $BUILD_DIR
cd $BUILD_DIR

wget -q https://github.com/oetiker/rrdtool-1.x/archive/v$VERSION.tar.gz
gunzip -c v$VERSION.tar.gz | tar xf -
cd rrdtool-1.x-$VERSION
./configure --prefix=$INSTALL_DIR && make && make install

for d in $INSTALL_DIR/bin/*;
do
  binfile=/usr/local/bin/$(basename $d)
  rm -f $binfile
  ln -s $d $binfile
done
