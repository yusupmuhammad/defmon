#!/bin/sh
#
#  This script sends whatever is piped to it as a message to the specified Telegram bot
#
message=$( cat )
apiToken=690881009:AAF6ux6Z2V6tjDHubVp889Df1z84fjskrP8
# example:
# apiToken=123456789:AbCdEfgijk1LmPQRSTu234v5Wx-yZA67BCD
userChatId=-203285409
# example:
# userChatId=123456789

sendTelegram() {
        curl -s \
        -X POST \
        https://api.telegram.org/bot$apiToken/sendMessage \
        -d text="$message" \
        -d chat_id=$userChatId
}

if  [[ -z "$message" ]]; then
        echo "Please pipe a message to me!"
else
        sendTelegram
fi
