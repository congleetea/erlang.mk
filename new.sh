#!/bin/bash

if [ -z $1 ]; then
    echo "Please input application name."
    exit 1 
fi 


echo ">>>> create directory, remove and recreat if existed."
PWD=$( cd "$( dirname "BASH_SOURCE[0]" )" && pwd)
APPNAME=$1
APPDIR=$PWD/$APPNAME

if [ -d $APPDIR ];then
    echo "!!! remove existed application with same name."
    rm -rf $APPDIR
fi
   
mkdir -p $APPDIR/bin

echo ">>>> copy initial file."
cp $PWD/erlang.mk $APPDIR 
cp $PWD/bin/myapp $APPDIR/bin/$APPNAME 
cp $PWD/bin/nodetool $APPDIR/bin/nodetool
cp $PWD/bin/cuttlefish $APPDIR/bin/cuttlefish
cp $PWD/gitignore $APPDIR/.gitignore

echo ">>> generate config files: make -f erlang.mk bootstrap bootstrap-rel"
cd $APPDIR
make -f erlang.mk bootstrap bootstrap-rel

echo ">>> git init."
cd $APPDIR
git init
git add ./ 
git commit -m "initial comment"

echo ">>> OK, you can add your codes now."

