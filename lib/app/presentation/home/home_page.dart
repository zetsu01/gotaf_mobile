import 'package:flutter/material.dart';
import 'package:gotaf/app/core/assets/constans.dart';
import 'package:gotaf/app/core/utils/svg.dart';
import 'package:gotaf/app/core/widgets/footer_widget.dart';
import 'package:gotaf/app/core/widgets/social_widget.dart';
import 'package:gotaf/app/core/widgets/home_image.dart';
import 'package:gotaf/app/core/widgets/job_card_widget.dart';
import 'package:gotaf/app/core/widgets/job_categorie_widget.dart';
import 'package:gotaf/app/theme/theme_data.dart';

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            HomePageImage(
              heigth: heigth,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "2656 emplois disponibles",
              style: Theme.of(context).textTheme.headline6?.copyWith(color: GotafColors.homepageTitle),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                // decoration: BoxDecoration(color: Colors.red),
                height: heigth / 5.5,
                child: Center(
                  child: CategorieCarousel(),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                child: TextField(
                  onChanged: (String value) {},
                  cursorColor: GotafColors.primaryDark,
                  decoration: InputDecoration(
                    hintText: "Métier,compétences, mot-clé",
                    prefixIcon: Icon(Icons.work),
                    suffixIcon: IconButton(icon: svgParser(icon_micro, 'icon_micro'), onPressed: () {}),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                child: TextField(
                  onChanged: (String value) {},
                  cursorColor: GotafColors.primaryDark,
                  decoration: InputDecoration(
                    hintText: "Saisissez une ville",
                    prefixIcon: Icon(Icons.location_on_outlined),
                    suffixIcon: IconButton(icon: svgParser(icon_micro, 'icon_micro'), onPressed: () {}),
                  ),
                  obscureText: true,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Material(
                        type: MaterialType.circle,
                        elevation: 2.0,
                        color: GotafColors.secondary,
                        child: Container(
                          height: 50,
                          width: 50,
                          child: svgParser(icon_recherche, 'icon_recherche'),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    type: MaterialType.circle,
                    color: GotafColors.secondary,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        child: svgParser(icon_save, 'icon_save'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Les dernières annonces publié",
              style: Theme.of(context).textTheme.headline6?.copyWith(color: GotafColors.tertiary),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: GotafColors.secondary, width: 2),
                      ),
                      primary: Colors.white,
                      elevation: 2.0,
                    ),
                    onPressed: () {},
                    icon: Container(height: 20, width: 20, child: svgParser(icon_trier, 'icon_trier')),
                    label: Text(
                      "Récents",
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                            fontSize: 10,
                            color: GotafColors.tertiary,
                          ),
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: Colors.white,
                      elevation: 2.0,
                    ),
                    onPressed: () {},
                    icon: Container(height: 20, width: 20, child: svgParser(icon_annonces_urgentes_1, 'icon_annonces_urgentes_1')),
                    label: Text(
                      "Urgents",
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                            fontSize: 10,
                            color: GotafColors.tertiary,
                          ),
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      primary: Colors.white,
                      elevation: 2.0,
                    ),
                    onPressed: () {},
                    icon: Container(height: 20, width: 20, child: svgParser(icon_voir_carte, 'icon_voir_carte')),
                    label: Text(
                      "carte",
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(
                            fontSize: 10,
                            color: GotafColors.tertiary,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1.4 / 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 30,
              ),
              itemBuilder: (context, int index) {
                return JobCardWidget();
              },
            ),
            const SizedBox(
              height: 30,
            ),
            SocialNetworkWidget(),
            FooterWidget()
          ],
        ),
      )),
    );
  }
}
