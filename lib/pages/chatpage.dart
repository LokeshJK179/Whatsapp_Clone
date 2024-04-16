import 'package:flutter/material.dart';
import 'package:whatsapp_clone/customUI/custom_card.dart';
import 'package:whatsapp_clone/model/chatmodel.dart';
import 'package:whatsapp_clone/screens/selectcontact.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Lokesh JK",
        icon: "person.svg",
        isGroup: false,
        time: "04.00",
        currentMessage: "Hi Everyone"),
    ChatModel(
        name: "Jayanthi PN",
        icon: "person.svg",
        isGroup: false,
        time: "10.00",
        currentMessage: "Hi Jayanthi"),
    ChatModel(
        name: "Lokesh Server",
        icon: "groups.svg",
        isGroup: true,
        time: "04.00",
        currentMessage: "Hi Everyone on this group"),
    ChatModel(
        name: "collins",
        icon: "person.svg",
        isGroup: false,
        time: "02.00",
        currentMessage: "Hi Lokesh"),
    ChatModel(
        name: "Lokesh JK",
        icon: "groups.svg",
        isGroup: true,
        time: "04.00",
        currentMessage: "Hi Everyone"),
    ChatModel(
        name: "Jeevitha L",
        icon: "person.svg",
        isGroup: false,
        time: "14.00",
        currentMessage: "Hi Jeevitha"),
    ChatModel(
        name: "Tanvitha L",
        icon: "person.svg",
        isGroup: false,
        time: "10.10",
        currentMessage: "Hi Tanu"),
    ChatModel(
        name: "G H P S Jalihal VTs ",
        icon: "groups.svg",
        isGroup: true,
        time: "16.10",
        currentMessage: "Hi Team"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => const SelectContact()));
        },
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
      ),
    );
  }
}
