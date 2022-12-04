import 'package:flutter/material.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'الوضع',
            style: Theme.of(context).textTheme.headline4,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showThemeBottmSheet();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      color: Theme.of(context).accentColor, width: 1)),
              child: Text(
                'فاتح',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'اللغة',
            style: Theme.of(context).textTheme.headline4,
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border:
                    Border.all(color: Theme.of(context).accentColor, width: 1)),
            child: Text(
              'العربية',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottmSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return Container();
        });
  }
}
