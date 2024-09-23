f=/opt/gnuhealth/etc/trytond.conf
l=$(grep -n web] $f|sed -e 's/:.*//')
mv $f tmp
sed "$l aroot=/usr/local/src/sao" tmp > $f
grep -A 5 web] $f
