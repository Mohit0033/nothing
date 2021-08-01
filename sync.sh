tg(){
	bot_api=1817093442:AAHuzu6NDZPZZNuAdrvKxMYGpdeXK2hMSeI
 # Your tg bot api, dont use my one haha, it's better to encrypt bot api too.
	your_telegram_id=$1 # No need to touch 
	msg=$2 # No need to touch
	curl -s "https://api.telegram.org/bot${bot_api}/sendmessage" --data "text=$msg&chat_id=${your_telegram_id}"
}

id=1118151835 # Your telegram id

# Upload rom zip file if succeed to build! Send notification to tg! And send shell to tg if build fails!
	|| tmate -S /tmp/tmate.sock new-session -d && tmate -S /tmp/tmate.sock wait tmate-ready && send_shell=$(tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}') && tg $id "Build Failed" && tg $id "$send_shell" && ccache -s && sleep 7h # Let's print ccache statistics finally
