import 'package:flutter/material.dart';
import 'package:flutternotebook5th/ep441_e_learning_app/home_card_item.dart';
import 'package:google_fonts/google_fonts.dart';

class ELearningHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 24,
              right: 0,
              top: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Icon(Icons.keyboard_arrow_left),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 3),
                    child: Text(
                      "Select a",
                      style: GoogleFonts.montserrat(fontSize: 22),
                    ),
                  ),
                  Text(
                    "Plan To Learn",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit,'
                        ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
                      ))
                ],
              ),
            ),
            Positioned(
              right: -24,
              top: 0,
              child: Container(
                height: 120,
                width: 180,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://assets-ouch.icons8.com/thumb/208/447d3cc2-398c-4b4f-ba74-952639825135.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              left: 16,
              bottom: 16,
              right: 16,
              top: 240,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: HomeCardItem(
                            posSetting: true,
                            title: "Conversation",
                            borderRadiusGeometry: BorderRadius.only(
                              topLeft: Radius.circular(160),
                              topRight: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                              bottomLeft: Radius.circular(24),
                            ),
                            cardColor: Colors.purple[400],
                            img: "https://assets-ouch.icons8.com/thumb/742/18be8202-4db4-4fd8-bcf2-8db2deb63c63.png",
                            topPosition: [8, 8, 0, 4],
                            bottomPosition: [8, 8, 0, 4],
                          ),
                        ),
                        Expanded(
                          child: HomeCardItem(
                            posSetting: true,
                            title: "special topics",
                            borderRadiusGeometry: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(160),
                              bottomRight: Radius.circular(24),
                              bottomLeft: Radius.circular(24),
                            ),
                            cardColor: Colors.red[400],
                            img: "https://assets-ouch.icons8.com/thumb/631/32d26368-cc36-4f6f-bc6c-1309f8727bec.png",
                            topPosition: [8, 8, 0, 4],
                            bottomPosition: [16, 8, 16, 8],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: HomeCardItem(
                            title: "Listening",
                            borderRadiusGeometry: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                              bottomLeft: Radius.circular(160),
                            ),
                            cardColor: Colors.teal[400],
                            img: "https://assets-ouch.icons8.com/thumb/276/af616f49-a851-4014-ad85-9ae9f25ae1bd.png",
                            topPosition: [8, 8, 8, 0],
                            bottomPosition: [16, 8, 16, 8],
                          ),
                        ),
                        Expanded(
                          child: HomeCardItem(
                            title: "IELTS",
                            borderRadiusGeometry: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                              bottomRight: Radius.circular(160),
                              bottomLeft: Radius.circular(24),
                            ),
                            cardColor: Colors.orange[200],
                            img: "https://assets-ouch.icons8.com/thumb/853/0f654408-ed3c-4fea-812f-35185d116b98.png",
                            topPosition: [8, 8, 8, 0],
                            bottomPosition: [0, 8, 16, 8],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
