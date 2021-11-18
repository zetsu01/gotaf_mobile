import 'package:flutter/material.dart';
import 'package:gotaf/app/core/assets/constans.dart';
import 'package:gotaf/app/core/utils/svg.dart';
import 'package:gotaf/app/presentation/jobs/job-categorie/job_categorie.dart';
import 'package:gotaf/app/theme/theme_data.dart';

class CategorieCarousel extends StatelessWidget {
  CategorieCarousel();
  List<JobCategorie> _list = [
    JobCategorie(audio: 'audio', logo: iconCatBTP, name: 'BTP'),
    JobCategorie(audio: 'audio', logo: iconCatBTP, name: 'Services'),
    JobCategorie(audio: 'audio', logo: iconCatBTP, name: 'Restauration'),
    JobCategorie(audio: 'audio', logo: iconCatBTP, name: 'Commerce'),
    JobCategorie(audio: 'audio', logo: iconCatBTP, name: 'Logistique'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: _list
          .map(
            (e) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => JobCategoriePage(),
                  ),
                );
              },
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Stack(
                    children: [
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(color: GotafColors.greyLigth, borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              e.name.toString(),
                              style: Theme.of(context).textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: GotafColors.tertiary,
                                  ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              child: Center(
                                child: svgParser(e.logo.toString(), e.name.toString()),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('object');
                        },
                        child: Transform.translate(
                          offset: Offset(30, 100),
                          child: Material(
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: Container(height: 35, width: 35, child: svgParser(pictoAudioMedium, 'pictoAudioMedium')),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          )
          .toList(),
    );

    // Row(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: _list
    //       .map(
    //         (e) => Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 10),
    //             child: Stack(
    //               children: [
    //                 Container(
    //                   height: 110,
    //                   width: 100,
    //                   decoration: BoxDecoration(color: GotafColors.greyLigth, borderRadius: BorderRadius.circular(20)),
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [
    //                       Text(
    //                         e.name.toString(),
    //                         style: Theme.of(context).textTheme.headline6?.copyWith(
    //                               fontWeight: FontWeight.bold,
    //                               fontSize: 14,
    //                               color: GotafColors.tertiary,
    //                             ),
    //                       ),
    //                       Container(
    //                         height: 40,
    //                         width: 40,
    //                         child: Center(
    //                           child: svgParser(e.logo.toString(), e.name.toString()),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 Transform.translate(
    //                   offset: Offset(0, 100),
    //                   child: Material(
    //                     elevation: 2.0,
    //                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    //                     child: Container(height: 35, width: 35, child: svgParser(pictoAudioMedium, 'pictoAudioMedium')),
    //                   ),
    //                 ),
    //               ],
    //             )),
    //       )
    //       .toList(),
    // );
  }
}

class JobCategorie {
  String? name;
  String? logo;
  String? audio;

  JobCategorie({required this.audio, required this.logo, required this.name});
}
