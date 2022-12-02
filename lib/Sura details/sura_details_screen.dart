import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Sura%20details/sura_details_args.dart';
import 'package:islami_app/Sura%20details/verse_Widget.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs args =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsArgs;
    if (verses.isEmpty) readFile(args.index + 1);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/main_background.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.name),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Card(
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                elevation: 12,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(3)),
                child: ListView.separated(
                  itemBuilder: (_, index) {
                    return VerseWidget(verses[index], index + 1);
                  },
                  itemCount: verses.length,
                  separatorBuilder: (_, __) {
                    return Container(
                      color: Theme.of(context).primaryColor,
                      width: double.infinity,
                      height: 1,
                      margin: EdgeInsets.symmetric(horizontal: 64),
                    );
                  },
                ),
              ),
      ),
    );
  }

  void readFile(int fileIndex) async {
    String fileContent = await rootBundle
        .loadString('assets/files/$fileIndex.txt'); //blocking code
    List<String> lines = fileContent.trim().split('\n');

    setState(() {
      verses = lines;
    });
  }
}
