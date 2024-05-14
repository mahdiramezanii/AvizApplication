import 'package:aviz_application/constant/colors.dart';
import 'package:aviz_application/widgets/app_bar.dart';
import 'package:aviz_application/widgets/aviz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "مشاهده همه",
                      style: TextStyle(
                        color: MyColors.grey400,
                        fontFamily: "sm",
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "آویز های داغ",
                      style: TextStyle(
                        color: MyColors.grey700,
                        fontFamily: "sb",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              sliver: SliverToBoxAdapter(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: SizedBox(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            right: index == 0 ? 15 : 0,
                            top: 15,
                          ),
                          child: VerticalAviz(),
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "مشاهده همه",
                      style: TextStyle(
                        color: MyColors.grey400,
                        fontFamily: "sm",
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "آویز های اخیر",
                      style: TextStyle(
                        color: MyColors.grey700,
                        fontFamily: "sb",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return const HorizontalAviz();
                  },
                  childCount: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
