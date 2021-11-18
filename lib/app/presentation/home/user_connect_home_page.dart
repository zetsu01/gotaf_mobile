import 'package:flutter/material.dart';
import 'package:gotaf/app/core/assets/constans.dart';
import 'package:gotaf/app/core/utils/svg.dart';
import 'package:gotaf/app/presentation/candidatures/candidatures.dart';
import 'package:gotaf/app/presentation/favorite/fovorire_job.dart';
import 'package:gotaf/app/presentation/home/home_page.dart';
import 'package:gotaf/app/presentation/profil/profile.dart';
import 'package:gotaf/app/theme/theme_data.dart';

class UserConectHomePage extends StatefulWidget {
  UserConectHomePage({Key? key}) : super(key: key);

  @override
  _UserConectHomePageState createState() => _UserConectHomePageState();
}

class _UserConectHomePageState extends State<UserConectHomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    CandidaturePage(),
    FavoritePage(),
    PlaceholderWidget(Colors.orange),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 8,
        selectedItemColor: GotafColors.greyLigth,
        backgroundColor: GotafColors.tertiary,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: ('Emplois'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.deck),
            label: ('Candidatures'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ('Mes Annonces'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Mon CV'),
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 35,
              height: 35,
              child: svgParser(
                pictoAudioMedium,
                'pictoAudioMedium',
              ),
            ),
            label: (''),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

// svgParser(pictoAudioMedium, 'pictoAudioMedium'),
class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
