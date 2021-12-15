# Limoo Bash SDK
A bash SDK for Limoo.  
This is a simple bash script to send a message in Limoo and can be used to easily integrate various tools with Limoo.  
  
*Wondering what Limoo is? Visit https://limoo.im*  
  
*Give Limoo a try: https://web.limoo.im*

## limoo-send.sh
You can send a message to a conversation in Limoo using the limoo-send.sh script:
```
./limoo-send.sh "An awesome message!"
```
The following parameters should be properly set in the script:
 - `<USERNAME>`: The username of the bot sending the message ([see bot creation](#bot-creation));
 - `<PASSWORD>`: The password of the bot sending the message ([see bot creation](#bot-creation));
 - `<WORKSPACE_ID>`: The 36-character ID of the workspace;
 - `<CONVERSATION_ID>`: The 36-character ID of the conversations.

To find the `<WORKSPACE_ID>` and `<CONVERSATION_ID>` of the desired conversation, you can follow these steps:
 1. Go to the desired conversation;
 2. open the network of your browser;
 3. send a message;
 4. inspect the URL of the POST request having the format `https://web.limoo.im/Limonad/api/v1/workspace/items/<WORKSPACE_ID>/conversation/items/<CONVERSATION_ID>/message/items`

## Bot creation
In order to create a bot, send the following command in your direct conversation with Limoo Bot:

<div dir="rtl">

```
/ساخت-بات my_bot bot_nickname
```

</div>
Limoo Bot will respond to you with a message containing the password of the created bot.

_Note that only admins of the workspace can create bots._
