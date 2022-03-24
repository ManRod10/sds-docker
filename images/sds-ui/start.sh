
#PROXY_BACKEND_HOST=`python3 -c "import socket;print(socket.gethostbyname('$SDS_PROXY_BACKEND_HOST'))"`
#export REACT_APP_API_URL="http://$PROXY_BACKEND_HOST:$SDS_PROXY_BACKEND_PORT"
service ssh start
./check_backend  $BACKEND_HEARTBEAT
/usr/sbin/apache2ctl -D FOREGROUND
#service apache2 start
#npm start