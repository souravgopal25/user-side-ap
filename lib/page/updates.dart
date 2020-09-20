import 'package:flutter/material.dart';
import 'package:user_side_ap/card/update_card.dart';

class Updates extends StatelessWidget {
  const Updates({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Updates"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [UpdateCard(), UpdateCard()],
        ),
      ),
    );
  }
}
