import 'package:flutter/material.dart';

class GotafNavigationBar extends StatelessWidget {
  const GotafNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
      ),
      child: Row(
        children: [],
      ),
    );
  }
}
