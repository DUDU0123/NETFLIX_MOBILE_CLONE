import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/components/common_widgets/appbar_widget.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/view/new_and_hot/pages/coming_soon/coming_soon_page.dart';
import 'package:netflix/view/new_and_hot/pages/everyones_watching/everyones_watching_page.dart';

class NewAndHotPage extends StatelessWidget {
  const NewAndHotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBarWidgetCommon(
            title: "New & Hot",
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.sp), color: kWhite),
              dividerColor: kTransparent,
              unselectedLabelColor: kWhite,
              labelColor: kBlack,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              tabs: const [
                Tab(
                  text: "🍿Coming Soon",
                ),
                Tab(
                  text: "👀Everyone's Watching",
                ),
              ],
            ),
          ),
        ),
        body:  TabBarView(children: [
          ComingSoonPage(),
         const EveryOnesWatchingPage(),
        ],)
      ),
    );
  }
}
