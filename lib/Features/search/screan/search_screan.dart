
import 'package:aviz/Features/search/bloc/search_bloc.dart';
import 'package:aviz/Features/search/bloc/search_event.dart';
import 'package:aviz/Features/search/bloc/serch_state.dart';
import 'package:aviz/constant/colors.dart';
import 'package:aviz/widgets/app_bar.dart';
import 'package:aviz/widgets/aviz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SerachScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SerachBloc, SerachState>(builder: (context, state) {
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
                      context
                          .read<SerachBloc>()
                          .add(RequestToSerachEvent(query: value));
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
                        borderSide: BorderSide(color: MyColors.PrimaryBase),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (state is LoadingSerachState) ...{
              const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()),
              )
            },
            if (state is ResponseSerchState) ...{
              state.promotioan_serch_result.fold((l) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Text(l),
                  ),
                );
              }, (promotaionList) {
                return SliverPadding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: HorizontalAviz(promotaionList[index]),
                        );
                      },
                      childCount: promotaionList.length
                    ),
                    
                  ),
                );
              }),
            }
          ],
        ),
      );
    });
  }
}
