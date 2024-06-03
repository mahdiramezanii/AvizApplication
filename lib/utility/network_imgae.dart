import 'package:aviz_application/constant/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CashNetworkImage extends StatelessWidget {
  String image_url;
  double? width;
  double? height;
  CashNetworkImage({required this.image_url, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image_url,
      placeholder: (context, url) {
        return Container(
          color: Colors.white,
          height: height ?? 30,
          width: width ?? 30,
          child: Center(
              child: CircularProgressIndicator(
            color: MyColors.PrimaryBase,
          )),
        );
      },
      errorWidget: (context, url, error) {
        return Container(
          height: 26,
          width: 26,
          child: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
