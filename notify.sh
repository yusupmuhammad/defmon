message=$( cat )

sendmail(){
echo "$message" | mail -s "WEB Defacement Alert" -r defmon@smmf.co.id muhammad.yusup@smmf.co.id, firmansyah@smmf.co.id
}

if  [[ -z "$message" ]]; then
        echo "Please pipe a message to me!"
else
        sendmail
fi


