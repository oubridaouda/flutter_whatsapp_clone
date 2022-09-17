import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_training/chat_page.dart';

const dGreen = Color(0xFF2ac0a6);
const dWhite = Colors.white;
const dBlack = Colors.black;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: dWhite, size: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: dWhite, size: 30),
          ),
        ],
      ),
      body: Column(
        children: [
          MenuSection(),
          FavoriteSection(),
          Expanded(
            child: MessageSection(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: dGreen,
        child: const Icon(
          Icons.edit,
          size: 20,
        ),
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  final List menuItems = ["Message", "Online", "Groups", "Calls"];

  MenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: dBlack,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: menuItems.map((item) {
              return Container(
                margin: const EdgeInsets.only(right: 55),
                child: Text(
                  item,
                  style: GoogleFonts.inter(color: Colors.white60, fontSize: 29),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class FavoriteSection extends StatelessWidget {
  FavoriteSection({Key? key}) : super(key: key);
  final List favoriteContact = [
    {"name": "Alla", "profile": "images/avatars/avatar7.jpg"},
    {"name": "July", "profile": "images/avatars/avatar2.jpg"},
    {"name": "Mikle", "profile": "images/avatars/avatar4.jpg"},
    {"name": "keler", "profile": "images/avatars/avatar1.jpg"},
    {"name": "Morelle", "profile": "images/avatars/avatar6.jpg"},
    {"name": "Helen", "profile": "images/avatars/avatar3.jpg"},
    {"name": "Steve", "profile": "images/avatars/avatar8.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dBlack,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: const BoxDecoration(
            color: dGreen,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            )),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Favorite contacts",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 20,
                    ))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: favoriteContact.map((favorite) {
                  return Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(favorite['profile']),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          favorite['name'],
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessageSection extends StatelessWidget {
  MessageSection({Key? key}) : super(key: key);
  final List messages = [
    {
      "senderProfile": "images/avatars/avatar2.jpg",
      "senderName": "Laura",
      "message": "Hello",
      "unRead": 1,
      "date": "16:37"
    },
    {
      "senderProfile": "images/avatars/avatar3.jpg",
      "senderName": "Keler",
      "message": "On mange quand ?",
      "unRead": 4,
      "date": "16:37"
    },
    {
      "senderProfile": "images/avatars/avatar1.jpg",
      "senderName": "Moussa",
      "message": "Tu n'est pas encors arrivé ?",
      "unRead": 2,
      "date": "8:37"
    },
    {
      "senderProfile": "images/avatars/avatar4.jpg",
      "senderName": "Moussa",
      "message": "Tu n'est pas encors arrivé ?",
      "unRead": 2,
      "date": "8:37"
    },
    {
      "senderProfile": "images/avatars/avatar5.jpg",
      "senderName": "Moussa",
      "message": "Tu n'est pas encors arrivé ?",
      "unRead": 2,
      "date": "8:37"
    },
    {
      "senderProfile": "images/avatars/avatar6.jpg",
      "senderName": "Moussa",
      "message": "Tu n'est pas encors arrivé ?",
      "unRead": 2,
      "date": "8:37"
    },
    {
      "senderProfile": "images/avatars/avatar7.jpg",
      "senderName": "Moussa",
      "message": "Tu n'est pas encors arrivé ?",
      "unRead": 2,
      "date": "8:37"
    },
    {
      "senderProfile": "images/avatars/avatar8.jpg",
      "senderName": "Moussa",
      "message": "Tu n'est pas encors arrivé ?",
      "unRead": 2,
      "date": "8:37"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: messages.map((message) {
          return InkWell(
              splashColor: dGreen,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatPage()),
                );
              },
              child: Container(
                padding: EdgeInsets.only(left: 30, right: 10, top: 15),
                child: Row(
                  children: [
                    Container(
                      width: 62,
                      height: 62,
                      margin: EdgeInsets.only(right: 23),
                      decoration: BoxDecoration(
                        color: dGreen,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              message["senderProfile"],
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  message["senderName"],
                                  style: GoogleFonts.inter(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                                Wrap(children: [
                                  Text(
                                    message["message"],
                                    style: GoogleFonts.inter(
                                        color: Colors.black87,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]),
                              ],
                            ),
                            Column(
                              children: [
                                Text(message["date"]),
                                message['unRead'] != 0
                                    ? Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: const BoxDecoration(
                                          color: dGreen,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Text(
                                            message['unRead'].toString(),
                                            style: GoogleFonts.inter(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500)))
                                    : Container()
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          color: Colors.grey[400],
                          height: 0.5,
                        )
                      ],
                    ))
                  ],
                ),
              ));
        }).toList(),
      ),
    );
  }
}
