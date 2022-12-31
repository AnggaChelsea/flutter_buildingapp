import 'package:flutter/material.dart';
import 'package:layout_pesawat/helpers/mock/attraction_mock.dart';
import 'package:layout_pesawat/models/attraction_model.dart';
import 'package:layout_pesawat/widgets/attraction_card.dart';

class AttractionListView extends StatelessWidget {
  const AttractionListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(
          left: 10,
        ),
        itemCount: attractions.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          AttractionModel currentAttraction = attractions[index];
          return AttractionCard(
            attractionModel: currentAttraction,
          );
        },
      ),
    );
  }
}
