import 'package:flutter/material.dart';
import 'package:gotaf/app/core/assets/constans.dart';
import 'package:gotaf/app/core/utils/svg.dart';

class HomePageImage extends StatelessWidget {
  final double heigth;
  HomePageImage({required this.heigth});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: heigth / 4,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(intro_img_mobile),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          right: 50,
          child: Container(
            height: 100,
            width: 100,
            child: IconButton(
              icon: svgParser(icon_lecteur, 'label'),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
