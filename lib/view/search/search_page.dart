import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:netflix/components/search/default_search_field.dart';
import 'package:netflix/constants/colors/colors.dart';
import 'package:netflix/constants/height_width/height_width.dart';
import 'package:netflix/view/search/pages/default_search_page/default_search_page.dart';
import 'package:netflix/view/search/pages/search_result_page/search_result_page.dart';
import 'package:netflix/view_model/search/search_getx_controller.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  SearchGetxController sController = Get.put(SearchGetxController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
          child: Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Obx(
                //   () => 
                // ),
                GestureDetector(
                    onTap: () {
                      userClickFinder(isUserClicked: sController.isUserClicked);
                    },
                    child: !sController.isUserClicked.value
                        ? const DeafultSearchField()
                        : CupertinoSearchTextField(
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 16.sp,
                            ),
                            suffixIcon: Icon(
                              CupertinoIcons.xmark_circle_fill,
                              color: kSearchBarIconColor,
                            ),
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                              color: kSearchBarIconColor,
                            ),
                            keyboardType: TextInputType.text,
                            backgroundColor: kGrey.withOpacity(0.3),
                            onSubmitted: (value) {
                              sController.val.value = value;
                              sController.fetchSearchedMovie(value);
                            },
                          ),
                  ),
                kHeight10,
                sController.val.isEmpty
                    ? Expanded(
                        child: SearchDefaultPage(),
                      )
                    : Expanded(
                        child: SearchResultPage(),
                      ),
              ],
            );
          }),
        ),
      ),
    );
  }

  userClickFinder({required RxBool isUserClicked}) {
    if (!isUserClicked.value) {
      isUserClicked.value = true;
    } else {
      isUserClicked.value = false;
    }
  }
}
