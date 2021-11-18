import 'package:flutter/material.dart';
import 'package:gotaf/app/core/assets/constans.dart';
import 'package:gotaf/app/core/utils/svg.dart';
import 'package:gotaf/app/theme/theme_data.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                height: 50,
                child: Center(
                  child: svgParser(gotafColorWhite, 'gotafColor'),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    "NEWSLETTER",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: GotafColors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Center(
              child: Text(
                "Inscrivez vous à notre newsletter et restez à l'écoute",
                style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 12, color: GotafColors.white),
              ),
            ),
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
                  hintText: "e-mail",
                  suffixIcon: TextButton(
                    onPressed: () {},
                    child: Text(
                      "OK",
                      style: Theme.of(context).textTheme.headline6?.copyWith(color: GotafColors.greyText),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: GotafColors.primaryLight,
      ),
    );
  }
}
