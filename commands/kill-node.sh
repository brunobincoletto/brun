killall node
kill -9 `ps aux | grep node | grep -v grep | awk '{print $2}'`
echo "I tried killing all NODE processes, if that failed try with sudo."
exit;
