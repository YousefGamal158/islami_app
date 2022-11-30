import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              child: Image.asset(
            'assets/images/heads.png',
          )),
          Expanded(
              flex: 8,
              child: InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Image.asset('assets/images/bodys.png'),
                  )))
        ],
      ),
    );
  }
}
