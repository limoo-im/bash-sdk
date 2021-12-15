#!/bin/bash

USERNAME=<USERNAME>					#Specified when creating the bot user
PASSWORD=<PASSWORD>					#Specified when creating the bot user

WORKSPACE_ID=<WORKSPACE_ID>			#The workspae UUID
CONVERSATION_ID=<CONVERSATION_ID>	#The Conversation UUID


MESSAGE=$1
curl -k -s -c /dev/null -d j_username=$USERNAME -d j_password=$PASSWORD 'https://web.limoo.im/Limonad/j_spring_security_check'  -: -c /dev/null -d "{\"text\": \"$MESSAGE\"}" -H 'Content-Type: application/json' "https://web.limoo.im/Limonad/api/v1/workspace/items/$WORKSPACE_ID/conversation/items/$CONVERSATION_ID/message/items" -k -s > /dev/null
