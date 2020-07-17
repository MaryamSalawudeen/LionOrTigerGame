import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternotebook5th/ep429_fasion_store_app/detail_page.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        "FEAR OF GOD",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(color: Colors.grey[300])),
                      padding: EdgeInsets.only(left: 8),
                      child: TextField(
                        decoration:
                            InputDecoration(icon: Icon(Icons.search), border: InputBorder.none, hintText: "Search"),
                      ),
                    ),
                  )
                ],
              )),
          Expanded(
            flex: 5,
            child: Hero(
              tag: "home",
              child: GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShopDetailPage())),
                child: Container(
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage("https://cdn.pixabay.com/photo/2017/08/06/15/13/woman-2593366_960_720.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "OUTERWEAR",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 16),
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 16),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2018/09/12/12/37/cloth-3672088_960_720.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "NYLON FULL ZIP HOODIE",
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Text("\$1,180.00"),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
