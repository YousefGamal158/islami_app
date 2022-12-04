import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/hadeth/hadeth.dart';

import 'hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty) LoadHadethFile();
    return Container(
      child: Column(
        children: [
          Image.asset('assets/images/hadeth_head.png'),
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, index) {
                return HadethTitleWidget(allHadethList[index]);
              },
              itemCount: allHadethList.length,
              separatorBuilder: (_, index) {
                return Container(
                  color: Theme.of(context).primaryColor,
                  width: double.infinity,
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 64),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void LoadHadethFile() async {
    List<Hadeth> hadethList = [];
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadethcontent = content.split("#");
    for (int i = 0; i < allHadethcontent.length; i++) {
      String singleHadeth = allHadethcontent[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf('\n');
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);
      Hadeth h = Hadeth(title, content);
      hadethList.add(h);
    }
    allHadethList = hadethList;
    setState(() {});
  }
}