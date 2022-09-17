import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third_training/main.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dBlack,
      appBar: AppBar(
        backgroundColor: dBlack,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 23,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 23,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ChattingSection(),
      bottomNavigationBar: BottomSection(),
    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(20),
        height: 100,
        color: dWhite,
        child: Row(
          children: [
            Expanded(
                child: Container(
              height: 45,
              decoration: const BoxDecoration(
                color: dGreen,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Row(
                children: const [
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.insert_emoticon,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  )),
                  Icon(
                    Icons.upload_outlined,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Icon(
                    Icons.image,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                ],
              ),
            )),
            Container(
              margin: const EdgeInsets.only(
                left: 25,
              ),
              height: 45,
              width: 45,
              decoration:
                  const BoxDecoration(color: dGreen, shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mic_none_sharp),
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChattingSection extends StatelessWidget {
  const ChattingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
          color: dWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              "Moussa Onno",
              style: GoogleFonts.inter(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "En ligne il y'a 1 minute",
              style: GoogleFonts.inter(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
