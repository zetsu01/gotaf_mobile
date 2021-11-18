import 'package:flutter/material.dart';
import 'package:gotaf/app/core/assets/constans.dart';
import 'package:gotaf/app/core/utils/svg.dart';
import 'package:gotaf/app/core/widgets/footer_widget.dart';
import 'package:gotaf/app/presentation/jobs/job-detail/local_widget/similar_jobs.dart';
import 'package:gotaf/app/theme/theme_data.dart';

class JobDetailPage extends StatelessWidget {
  const JobDetailPage();

  @override
  Widget build(BuildContext context) {
    double heigth = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Text("MBV recherche ........"),
          Stack(
            children: [
              Container(
                height: heigth / 3,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(job_1),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: heigth / 16,
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: width / 2.4,
                          height: heigth / 16,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.ac_unit_outlined),
                              Text(
                                "RESTAURATION",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: width / 3,
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.favorite_border, color: Colors.white),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          AudioAndLogo(),
          Container(
            height: heigth / 2,
            child: JobTab(),
          ),
          Divider(),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: GotafColors.tertiary,
                  elevation: 2.0,
                ),
                onPressed: () {},
                child: Container(
                  width: width / 1.2,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Condidature Simplifiée',
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(
                    side: BorderSide(color: GotafColors.tertiary, width: 2),
                  ),
                  // primary: Colors.white,
                ),
                child: Container(
                  width: width / 1.2,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Contacter l\'employeur',
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 12, color: GotafColors.tertiary),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Publié le 21/06/2003",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontSize: 11,
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    OutlinedButton.icon(
                      icon: Icon(
                        Icons.flag,
                        color: Colors.red,
                      ),
                      onPressed: () {},
                      label: Text(
                        "Signaler",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          // Transform.translate(
          //   offset: Offset(0, 20),
          //   child: Material(
          //     elevation: 2.0,
          //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          //     child: Container(height: 45, width: 45, child: svgParser(pictoAudioMedium, 'pictoAudioMedium')),
          //   ),
          // ),
          SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(color: GotafColors.greyText.withOpacity(0.3)),
                height: heigth / 2,
                child: SimilarJobWidget(),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Voir les offres similaires",
                    style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              )
            ],
          ),
          FooterWidget()
        ],
      ),
    );
  }
}

class AudioAndLogo extends StatelessWidget {
  const AudioAndLogo();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Escailler / Ecaillère kjv vkej",
        softWrap: true,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.headline6?.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
      ),
      subtitle: Text(
        "SAI - 40 - MIMINZAN",
        softWrap: true,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.headline6?.copyWith(
              fontSize: 11,
              // fontWeight: FontWeight.bold,
            ),
      ),
      leading: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(image: AssetImage(cardImgLogo), fit: BoxFit.cover),
        ),
      ),
      trailing: Material(
        elevation: 2.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Container(height: 45, width: 45, child: svgParser(pictoAudioMedium, 'pictoAudioMedium')),
      ),
    );
  }
}

class JobTab extends StatelessWidget {
  const JobTab();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: TabBar(
              unselectedLabelColor: Colors.redAccent,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.redAccent),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), border: Border.all(color: Colors.redAccent, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("APPS"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), border: Border.all(color: Colors.redAccent, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("MOVIES"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), border: Border.all(color: Colors.redAccent, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("GAMES"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), border: Border.all(color: Colors.redAccent, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("DEVS"),
                    ),
                  ),
                ),
              ]),
          body: TabBarView(children: [
            Icon(Icons.apps),
            Icon(Icons.movie),
            Icon(Icons.games),
            Icon(Icons.games),
          ]),
        ));
  }
}
