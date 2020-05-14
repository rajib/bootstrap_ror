if lsof -i:5001 | grep -q 'node'; then
    echo "NDH Mobile Web Running properly..."
    #cd /home/ubuntu/2.0_react_mobile_web/current &&  /home/ubuntu/.nvm/versions/node/v10.13.0/bin/npm run build 
else
    echo "Trying to restart NDH Mobile Web Server"
    cd /home/ubuntu/2.0_react_mobile_web/current && nohup /home/ubuntu/.nvm/versions/node/v10.13.0/bin/npm run server & 
fi

if lsof -i:5002 | grep -q 'node'; then
    echo "NDH Hybrid Web Running properly..."
    #cd /home/ubuntu/2.0_react_hybrid_web/current &&  /home/ubuntu/.nvm/versions/node/v10.13.0/bin/npm run build 
else
    echo "Trying to restart NDH Hybrid Web Server"
    cd /home/ubuntu/2.0_react_hybrid_web/current && nohup /home/ubuntu/.nvm/versions/node/v10.13.0/bin/npm run server & 
fi



*/1 * * * * /bin/sh /home/ubuntu/server_auto_start.sh > /home/ubuntu/server_auto_start.log 2>&1
