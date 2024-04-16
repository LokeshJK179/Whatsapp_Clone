import 'package:flutter/material.dart';
import 'package:whatsapp_clone/customUI/avatarcard.dart';
import 'package:whatsapp_clone/customUI/contact_card.dart';
import 'package:whatsapp_clone/model/chatmodel.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  List<ChatModel> contacts = [
    ChatModel(
        name: "Lokesh JK",
        status: "Full time Flutter developer",
        isGroup: false),
    ChatModel(name: "Jayanthi PN", status: "Prof. in RVCE", isGroup: false),
    ChatModel(
        name: "Jeevitha L", status: "Writing ICSE board exams", isGroup: false),
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
        name: "Jeevitha L", status: "Writing ICSE board exams", isGroup: false),
    ChatModel(name: "Tanvitha L", status: "4th Std", isGroup: false),
    ChatModel(name: "Abhimanyu", status: "asdkjfhweiojf", isGroup: false),
    ChatModel(name: "Sanket", status: "App developer", isGroup: false),
    ChatModel(name: "XYZ", status: "Bankend developer", isGroup: false),
  ];

  List<ChatModel> groups = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New group",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              "Add participants",
              style: TextStyle(fontSize: 13),
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
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: contacts.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  height: groups.length > 0 ? 90 : 10,
                );
              }
              return InkWell(
                onTap: () {
                  setState(() {
                    if (contacts[index - 1].select == true) {
                      contacts[index - 1].select = false;
                      groups.remove(contacts[index - 1]);
                    } else {
                      groups.add(contacts[index - 1]);
                      contacts[index - 1].select = true;
                    }
                  });
                },
                child: ContactCard(contact: contacts[index - 1]),
              );
            },
          ),
          groups.length > 0
              ? Column(
                  children: [
                    Container(
                      height: 80,
                      color: Colors.white,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: contacts.length,
                          itemBuilder: (context, index) {
                            if (contacts[index].select == true) {
                              return InkWell(
                                  onTap: () {
                                    setState(() {
                                      groups.remove(contacts[index]);
                                      contacts[index].select = false;
                                    });
                                  },
                                  child: AvatarCard(contact: contacts[index]));
                            } else {
                              return Container();
                            }
                          }),
                    ),
                    const Divider(
                      thickness: 1,
                    )
                  ],
                )
              : Container(
                  height: 10,
                )
        ],
      ),
    );
  }
}
