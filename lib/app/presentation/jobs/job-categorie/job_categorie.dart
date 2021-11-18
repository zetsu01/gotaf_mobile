import 'package:flutter/material.dart';
import 'package:gotaf/app/core/assets/constans.dart';
import 'package:gotaf/app/core/utils/svg.dart';
import 'package:gotaf/app/core/widgets/footer_widget.dart';
import 'package:gotaf/app/core/widgets/job_card_widget.dart';
import 'package:gotaf/app/theme/theme_data.dart';

class JobCategoriePage extends StatelessWidget {
  const JobCategoriePage();

  @override
  Widget build(BuildContext context) {
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: GotafColors.primaryLighter),
              height: heigth / 2.6,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      child: Container(
                        height: heigth / 15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 25,
                                width: 25,
                                child: svgParser(iconCatBTP, 'iconCatBTP'),
                              ),
                            ),
                            Text(
                              "Restauration",
                              style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  child: Center(child: svgParser(pictoAudioMedium, 'pictoAudioMedium')),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "41 offre(s) trouvée(s)",
                      style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        IconButton(
                            icon: Container(
                              height: 20,
                              width: 20,
                              child: svgParser(grid_icon, 'grid_icon'),
                            ),
                            onPressed: () {}),
                        IconButton(
                            icon: Container(
                              height: 20,
                              width: 20,
                              child: svgParser(list_icon, 'list_icon'),
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
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
            ),
            const SizedBox(
              height: 30,
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}
