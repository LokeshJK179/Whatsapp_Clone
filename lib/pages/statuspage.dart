import 'package:flutter/material.dart';
import 'package:whatsapp_clone/customUI/StatusPage/headownstatus.dart';
import 'package:whatsapp_clone/customUI/StatusPage/othersstatus.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              onPressed: () {},
              elevation: 7,
              backgroundColor: Colors.blueGrey[100],
              child: Icon(
                Icons.edit,
                color: Colors.blueGrey[900],
              ),
            ),
          ),
          const SizedBox(height: 13),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.greenAccent[700],
            elevation: 5,
            child: const Icon(Icons.camera_alt),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 10),
            const HeadOwnStatus(),
            label("Recent updates"),
            const OthersStatus(
              name: "Jayanthi PN",
              imageName: "assets/jayanthi.png",
              time: "01.22",
            ),
            const OthersStatus(
              name: "Lokesh",
              imageName: "assets/Lokesh.jpeg",
              time: "02.22",
            ),
            const OthersStatus(
              name: "Tanvitha",
              imageName: "assets/Lokesh.jpeg",
              time: "04.22",
            ),
            const SizedBox(height: 10),
            label("Viewed updates"),
            const OthersStatus(
              name: "Jayanthi PN",
              imageName: "assets/jayanthi.png",
              time: "01.22",
            ),
            const OthersStatus(
              name: "Lokesh",
              imageName: "assets/Lokesh.jpeg",
              time: "02.22",
            ),
            const OthersStatus(
              name: "Tanvitha",
              imageName: "assets/Lokesh.jpeg",
              time: "04.22",
            ),
          ],
        ),
      ),
    );
  }

  Widget label(String lableName) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Text(
          lableName,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
