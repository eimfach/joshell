(
	df -h | head -n1
	grep -v ^Filesystem `find -L H /var/lib/ofm -name df.txt` | grep -v ^Filesystem | sed 's,/var/lib/ofm,,' | perl human.pl
) | sed ' s/  */\t/
s/  */\t/
s/  */\t/
s/  */\t/
s/  */\t/' | column -t -s'	'
	
