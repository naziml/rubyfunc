#!/bin/bash
service ssh start
if [ -d "/home/site/wwwroot"]; then
  mkdir -p /home/site/wwwroot/app
  mkdir -p /home/site/wwwroot/test
  cp -r /app /home/site/wwwroot/app
  cp -r /test /home/site/wwwroot/test
  /bin/bash -c "ruby /home/site/wwwroot/app/server.rb -o 0.0.0.0"
else
  /bin/bash -c "ruby /app/server.rb -o 0.0.0.0"
fi
