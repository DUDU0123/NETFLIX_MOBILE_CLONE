import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netflix/constants/colors/colors.dart';
ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedIndexNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          onTap: (index) {
            selectedIndexNotifier.value = index;
          },
          backgroundColor: kBlack,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndexNotifier.value,
          selectedItemColor: kWhite,
          unselectedItemColor: kGrey,
          selectedLabelStyle: TextStyle(fontSize: 10.sp),
          unselectedLabelStyle: TextStyle(fontSize: 10.sp),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: "New & Hot",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.sentiment_satisfied_sharp,
              ),
              label: "Fast Laughs",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.arrow_circle_down_rounded,
              ),
              label: "Downloads",
            ),
          ],
        );
      },
    );
  }
}
