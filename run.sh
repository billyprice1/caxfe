#!/bin/bash

echo

cd /home/cabox/workspace/
/home/cabox/workspace/noVNC/utils/launch.sh --vnc localhost:5900
cd /home/cabox/workspace/caxfe/ supervisord -c supervisord.conf
cd /home/cabox/workspace/cabox
supervisord
