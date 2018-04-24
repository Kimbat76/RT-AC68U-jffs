#!/bin/sh

mv /tmp/etc/cert.pem /tmp/etc/cert.pem.bkpalex
mv /tmp/etc/key.pem /tmp/etc/key.pem.bkpalex
mv /tmp/etc/server.pem /tmp/etc/server.pem.bkpalex

ln -s /jffs/certs/www.fontaine-salamanca.ovh_rapidssl.20151223.crt /tmp/etc/cert.pem
ln -s /jffs/certs/www.fontaine-salamanca.ovh_rapidssl.20151223.no.key /tmp/etc/key.pem

cat /tmp/etc/key.pem /tmp/etc/cert.pem > /tmp/etc/server.pem
logger "nouveaux certificats déployés"
