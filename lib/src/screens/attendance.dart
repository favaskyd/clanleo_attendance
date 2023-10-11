
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00CECE),
        title: Center(
          child: Center(
              child: Text(
                "Attendance",
                style: TextStyle(fontFamily: "Intent", fontWeight: FontWeight.w700),
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            AttendanceContainer(),
            SizedBox(height: 20),
            AttendanceContainer(),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height*.42,
              width: MediaQuery.of(context).size.width*50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color:PunchingColors.appBule,
              ),
            ),

          ],

        ),
      ),
    );
  }
}

class AttendanceContainer extends StatelessWidget {
  const AttendanceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.17,
      width: MediaQuery.of(context).size.width*50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: PunchingColors.appBule,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              textNumber(
                  textName: ' Total\nLeaves',
                  textCount: "24"),

              textNumber(
                  textName: "Leave\nTaken",
                  textCount: "9"),

              textNumber(
                  textName: "Leave \n  Left",
                  textCount: "0")
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Medical Leave',style: TextStyle(
                fontFamily: "Intent",
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700)),
          )
        ],
      ),

    );
  }
}

class textNumber extends StatelessWidget {
  final String textName;
  final String textCount;
  const textNumber({
    super.key,
    required this.textName,
    required this.textCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(textName,
            style: TextStyle(
                fontFamily: "Intent",
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400),),

          Text(textCount,
              style: TextStyle(
                  fontFamily: "Intent",
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
