import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/Settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
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
                settingsProvider.currentTheme.name,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headline4,
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border:
                Border.all(color: Theme.of(context).accentColor, width: 1)),
            child: Text(
              AppLocalizations.of(context)!.english,
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
          return Container(
            child: ThemeBottomSheet(),
          );
        });
  }
}
