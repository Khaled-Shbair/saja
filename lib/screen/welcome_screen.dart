import 'package:flutter/material.dart';

import '../widget/circular_welcome_screen.dart';
import '../widget/pageView_welcom_Screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (int pag) {
                  setState(() {
                    _currentPage = pag;
                  });
                },
                controller: _pageController,
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
                    imageAsset: 'images/undraw_My_location_re_r52x.png',
                  ),
                ],
              ),
            ),
            Visibility(
              visible: _currentPage == 2,
              maintainState: true,
              maintainAnimation: true,
              maintainSize: true,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/SingUpScreen');
                },
                child: const Text(
                  'get start',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(192, 49),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: const Color(0xFFFF3D00),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularWelcomeScreen(
                  margin: 10,
                  selected: _currentPage == 0,
                  colorEmpty: const Color(0xFFFAFAFA),
                  colorFull: const Color(0xFFFF3D00),
                ),
                CircularWelcomeScreen(
                  margin: 10,
                  selected: _currentPage == 1,
                  colorEmpty: const Color(0xFFFAFAFA),
                  colorFull: const Color(0xFFFF3D00),
                ),
                CircularWelcomeScreen(
                  margin: 20,
                  selected: _currentPage == 2,
                  colorEmpty: const Color(0xFFFAFAFA),
                  colorFull: const Color(0xFFFF3D00),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
