################  MOTD FOR RASPBERRY  ####################
###############  github.com/deividgdt  ###################
##########################################################

RED='\e[31m'   
GREEN='\e[32m' 
NOCOL='\e[0m'
UP=`uptime --pretty`
CPUSAGE=`cat /proc/loadavg | awk '{print $1" "$2" "$3}'`
TOTALMEM=`awk 'NR==1 {printf "%0.0fMB/",$2/1024}' /proc/meminfo`
USEDMEM=`awk 'NR==2 {printf "%0.0fMB",$2/1024}' /proc/meminfo`
DISKUSAGE=`df --human-readable | grep --extended-regexp "/$" | awk '{print $4"/"$2" "$5}'`
NETDEV=`ip route get 8.8.8.8 | head --lines=1 | awk '{print $5}'`
IPADDR=`ip -oneline -family inet address show | grep ${NETDEV} | awk '{print $4}'| cut --fields=1 --delimiter="/"`
TEMP=`/opt/vc/bin/vcgencmd measure_temp | cut --fields=2 --delimiter="="`


echo -e "         ${GREEN}.-::--.       .-:::-."
echo -e "      /+o//:::/+o+. -+o+/::://oo:"
echo -e "      o+  .-.    -s/o     -.  .y/"
echo -e "      :y-   .:::. oy- -/:-    :s."
echo -e "       :s:     .osyyys:     ./s-"
echo -e "        ./s+:-:+yyysyys/:-/+s:${NOCOL}"
echo -e "        ${RED}.++/--os:    ./s::/os:"
echo -e "       .s:  :sys-    .:ys/  -y+"
echo -e "       :s:+yo/--:oyyy/-.-:o+-oy"
echo -e "     .+o+yy-      sy:      /y++s/"
echo -e "     s/  y+       sy:       y  .y/"
echo -e "    .y. .ys.     +yyy:     :y-  so"
echo -e "     ++.+yyyo/+o+:..-:oo+osys+./y-"
echo -e "      +yo--/syy/       oys:   sy."
echo -e "      .y:    /y/       oo     o:"
echo -e "       :s-    oyo:...:oy.    /o"
echo -e "        -oo/::yyysooooyy+::+o:"
echo -e "           :+yy+      .syo/."
echo -e "              ./o+//+o+-"
echo -e "                  ...${NOCOL}\n"
echo -e "     Up Time------> ${UP}"
echo -e "     CPU Usage----> ${CPUSAGE}"
echo -e "     RAM Usage----> ${USEDMEM}${TOTALMEM}"
echo -e "     SD Usage-----> ${DISKUSAGE}"
echo -e "     IP Address---> ${IPADDR}"
echo -e "     Temperature--> ${TEMP}"
