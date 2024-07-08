import 'package:aviz_application/Features/Home/bloc/home_bloc.dart';
import 'package:aviz_application/Features/Home/bloc/home_state.dart';
import 'package:aviz_application/constant/colors.dart';
import 'package:aviz_application/widgets/app_bar.dart';
import 'package:aviz_application/widgets/aviz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return Scaffold(
        appBar: getAppBar(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              if (state is LoadingHomeSatet) ...{
                const SliverPadding(
                  padding: EdgeInsets.all(10),
                  sliver: SliverToBoxAdapter(
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                )
              },
              if (state is ResponseHomeState) ...{
                SliverPadding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                state.promotopanList.fold((l) {
                  return SliverToBoxAdapter(
                    child: Text(l),
                  );
                }, (promotaionList) {
                  return SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    sliver: SliverToBoxAdapter(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: SizedBox(
                          height: 300,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: promotaionList.length,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    left: 15,
                                    right: index == 0 ? 15 : 0,
                                    top: 15,
                                    bottom: 15),
                                child: VerticalAviz(
                                  promotaion: promotaionList[index],
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              },
              SliverPadding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: HorizontalAviz(),
                      );
                    },
                    childCount: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
