import 'package:flutter/material.dart';

class ActualiteWidget extends StatelessWidget {
  const ActualiteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Les Actualités"),
          Material(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
