#!/bin/bash
CURRENT=$(df /dev/mapper/centos-root | grep /dev/mapper/centos-root | awk '{ print $5}' | sed 's/%//g')
THRESHOLD=99
 
if [ "$CURRENT" -gt "$THRESHOLD" ] ; then
    mail -s '------DISCO CASI LLENO-------' XXXXX@XXXX.XXX << EOF

El disco del servidor de Cohosting 1and1 esta casi lleno. Usado: $CURRENT%
EOF
fi

