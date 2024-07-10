import 'package:aviz_application/constant/colors.dart';
import 'package:aviz_application/widgets/app_bar.dart';
import 'package:aviz_application/widgets/aviz.dart';
import 'package:flutter/material.dart';

class SerachScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.greyBase,
      appBar: AvizAppBar(title: "جستجوی آویز"),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            sliver: SliverToBoxAdapter(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  onSubmitted: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(5),
                      hintText: "جستجو...",
                      
                      hintStyle:
                          TextStyle(color: MyColors.grey400, fontFamily: "sb"),
                      prefixIcon:
                          Image.asset("assets/images/search-normal.png"),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: MyColors.grey400,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: MyColors.PrimaryBase))),
                ),
              ),
            ),
          ),
          // SliverPadding(
          //   padding: const EdgeInsets.symmetric(
          //     vertical: 10,
          //     horizontal: 10,
          //   ),
          //   sliver: SliverList(
          //       delegate: SliverChildBuilderDelegate((context, index) {
          //     return const Padding(
          //       padding: EdgeInsets.only(bottom: 8),
          //       child: HorizontalAviz(),
          //     );
          //   })),
          // )
        ],
      ),
    );
  }
}
