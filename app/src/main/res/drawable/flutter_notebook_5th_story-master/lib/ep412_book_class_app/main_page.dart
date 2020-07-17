import 'package:calendar_strip/calendar_strip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternotebook5th/ep412_book_class_app/app_class.dart';

class LoadBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("build--MaterialApp------");
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => BookingMainPage(),
      },
    );
  }
}

class BookingMainPage extends StatefulWidget {
  @override
  _BookingMainPageState createState() => _BookingMainPageState();
}

class _BookingMainPageState extends State<BookingMainPage> {
  getMarkedIndicatorWidget() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        margin: EdgeInsets.only(left: 1, right: 1),
        width: 7,
        height: 7,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      ),
      Container(
        width: 7,
        height: 7,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      )
    ]);
  }

  dateTileBuilder(date, selectedDate, rowIndex, dayName, isDateMarked, isDateOutOfRange) {
    bool isSelectedDate = date.compareTo(selectedDate) == 0;
    Color fontColor = isDateOutOfRange ? Colors.white : Colors.black87;
    TextStyle normalStyle = TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: fontColor);
    TextStyle selectedStyle = TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: Colors.white);
    TextStyle dayNameStyle = TextStyle(fontSize: 14.5, color: fontColor);
    List<Widget> _children = [
      Text(dayName, style: !isSelectedDate ? normalStyle : selectedStyle),
      Text(date.day.toString(), style: !isSelectedDate ? normalStyle : selectedStyle),
    ];

    if (isDateMarked == true) {
      _children.add(getMarkedIndicatorWidget());
    }

    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 8, left: 5, right: 5, bottom: 5),
      decoration: BoxDecoration(
        color: !isSelectedDate ? Colors.transparent : Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(60)),
      ),
      child: Column(
        children: _children,
      ),
    );
  }

  List<AppClass> _items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items = [
      AppClass(title: "CYCLING", subtitle: "con Mario", isReserved: false, time: "06:00", duration: "45min"),
      AppClass(title: "WORKOUTBAR", subtitle: "con Mario", isReserved: false, time: "06:00", duration: "45min"),
      AppClass(title: "WORKOUTBAR", subtitle: "con Edgar", isReserved: true, time: "09:15", duration: "1hr"),
      AppClass(title: "CYCLING", subtitle: "con Maria", isReserved: true, time: "09:15", duration: "1hr"),
      AppClass(title: "CYCLING", subtitle: "con Sofia", isReserved: true, time: "10:15", duration: "1hr"),
      AppClass(title: "CYCLING", subtitle: "con Mario", isReserved: false, time: "06:00", duration: "45min"),
      AppClass(title: "WORKOUTBAR", subtitle: "con Mario", isReserved: false, time: "06:00", duration: "45min"),
      AppClass(title: "WORKOUTBAR", subtitle: "con Edgar", isReserved: true, time: "09:15", duration: "1hr"),
      AppClass(title: "CYCLING", subtitle: "con Maria", isReserved: true, time: "09:15", duration: "1hr"),
      AppClass(title: "CYCLING", subtitle: "con Sofia", isReserved: true, time: "10:15", duration: "1hr"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "clases".toUpperCase(),
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 42,
          color: Colors.grey[100],
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                        size: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "Clases",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person_outline,
                        color: Colors.black,
                        size: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "Perfil",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person_outline,
                        color: Colors.black,
                        size: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "Instructor",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.notifications_active,
                        color: Colors.black,
                        size: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "Grab n' Go",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.all_inclusive,
                        color: Colors.black,
                        size: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "Compare",
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: CalendarStrip(
                dateTileBuilder: dateTileBuilder,
                iconColor: Colors.black,
                onDateSelected: (data) {
                  print(data);
                },
              ),
              margin: EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(0, 2),
                )
              ]),
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4)),
                          child: Center(
                            child: Text(
                              "Todos",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text(
                              "Cycling",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Text(
                              "Workoutbar",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          height: 52,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "${_items[index].time}",
                                      style: _items[index].isReserved
                                          ? TextStyle(fontWeight: FontWeight.bold)
                                          : TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        _items[index].duration,
                                        style: _items[index].isReserved
                                            ? TextStyle(fontWeight: FontWeight.bold, fontSize: 10)
                                            : TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 10),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text.rich(TextSpan(children: [
                                        TextSpan(
                                          text: _items[index].title,
                                          style: _items[index].isReserved
                                              ? TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                )
                                              : TextStyle(color: Colors.grey[500]),
                                        ),
                                        TextSpan(
                                            text: _items[index].subtitle,
                                            style: _items[index].isReserved
                                                ? TextStyle(fontSize: 10, color: Colors.grey)
                                                : TextStyle(fontSize: 10))
                                      ])),
                                      Spacer()
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: _items[index].isReserved
                                    ? Container(
                                        margin: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Reservar",
                                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    : Container(
                                        margin: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Agotado",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: _items.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider();
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
