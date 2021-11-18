import 'package:flutter/material.dart';
import 'package:gotaf/app/core/assets/constans.dart';
import 'package:gotaf/app/core/utils/svg.dart';
import 'package:gotaf/app/theme/theme_data.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // double heigth = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned.fill(
                  bottom: pictoAudioYellowSize,
                  child: Container(
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(GOTAF_man_2), fit: BoxFit.cover)),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Material(
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                    child: Container(height: 100, width: 100, child: svgParser(pictoAudioMedium, 'pictoAudioMedium')),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      child: svgParser(gotafColor, 'gotafColor'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Votre aventure démarre ici",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            fontWeight: FontWeight.w200,
                            color: GotafColors.greyText,
                            fontSize: width / 20,
                          ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(),
                            // primary: Colors.white,
                          ),
                          child: Container(
                            width: width / 2.8,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Je suis un cnandidat',
                                style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: Colors.white,
                            elevation: 2.0,
                          ),
                          onPressed: () {},
                          child: Container(
                            width: width / 2.8,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Je suis une entreprise',
                                style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      child: TextField(
                        onChanged: (String value) {},
                        cursorColor: GotafColors.primaryDark,
                        decoration: InputDecoration(hintText: "Username", prefixIcon: Icon(Icons.person_outline)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      child: TextField(
                        onChanged: (String value) {},
                        cursorColor: GotafColors.primaryDark,
                        decoration: InputDecoration(hintText: "Raison Social", prefixIcon: Icon(Icons.account_balance_outlined)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      child: TextField(
                        onChanged: (String value) {},
                        cursorColor: GotafColors.primaryDark,
                        decoration: InputDecoration(hintText: "Siret", prefixIcon: Icon(Icons.edit_outlined)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      child: TextField(
                        onChanged: (String value) {},
                        cursorColor: GotafColors.primaryDark,
                        decoration: InputDecoration(hintText: "Téléphone", prefixIcon: Icon(Icons.phone_outlined)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      child: TextField(
                        onChanged: (String value) {},
                        cursorColor: GotafColors.primaryDark,
                        decoration: InputDecoration(hintText: "Mot de passe", prefixIcon: Icon(Icons.vpn_key_outlined)),
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: StadiumBorder(),
                          // primary: Colors.white,
                        ),
                        child: Container(
                          width: width / 2.8,
                          height: 50,
                          child: Center(
                            child: Text(
                              'VALIDER',
                              style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
