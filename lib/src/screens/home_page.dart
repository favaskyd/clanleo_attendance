
import 'package:clanleo_attendance/src/screens/screen_views/home_page.dart';
import 'package:clanleo_attendance/src/screens/screen_views/qrcode_page.dart';
import 'package:clanleo_attendance/src/screens/screen_views/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color = Colors.yellow;
  bool status = false;
  double left = 0;
  double right = 0;
  double top = 0;
  double dTop = 0;
  double bottom = 0;
  double lTop = 0;
  double lRight = 0;
  double rLeft = 0;
  double rTop = 00;
  double lDown = 0;

  int _selectedButtonIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  void _onButtonSelected(int index) {
    setState(() {
      _selectedButtonIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    left = (MediaQuery.of(context).size.width * .05);
    right = (MediaQuery.of(context).size.width * .05);
    top = (MediaQuery.of(context).size.width * .04);
    dTop = (MediaQuery.of(context).size.width * .55);
    bottom = (MediaQuery.of(context).size.width * .05);
    lTop = (MediaQuery.of(context).size.width * .66);
    lRight = (MediaQuery.of(context).size.width * .525);
    rLeft = (MediaQuery.of(context).size.width * .525);
    rTop = (MediaQuery.of(context).size.width * .5);
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              onPageChanged: (index) => _onButtonSelected(index),
              children: [
                HomePageView(top: top, left: left, lRight: lRight, rTop: rTop, lTop: lTop, bottom: bottom, right: right),
                // Container(
                //   child: Container(child: Text('page view 2')),
                // ),
                ProfilePageView(),
                SettingsPageView(),
              ],
            ),
          ),
          BottomNavWidget(),
        ],
      ),
    );
  }

  SizedBox BottomNavWidget() {
    return SizedBox(

      height: 95,

      child: Center(
        child: Container(

          height: 56,
          width: 340,
          decoration: BoxDecoration(
            // color: Colors.white,
            color: Color(0xffE6F4F1),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () => _onButtonSelected(0),
                    icon: Icon(
                      Icons.home,
                      color: _selectedButtonIndex == 0
                          ? Color(0xff00CECE)
                          : Color(0xff95B1B0),
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () => _onButtonSelected(1),
                icon: Icon(
                  Icons.document_scanner,

                  color: _selectedButtonIndex == 1
                      ? Color(0xff00CECE)
                      : Color(0xff95B1B0),
                ),
              ),
              IconButton(
                onPressed: () => _onButtonSelected(2),
                icon: Icon(
                  Icons.settings,
                  color: _selectedButtonIndex == 2
                      ? Color(0xff00CECE)
                      :Color(0xff95B1B0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
