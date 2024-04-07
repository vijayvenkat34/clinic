
apps_path=/home/ec2-user/dentalden

today=$(date +"%Y%m%d-%T")

nohup java -jar $apps_path/bin/*.jar com.dentalden.clinic.ClinicApplication >> $apps_path/nohup_run_kaas.out