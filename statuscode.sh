status_code=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8081/myapp/)
   if [ "$status_code" -eq 200 ] ; then
        echo "App is working fine $status_code"
   else
       echo "App is not running and starting $status_code"

    fi
