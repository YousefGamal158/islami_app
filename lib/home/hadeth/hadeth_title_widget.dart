import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth/hadeth.dart';
import 'package:islami_app/home/hadeth_details/hadeth_details.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetails.routeName,
            arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
