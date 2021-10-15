# Configuring and Running DUNE VD PDS Cryosub Temperature/Heating Control and Monitoring

1. Setup Mysql and tables for Cryosub ( execute *configure_mysql.sh* )
2. Run *CryosubLoop.py* ( which will control PSU and read temperature from Yocopuce )
3. Run *CryosubUI.py* to control the current output by PSU
