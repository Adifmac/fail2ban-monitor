#!/bin/bash

# CONFIG
BANLOG=/var/log/fail2ban.log
JAILS=(
        "apache-auth"
        "apache-badbots"
        "apache-custom"
        "sshd"
        )

echo -e "********************************************\nFail2ban Summary for Today - `date +%m-%d-%Y`\n********************************************"
# Print todays banned
grep "Ban " $BANLOG | grep `date +%Y-%m-%d` | awk '{print $NF, $6}' | sort | awk '{print $2, "\t", $1,"("$1")"}' | logresolve | uniq -c | sort -n | sed 's/^\s*//'

echo -e "\n********************************************\nFail2ban History Summary (all logs)\n********************************************"

# Bans count by Jails
echo -e "\nTotal blocked By Jails:\n--------------------------------"
for JAIL in ${JAILS[@]}; do
        echo -e "`cat $BANLOG | grep $JAIL | wc -l` \t$JAIL"
done

# List by IP & host block count > 2
echo -e "\nIP & Host blocked more than twice:\n------------------------------------"
sudo zgrep -h "Ban "  BANLOG* | awk '{print $NF,$NF}' | sort | uniq -c | sort -nr | awk '{if ($1>2) {print $3, $2, $1}}' | logresolve | awk '{print  $3, " ", $2, "  \t ", $1}'

# Total blocks by date
echo -e "\nTotal blocks By Date:\n------------------------------------"
zgrep -h "Ban " $BANLOG* | awk '{print $1,$6}' | sort | uniq -c | awk '{a[$2] += $1} END{for (i in a) print i, "-" , a[i]}' | sort -k2 -nr
