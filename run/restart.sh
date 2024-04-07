PID_RUN_KAAS=`ps -ef | grep 'com.dentalden.clinic.ClinicApplication' | grep /home/ec2-user/dentalden/bin | grep -v grep | awk '{print $2}'`

if [[ "" !=  "$PID_RUN_KAAS" ]]; then
   echo "run_kaas(PID:$PID_RUN_KAAS) is running"
   kill -9 $PID_RUN_KAAS
   echo "run_kaas service is killed"
else
   echo "run_kaas service is not running"
fi

sh /run/run.sh
echo "service is up and running"