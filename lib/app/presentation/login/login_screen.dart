import 'package:flutter/material.dart';
import 'package:gotaf/app/core/assets/constans.dart';
import 'package:gotaf/app/core/usecases/local_players.dart';
import 'package:gotaf/app/core/utils/svg.dart';
import 'package:gotaf/app/presentation/home/user_connect_home_page.dart';
import 'package:gotaf/app/presentation/register/register_screen.dart';
import 'package:gotaf/app/theme/theme_data.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCandidat = true;
  LocalPlayer localPlayer = LocalPlayer();
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
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          isCandidat ? gotafNavImg : GOTAF_man_1,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () async {
                      localPlayer.playLocalAudio(login_user);
                    },
                    child: Material(
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                      child: Container(
                        height: 80,
                        width: 80,
                        child: svgParser(
                          pictoAudioMedium,
                          'pictoAudioMedium',
                        ),
                      ),
                    ),
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
                      isCandidat ? "Vous êtes à 2 clic du job de vos rêves" : "Trouvez le candidat idéal",
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
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(
                              side: BorderSide(
                                width: 2,
                                color: isCandidat ? GotafColors.secondary : GotafColors.greyLigth,
                              ),
                            ),
                            primary: Colors.white,
                            elevation: 2.0,
                          ),
                          onPressed: () {
                            setState(() {
                              isCandidat = true;
                            });
                          },
                          child: Container(
                            width: width / 2.8,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Je recherche un emploi',
                                style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(
                              side: BorderSide(
                                width: 1,
                                color: isCandidat ? GotafColors.greyLigth : GotafColors.secondary,
                              ),
                            ),
                            primary: Colors.white,
                            elevation: 2.0,
                          ),
                          onPressed: () {
                            setState(() {
                              isCandidat = false;
                            });
                          },
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
                        keyboardType: TextInputType.phone,
                        onChanged: (String value) {},
                        cursorColor: GotafColors.primaryDark,
                        decoration: InputDecoration(hintText: "Login"),
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
                        decoration: InputDecoration(
                          hintText: "Mot de passe",
                        ),
                        obscureText: true,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (v) {}),
                            Text(
                              "Se souvenir de moi",
                              style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 10, color: isCandidat ? GotafColors.tertiary : GotafColors.primaryDark),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Mot de passe oublié',
                            style: Theme.of(context).textTheme.caption?.copyWith(
                                  fontSize: 10,
                                  color: isCandidat ? GotafColors.tertiary : GotafColors.primaryDark,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        )
                      ],
                    ),
                    // Center(
                    //   child: Text("data"),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => RegisterScreen(),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(
                              side: BorderSide(color: GotafColors.tertiary, width: 2),
                            ),
                            // primary: Colors.white,
                          ),
                          child: Container(
                            width: width / 3,
                            height: 50,
                            child: Center(
                              child: Text(
                                'M\'inscrire chez gOtaf',
                                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                                      fontSize: 10,
                                      color: isCandidat ? GotafColors.tertiary : GotafColors.primaryDark,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'OU',
                          style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 10, color: isCandidat ? GotafColors.tertiary : GotafColors.primaryDark),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            primary: isCandidat ? GotafColors.tertiary : GotafColors.primaryDark,
                            elevation: 2.0,
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                // builder: (_) => HomePage(),
                                builder: (_) => UserConectHomePage(),
                              ),
                            );
                          },
                          child: Container(
                            width: width / 3,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Je me connecte',
                                style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 10, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
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
