
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../attendance.dart';
import '../calender.dart';
import '../notificationicon_appbar.dart';
import '../profile_view.dart';
import '../trackdevice.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({
    super.key,
    required this.top,
    required this.left,
    required this.lRight,
    required this.rTop,
    required this.lTop,
    required this.bottom,
    required this.right,
  });

  final double top;
  final double left;
  final double lRight;
  final double rTop;
  final double lTop;
  final double bottom;
  final double right;

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff00CECE),
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(fontFamily: "Intent", fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationIcon_AppBar(),));
          },
              icon: Icon(Icons.notifications))
        ],

      ),
      body: Container(

        // color: Colors.cyan,
        child: Center(
          child:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.only( top: 20),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileView(),));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                      // color: (status == false) ? Colors.green :
                      color: PunchingColors.appBule,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20, bottom: 25, top: 25,right: 30),

                          child: CircleAvatar(
                            radius: 55,backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1627615608004-f6fba8eca2a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2hhZG93JTIwYm95fGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                              radius: 50,),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Pattrik Bateman",
                                style: TextStyle(
                                    fontFamily: "Intent",
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)),
                            Text("Senior Developer",
                                style: TextStyle(
                                    fontFamily: "Intent",
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500))
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 9,
                height: MediaQuery.of(context).size.height * .54,
                child: Stack(
                  children: [
                    _positioned(
                      positionedTop: widget.top,
                      positionedLeft: widget.left,
                      positionedRight: widget.lRight,
                      positionedText: 'Attendance',
                      positionedColor: Color(0xff95B1B0),
                      positionWidth: MediaQuery.of(context).size.width * .13,
                      positionHeight: MediaQuery.of(context).size.height * .27,
                      textLeft: 35,
                      textTop: 160,
                      positionedBottom: widget.rTop,
                      viewpage: Attendance(),),
                    _positioned(
                      positionedTop: widget.lTop,
                      positionedLeft: widget.left,
                      positionedRight: widget.lRight,
                      positionedText: "Calendar",
                      positionedColor: Color(0xffA2B6FF),
                      positionWidth: MediaQuery.of(context).size.width * .20,
                      positionHeight: MediaQuery.of(context).size.height * .20,
                      textLeft: 40,
                      textTop: 110,
                      positionedBottom: widget.bottom,
                      viewpage: Calendar(),),
                    _positioned(
                      positionedTop: widget.rTop,
                      positionedLeft: widget.lRight,
                      positionedRight: widget.right,
                      positionedText: "Leave Manager",
                      positionedColor: Color(0xff6B81CB),
                      positionWidth: MediaQuery.of(context).size.width * .20,
                      positionHeight: MediaQuery.of(context).size.height * .27,
                      textLeft: 22,
                      textTop: 160,
                      positionedBottom: widget.bottom,
                      viewpage: TrackDevice(),),
                    _positioned(
                      positionedTop: widget.top,
                      positionedLeft: widget.lRight,
                      positionedRight: widget.right,
                      positionedText: "Track Device",
                      positionedColor: Color(0xffA8AABC),
                      positionWidth: MediaQuery.of(context).size.width * .20,
                      positionHeight: MediaQuery.of(context).size.height * .20,
                      textLeft: 22,
                      textTop: 110,
                      positionedBottom: widget.lTop,
                      viewpage: TrackDevice(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _positioned extends StatelessWidget {
  final double positionedTop;
  final double positionedLeft;
  final double positionedRight;
  final double positionedBottom;
  final String positionedText;
  final Color positionedColor;
  final double positionWidth;
  final double positionHeight;
  final double textLeft;
  final double textTop;
  final viewpage;

  const _positioned({
    super.key,
    required this.positionedTop,
    required this.positionedLeft,
    required this.positionedRight,
    required this.positionedText,
    required this.positionedColor,
    required this.positionWidth,
    required this.positionHeight,
    required this.textLeft,
    required this.textTop,
    required this.positionedBottom,
    required this.viewpage,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: positionedLeft,
      right: positionedRight,
      top: positionedTop,
      bottom: positionedBottom,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => viewpage));
        },
        child: Container(
          decoration: BoxDecoration(
            color: positionedColor,
            borderRadius: BorderRadius.circular(25),
          ),
          width: positionWidth,
          height: positionHeight,
          child: Padding(
            padding: EdgeInsets.only(left: textLeft, top: textTop),
            child: Text(positionedText,
                style: const TextStyle(
                    fontFamily: "Intent",
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
          ),
        ),
      ),
    );
  }
}

