#!/bin/bash

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
	MSG=$1
	log "Message: $1"
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
getMsg $1
sendMsg
#printlog