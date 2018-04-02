pipe="/tmp/mypipe"
port=2001					# Port to forward to
mkfifo $pipe &> /dev/null
echo "Listening for incoming ssh connections..."
nc -l $port -k < $pipe | nc localhost 22 > $pipe
