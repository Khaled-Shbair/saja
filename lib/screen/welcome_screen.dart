import 'package:flutter/material.dart';

import '../widget/pageView_welcom_Screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: const [
            PageViewWelcomeScreen(
              textTop: 'Lets get started',
              textDownOne: 'Goals',
              textDownTwo: 'Easy Of Ordering',
              imageAsset: 'images/undraw_online_groceries_a02y.png',
            ),
            PageViewWelcomeScreen(
              textTop: 'Lets get started',
              textDownOne: 'Goals',
              textDownTwo: 'Access of speed',
              imageAsset: 'images/undraw_On_the_way_re_swjt.png',
            ),
            PageViewWelcomeScreen(
              textTop: 'Lets get started',
              textDownOne: 'Goals',
              textDownTwo: 'Accuracy in reaching poeple',
              imageAsset: 'images/undraw_online_groceries_a02y.png',
            ),
          ],
        ),
      ),
    );
  }
}
