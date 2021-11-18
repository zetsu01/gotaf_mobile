import 'package:flutter/material.dart';
import 'package:gotaf/app/core/assets/constans.dart';
import 'package:gotaf/app/core/utils/svg.dart';
import 'package:gotaf/app/presentation/jobs/job-detail/job_detail.dart';
import 'package:gotaf/app/theme/theme_data.dart';

class JobCardWidget extends StatelessWidget {
  const JobCardWidget();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => JobDetailPage(),
          ),
        );
      },
      child: Material(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: AssetImage(
                        job_1,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 25, width: 25, child: svgParser(icon_urgence_map, 'icon_urgence_map')),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(image: AssetImage(cardImgLogo), fit: BoxFit.cover),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                        child: Text(
                          "Cariste kjebz hh khkjh k",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 1, right: 10, left: 10),
                        child: Text(
                          "Interime - Sucy en Brie",
                          style: Theme.of(context).textTheme.headline6?.copyWith(
                                color: GotafColors.primaryDark,
                                fontSize: 10,
                              ),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('object');
                      },
                      child: Transform.translate(
                        offset: Offset(0, 20),
                        child: Material(
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          child: Container(height: 45, width: 45, child: svgParser(pictoAudioMedium, 'pictoAudioMedium')),
                        ),
                      ),
                    )
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
