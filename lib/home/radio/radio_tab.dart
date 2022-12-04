import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(child: Image.asset('assets/images/radio_head.png')),
        Container(
          child: Image.asset('assets/images/radio_button.png'),
        )
      ],
    ));
  }
}
