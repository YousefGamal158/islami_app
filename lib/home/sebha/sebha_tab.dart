import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int currentindex = 0;
  List<String> azkar = ['سبحان الله', 'الحمد لله', 'الله اكبر'];
  double angle = 0.0;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: mediaQuery.height * 0.36,

            ///TODO Edit on Image Header
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/images/heads.png',
                    height: mediaQuery.height * 0.1,
                  ),
                  left: mediaQuery.width * 0.45,
                ),
                Positioned(
                  top: 55,
                  left: mediaQuery.width * 0.2,
                  child: GestureDetector(
                    onTap: () {
                      onClick();
                    },
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset('assets/images/bodys.png',
                          height: mediaQuery.height * 0.28),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 70,
            height: 80,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              count.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 140,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              azkar[currentindex],
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  onClick() {
    setState(() {
      count++;
      angle--;
      if (count == 33) {
        currentindex++;
        count = 0;
      }
      if (currentindex > azkar.length - 1) {
        currentindex = 0;
      }
    });
  }
}
