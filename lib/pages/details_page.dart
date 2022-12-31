import 'package:flutter/material.dart';
import 'package:layout_pesawat/models/attraction_model.dart';
import 'package:layout_pesawat/theme.dart';

class DetailsPage extends StatelessWidget {
  AttractionModel? selectedAttraction;
  DetailsPage({this.selectedAttraction});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                image: DecorationImage(
                    image: NetworkImage(
                      selectedAttraction!.imgPath!,
                    ),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  selectedAttraction!.name!,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  selectedAttraction!.location!,
                  style: TextStyle(color: mainYellow),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  selectedAttraction!.description!,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child: Text(
                          "View Comment",
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.4)),
                        ),
                        onPressed: () {},
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        child: Material(
                          color: mainYellow,
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.black.withOpacity(0.1),
                            highlightColor: Colors.black.withOpacity(0.5),
                            child: Container(
                              padding: EdgeInsets.only(
                                top: 10,
                                bottom: 10,
                                left: 20,
                                right: 10,
                              ),
                              child: Text(
                                "Use Interary",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
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
