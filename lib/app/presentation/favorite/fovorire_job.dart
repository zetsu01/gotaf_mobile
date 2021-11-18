import 'package:flutter/material.dart';
import 'package:gotaf/app/core/widgets/footer_widget.dart';
import 'package:gotaf/app/core/widgets/job_favorite.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Acceuil > Annonces sauvegarder"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "1 offres(s) sauvegardée(s)",
                  style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  JobFavoriteWidget(),
                  JobFavoriteWidget(),
                  JobFavoriteWidget(),
                  JobFavoriteWidget(),
                  FooterWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
