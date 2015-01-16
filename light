#!/bin/bash
# --- HOW ---------------------
# ./tv.sh DeskLamp On
# Currently only working for barlamp on/off...

function startlog()
{
	date > log.txt
}

function log()
{	
	echo $1 >> log.txt
}

function getKey()
{
	KEY="APA91bGXLvdfILrHKTlK8db511Niqm9buGio5Mgpvg4vCX9sFUw7HFQ5H5GbY3Ent2K8rTnGOW9wKgHO4ClpB6dvMp2VvuEjgw4u-8-bXz8Tq0qNvjZvdlMGWnbEXN_kh_GCvdhEheBTdijxbCiHwwjewD9A2kky9QE39GtrQiFZvfa32KEqEMc"
	log "Key: $KEY"
}
	
function getMsg()
{	
	# only possible to send message as one long string. no spaces allowed. thus using , to separate
	# and then using tasker to split to array. 
	MSG="Lights,"$2","$1
	log "Message: $MSG"
}

function sendMsg()
{
	curl "http://autoremotejoaomgcd.appspot.com/sendmessage?key=$KEY&message=$MSG"
}

function printlog()
{
	cat log.txt	
}

#--- Script execuition -------------------------------------------------------------
startlog
getKey
getMsg $@
sendMsg
#printlog