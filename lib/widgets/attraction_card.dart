import 'package:flutter/material.dart';
import 'package:layout_pesawat/models/attraction_model.dart';
import 'package:layout_pesawat/theme.dart';

class AttractionCard extends StatelessWidget {
  @override
  AttractionModel? attractionModel;
  AttractionCard({this.attractionModel});
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        attractionModel!.imgPath!,
                      ),
                      fit: BoxFit.cover)),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.5),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    attractionModel!.name!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    attractionModel!.location!,
                    style: TextStyle(color: mainYellow),
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
