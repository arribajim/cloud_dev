wget --http-user=arribajim@hotmail.com --http-password=nPL7uWuM  "https://www.oracle.com/webapps/redirect/signon?nexturl=https://download.oracle.com/otn/linux/oracle19c/190000/LINUX.X64_193000_db_home.zip&userid=arribajim@hotmail.com&email=arribajim@hotmail.com&patch_password=nPL7uWuM&patch_file=LINUX.X64_193000_db_home.zip" -O LINUX.X64_193000_db_home.zip --no-check-certificate


https://www.oracle.com/webapps/redirect/signon?nexturl=https://download.oracle.com/otn/linux/oracle19c/190000/LINUX.X64_193000_db_home.zip


wget --load-cookies=./oracle.com_cookies.txt --no-check-certificate "https://www.oracle.com/webapps/redirect/signon?nexturl=https://download.oracle.com/otn/linux/oracle19c/190000/LINUX.X64_193000_db_home.zip" -O LINUX.X64_193000_db_home.zip
/home/arribajim/oracle

docker  run --name oracle19c --network host -p 1521:1521 -p 5500:5500 -v /home/arribajim/oracle:/u01/oracle oracle/database:19.3.0-ee

ORCLPDB1
ez49RVW/y08=1

#sqlserver
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=ez49RVW/y08=1' -e 'MSSQL_PID=Standard' -p 1433:1433 -d mcr.microsoft.com/mssql/server:latest

