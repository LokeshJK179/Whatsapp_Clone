import 'package:flutter/material.dart';
import 'package:whatsapp_clone/customUI/contact_card.dart';
import 'package:whatsapp_clone/model/chatmodel.dart';

import '../customUI/buttonCard.dart';
import 'create_group.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({super.key});

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(
          name: "Lokesh JK",
          status: "Full time Flutter developer",
          isGroup: false),
      ChatModel(name: "Jayanthi PN", status: "Prof. in RVCE", isGroup: false),
      ChatModel(
          name: "Jeevitha L",
          status: "Writing ICSE board exams",
          isGroup: false),
      ChatModel(name: "Tanvitha L", status: "4th Std", isGroup: false),
      ChatModel(name: "Abhimanyu", status: "asdkjfhweiojf", isGroup: false),
      ChatModel(name: "Sanket", status: "App developer", isGroup: false),
      ChatModel(name: "XYZ", status: "Bankend developer", isGroup: false),
      ChatModel(
          name: "Lokesh JK",
          status: "Full time Flutter developer",
          isGroup: false),
      ChatModel(name: "Jayanthi PN", status: "Prof. in RVCE", isGroup: false),
      ChatModel(
          name: "Jeevitha L",
          status: "Writing ICSE board exams",
          isGroup: false),
      ChatModel(name: "Tanvitha L", status: "4th Std", isGroup: false),
      ChatModel(name: "Abhimanyu", status: "asdkjfhweiojf", isGroup: false),
      ChatModel(name: "Sanket", status: "App developer", isGroup: false),
      ChatModel(name: "XYZ", status: "Bankend developer", isGroup: false),
    ];

    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select contact",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              "${contacts.length} contacts",
              style: const TextStyle(fontSize: 13),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 26,
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              // print("Value = " + value);
            },
            itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem(
                  value: "Invite a friend",
                  child: Text("Invite a friend"),
                ),
                PopupMenuItem(
                  value: "Contacts",
                  child: Text("Contacts"),
                ),
                PopupMenuItem(
                  value: "Refresh",
                  child: Text("Refresh"),
                ),
                PopupMenuItem(
                  value: "Help",
                  child: Text("Help"),
                ),
              ];
            },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: contacts.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const CreateGroup()));
                },
                child: const ButtonCard(icon: Icons.group, name: "New group"),
              );
            } else if (index == 1) {
              return const ButtonCard(
                  icon: Icons.person_add, name: "New contact");
            }
            return ContactCard(contact: contacts[index - 2]);
          }),
    );
  }
}
