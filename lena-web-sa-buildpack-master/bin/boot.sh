export APACHE_ROOT=/home/vcap/app/httpd

mv $APACHE_ROOT/env.sh $APACHE_ROOT/env.sh.org
erb $APACHE_ROOT/env.sh.org > $APACHE_ROOT/env.sh
#(tail $APACHE_ROOT/logs/*log &)
#exec $APACHE_ROOT/bin/httpd -DFOREGROUND
sh $APACHE_ROOT/start.sh

echo "---------> web server start completed ->>>>>>>>>>>>>>>"