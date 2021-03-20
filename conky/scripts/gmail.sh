#!/bin/bash
 
gmail_login="enter your gmail address here" 
gmail_password="enter your gmail password"
 
nbmail="$(wget --secure-protocol=TLSv1 --timeout=3 -t 1 -q -O - \
https://${gmail_login}:${gmail_password}@mail.google.com/mail/feed/atom \
--no-check-certificate | grep 'fullcount' \
| sed -e 's/.*<fullcount>//;s/<\/fullcount>.*//' 2>/dev/null)"
 
if [ -z "$nbmail" ]; then
echo "updating..."
else
  if [ $nbmail != 0 ]; then
    echo "$nbmail unread"
  else
  echo "$nbmail unread"
  fi
fi