import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/hadeth/hadeth_tab.dart';
import 'package:islami_app/home/quran/quran_tab.dart';
import 'package:islami_app/home/radio/radio_tab.dart';
import 'package:islami_app/home/sebha/sebha_tab.dart';
import 'package:islami_app/providers/settings_provider.dart';
import 'package:provider/provider.dart';

import 'Settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(settingsProvider.getMainBackgroundImage()),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.islami,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Theme.of(context).primaryColor,
              onTap: (newlySelectedIndex) {
                setState(() {
                  selectedIndex = newlySelectedIndex;
                });
              },
              currentIndex: selectedIndex,
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: AppLocalizations.of(context)!.quran,
                ),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                    label: AppLocalizations.of(context)!.tasbeh),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: ImageIcon(AssetImage('assets/images/radio.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings),
              ]),
          body: tabs[selectedIndex],
        ));
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    HadethTab(),
    RadioTab(),
    SettingsTab()
  ];
}
