import 'package:flutter/material.dart';
import 'package:gotaf/app/core/assets/constans.dart';
import 'package:gotaf/app/core/utils/svg.dart';
import 'package:gotaf/app/theme/theme_data.dart';

class SocialNetworkWidget extends StatelessWidget {
  const SocialNetworkWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Column(
              children: [
                Text("Nous croyons dans le potentiel de chacun", textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15)),
                Text("Retrouvez-nous sur les réseaux sociaux", textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: svgParser(icon_social_facebook, 'icon_social_facebook'), onPressed: () {}),
              IconButton(icon: svgParser(icon_social_insta, 'icon_social_insta'), onPressed: () {}),
              IconButton(icon: svgParser(icon_social_youtube, 'icon_social_youtube'), onPressed: () {}),
              IconButton(icon: svgParser(icon_social_twitter, 'icon_social_twitter'), onPressed: () {}),
              IconButton(icon: svgParser(icon_social_twitch, 'icon_social_twitch'), onPressed: () {}),
              IconButton(icon: svgParser(icon_social_linkedin, 'icon_social_linkedin'), onPressed: () {}),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: GotafColors.greyLigth,
      ),
    );
  }
}
