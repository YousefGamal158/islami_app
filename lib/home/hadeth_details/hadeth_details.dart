import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'HadethDetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/main_background_dark.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
            elevation: 12,
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(3)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  args.content,
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
