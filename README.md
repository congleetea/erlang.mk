# erlang.mk

Custom erlang.mk using [cuttlefish](https://github.com/basho/cuttlefish/wiki).

This tool can initialize a erlang application using erlang.mk, the supported
config method is [cuttlefish method](https://github.com/basho/cuttlefish). So,
you should be familiar with the usage of cuttlefish.


When application is created, [lager](https://github.com/basho/lager) is used and
is configured.

## usage

```
./new.sh appname
```
application named "appname" will be created in this directory, after created,
you can move it to a proper directory.

if appname existed in this directory, old will be removed and create a new application. 

## about
Files in ./bin is copy
from [emq-relx](https://github.com/emqtt/emq-relx/tree/master/bin) then modified. 

erlang.mk is modified from the file generated based on [erlang.mk](https://erlang.mk/)
