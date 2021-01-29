import 'package:flutter/material.dart';
import 'package:wiiqare/views/widgets/chat/chat.dart';

class ChatScreen extends StatefulWidget {
  static final String id = "ChatPage";

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlatPageWrapper(
        scrollType: ScrollType.floatingHeader,
        reverseBodyList: true,
        header: ChatHeader(
          prefixWidget: SendButtom(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: "WiiQare",
          suffixWidget: ProfileImage(
            size: 35.0,
            onlineIndicator: true,
            // imageUrl:
            //     'https://africatravelco.com/wp-content/uploads/2019/08/lion-870x480.jpg',
            onPressed: () {
              print("Clicked Profile Image");
            },
          ),
        ),
        children: [
          ChatMessage(
            message: "Hello World!, This is the first message.",
            messageType: MessageType.sent,
            showTime: true,
            time: "2 mins ago",
          ),
          ChatMessage(
            message: "Typing another message from the input box.",
            messageType: MessageType.received,
            showTime: true,
            time: "2 mins ago",
          ),
          ChatMessage(
            message: "Message Length Small.",
            showTime: true,
            time: "2 mins ago",
          ),
          ChatMessage(
            message:
                "Message Length Large. This message has more text to configure the size of the message box.",
            showTime: true,
            messageType: MessageType.sent,
            time: "2 mins ago",
          ),
          ChatMessage(
            message: "Meet me tomorrow at the coffee shop.",
            showTime: true,
            time: "2 mins ago",
          ),
          ChatMessage(
            message: "Around 11 o'clock.",
            showTime: true,
            time: "2 mins ago",
          ),
          ChatMessage(
            message:
                "Flat Social UI kit is going really well. Hope this finishes soon.",
            showTime: true,
            time: "2 mins ago",
          ),
          ChatMessage(
            message: "Final Message in the list.",
            showTime: true,
            time: "2 mins ago",
          ),
        ],
        footer: MessageInputBox(
          prefix: SendButtom(
            iconData: Icons.add,
            iconSize: 24.0,
          ),
          roundedCorners: true,
          suffix: SendButtom(
            iconData: Icons.image,
            iconSize: 24.0,
          ),
        ),
      ),
    );
  }
}
