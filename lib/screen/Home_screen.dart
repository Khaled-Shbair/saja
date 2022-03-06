import 'package:flutter/material.dart';

import '../widget/circular_welcome_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        elevation: 20,
        selectedItemColor: const Color(0xFFFF3D00),
        unselectedItemColor: const Color(0xFFD0CFCD),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: PageView(
          children:[
            Stack(
            children: [
              Image.asset('images/home1.png'),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularWelcomeScreen(
                      selected: false,
                      colorEmpty: Color(0xFF0C0A54),
                      colorFull: Color(0xFF08063A),
                    ),
                    CircularWelcomeScreen(
                      selected: false,
                      colorEmpty: Color(0xFF0C0A54),
                      colorFull: Color(0xFF08063A),
                    ),
                    CircularWelcomeScreen(
                      selected: false,
                      colorEmpty: Color(0xFF0C0A54),
                      colorFull: Color(0xFF08063A),
                    ),
                    CircularWelcomeScreen(
                      selected: false,
                      colorEmpty: Color(0xFF0C0A54),
                      colorFull: Color(0xFF08063A),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 136,
                ),
                child: Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: SizedBox(
                    height: 194,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Card(
                              child: Image.asset('images/GridView1.png'),
                              color: Colors.red,
                            ),
                            const Text(
                              'Chicken Burger',
                              style: TextStyle(
                                color: Color(0xFF08063A),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFFED00),
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFFED00),
                                  size: 16,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFFED00),
                                  size: 16,
                                ),
                              ],
                            ),
                            const Text(
                              '\$15',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFF3D00),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
      ],
        ),
      ),
    );
  }
}
