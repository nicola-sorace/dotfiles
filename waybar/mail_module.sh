#!/bin/bash

function get_mail_count {
	ls ~/.local/share/mail/$1/INBOX/new | wc -l
}

count_g=$(get_mail_count gmail)
count_u=$(get_mail_count uni)
total=$(($count_g + $count_u))

if [ $total -gt 0 ]; then
	echo '{"text":"'$count_g' | '$count_u'", "class":"new"}'
else
	echo '{"text":"", "class":"old"}'
fi
