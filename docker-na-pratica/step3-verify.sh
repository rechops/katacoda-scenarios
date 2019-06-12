# (( $(docker ps -a | grep voter-mongo 2>/dev/null | wc -l) >= 1 )) && 
echo \"done\"