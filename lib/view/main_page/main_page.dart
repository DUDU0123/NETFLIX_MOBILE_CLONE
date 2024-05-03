import 'package:flutter/material.dart';
import 'package:netflix/view/downloads/downloads_page.dart';
import 'package:netflix/view/fast_laughs/fast_laughs_page.dart';
import 'package:netflix/view/home/home_page.dart';
import 'package:netflix/view/main_page/bottom_nav.dart';
import 'package:netflix/view/new_and_hot/new_and_hot_page.dart';
import 'package:netflix/view/search/search_page.dart';


class MainPage extends StatelessWidget {
   MainPage({super.key});

  final _pages = [
    HomePage(),
    const NewAndHotPage(),
     FastLaughsPage(),
    SearchPage(),
    DownloadsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(valueListenable: selectedIndexNotifier, builder: (context,int index, _) {
        return _pages[index];
      },),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
