import 'package:flutter/material.dart';
import 'package:layout_pesawat/theme.dart';
import 'package:layout_pesawat/widgets/attraction_list_view.dart';
import 'package:layout_pesawat/widgets/bottom_navbar.dart';
import 'package:layout_pesawat/widgets/header_widget_home.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryGray,
        iconTheme: IconThemeData(
          color: mainYellow,
        ),
        title: Center(
          child: Icon(
            Icons.airplanemode_on,
            color: mainYellow,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 10,
            ),
            child: Icon(
              Icons.notification_add_outlined,
              color: Colors.grey,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: mainYellow,
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(20),
          child: Icon(
            Icons.airplanemode_on,
            color: (Colors.grey),
            size: 80,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryGray, secondaryGray],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HeaderWidgetHome(),
            AttractionListView(),
            BottomNavbar(),
          ],
        ),
      ),
    );
  }
}
