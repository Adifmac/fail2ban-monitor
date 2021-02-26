# fail2ban-monitor
A shell script for monitoring fail2ban activity


*Instructions:*

update config: log location, active jails.

make the script executable: ``sudo chmod +x fail2banMonitor.sh``

* You may have to run it with sudo privilages 


Example output:
```
********************************************
Fail2ban Summary for Today - 02-26-2021
********************************************
1 [apache-custom] 	 125.21.227.187 (125.21.227.187)
1 [apache-custom] 	 132.148.154.8 (132.148.154.8)
1 [apache-custom] 	 165.227.36.243 (165.227.36.243)
1 [apache-custom] 	 198.12.250.116 (198.12.250.116)
1 [apache-custom] 	 207.102.138.19 (207.102.138.19)
1 [apache-custom] 	 217.182.140.117 (217.182.140.117)
1 [apache-custom] 	 34.236.55.223 (34.236.55.223)
1 [apache-custom] 	 35.240.234.239 (35.240.234.239)
1 [apache-custom] 	 54.39.133.24 (54.39.133.24)

********************************************
Fail2ban History Summary (all logs)
********************************************

Total blocked By Jails:
--------------------------------
0 	apache-auth
18 	apache-badbots
306 	apache-custom
7 	sshd

IP & Host blocked more than twice:
------------------------------------
12   201.16.179.121   	  201-016-179-121.xf-static.ctbcnetsuper.com.br
7   222.186.136.150   	  222.186.136.150
6   5.188.210.227   	  5.188.210.227
5   207.102.138.19   	  207.102.138.19
4   204.101.161.19   	  204.101.161.19
4   185.142.236.43   	  blue2.census.shodan.io
4   18.229.73.207   	  ec2-18-229-73-207.sa-east-1.compute.amazonaws.com
3   35.180.147.121   	  ec2-35-180-147-121.eu-west-3.compute.amazonaws.com
3   34.251.241.226   	  ec2-34-251-241-226.eu-west-1.compute.amazonaws.com
3   34.209.105.222   	  ec2-34-209-105-222.us-west-2.compute.amazonaws.com
3   3.8.12.221   	  ec2-3-8-12-221.eu-west-2.compute.amazonaws.com
3   198.20.67.199   	  placeholder-phx.sitelock.com
3   18.231.94.162   	  ec2-18-231-94-162.sa-east-1.compute.amazonaws.com
3   18.184.155.204   	  ec2-18-184-155-204.eu-central-1.compute.amazonaws.com
3   13.228.104.57   	  ec2-13-228-104-57.ap-southeast-1.compute.amazonaws.com

Total blocks By Date:
------------------------------------
2021-02-26 - 9
2021-02-25 - 7
2021-02-24 - 7
2021-02-23 - 13
2021-02-22 - 46
2021-02-21 - 17
2021-02-20 - 20
2021-02-19 - 18
2021-02-18 - 4
2021-02-17 - 13
2021-02-16 - 9
2021-02-15 - 6
2021-02-14 - 4
2021-02-13 - 7
2021-02-12 - 6
2021-02-11 - 4
2021-02-10 - 3
2021-02-09 - 2
2021-02-08 - 9
2021-02-07 - 9
2021-02-06 - 6
2021-02-05 - 10
2021-02-04 - 3
2021-02-03 - 10
2021-02-02 - 10
2021-02-01 - 2
2021-01-31 - 9
2021-01-30 - 10
2021-01-29 - 10
2021-01-28 - 9
2021-01-27 - 18
2021-01-26 - 5
2021-01-25 - 7
2021-01-24 - 7
```
