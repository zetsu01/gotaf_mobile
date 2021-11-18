import 'package:flutter/material.dart';
import 'package:gotaf/app/core/assets/constans.dart';
import 'package:gotaf/app/core/utils/svg.dart';
import 'package:gotaf/app/theme/theme_data.dart';

class JobFavoriteWidget extends StatelessWidget {
  const JobFavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heigth = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 5.0,
        child: Container(
          height: heigth / 5.1,
          width: width,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                width: ((width - 20) * 4) / 10,
                height: heigth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), topLeft: Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(
                      job_1,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Container(height: 25, width: 25, child: svgParser(icon_urgence_map, 'icon_urgence_map')),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage(cardImgLogo), fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: ((width - 20) * 6) / 10,
                height: heigth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: width / 4,
                              child: Text(
                                "ghvhcsdhjcdhvehjzebe",
                                softWrap: true,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Text(
                              "1233.00 €",
                              style: Theme.of(context).textTheme.headline6?.copyWith(
                                    fontSize: 11,
                                  ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: width / 4,
                              child: Text(
                                "CDD-Lille",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 10,
                                    ),
                              ),
                            ),
                            Text(
                              "hfjdjf/mois ",
                              style: Theme.of(context).textTheme.headline6?.copyWith(
                                    fontSize: 11,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          child: svgParser(pictoAudioMedium, 'pictoAudioMedium'),
                        ),
                        Icon(
                          Icons.favorite,
                          color: GotafColors.primaryDark,
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
