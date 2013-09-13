#!bin/bash

IP=$(/sbin/ifconfig|grep inet|head -1|sed 's/\:/ /'|awk '{print $3}')

whiptail --title "Check IP" --msgbox "Your VirtualBox IP is: "$IP" \n
Please point your browser to "$IP" to see your Plone site.\n
For more information please visit http://www.plone.org ." 20 78
