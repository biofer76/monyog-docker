# Monyog - SQL Diagnostic Manager for MySQL

Monyog has been rebranded as SQL Diagnostic Manager for MySQL
This is the Docker version of MONyog / SQL DM, the agentless for MySQL database

More information to MONyog website: https://www.webyog.com/product/monyog

## How to run MONyog

Configure exposed port in .env file(default 5555)
```
MONYOG_PORT=5555
```

Build Docker image (devxops/monyog)
```
./build.sh
```

Run Docker container
```
./run.sh
```

Connect to MONyog, open the browser and go to
```
http://HOSTNAME:PORT
```

Default configuration: http://localhost:5555

* Username: **admin**
* Password: **[no password, leave blank]**

You can change admin login password in the folder `[project]/MONyog/MONyog.ini` file

Application logs are available in `[project]/MONyog/MONyog.log`

---
MIT License 




