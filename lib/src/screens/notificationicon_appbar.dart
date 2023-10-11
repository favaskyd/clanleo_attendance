
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationIcon_AppBar extends StatefulWidget {
  const NotificationIcon_AppBar({super.key});

  @override
  State<NotificationIcon_AppBar> createState() =>
      _NotificationIcon_AppBarState();
}

class _NotificationIcon_AppBarState extends State<NotificationIcon_AppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00CECE),
        title: Center(
          child: Center(
              child: Text(
                "Notification",
                style: TextStyle(fontFamily: "Intent", fontWeight: FontWeight.w700),
              )),
        ),
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Today"),
              ),
              _CardListTille(
                textBox: 'Calendar',
                subTextbox: 'New updation added',
                timeText: 'Just Now',
                circleColor: Color(0xffA2B6FF),
                cardIcon: (Icons.calendar_month),
              ),
              _CardListTille(
                textBox: 'Calendar',
                subTextbox: 'New updation added',
                timeText: 'Just Now',
                circleColor: Color(0xffA2B6FF),
                cardIcon: (Icons.calendar_month),
              ),
              _CardListTille(
                textBox: 'Calendar',
                subTextbox: 'New updation added',
                timeText: 'Just Now',
                circleColor: Color(0xffA2B6FF),
                cardIcon: (Icons.calendar_month),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Yesterday"),
              ),
              _CardListTille(
                textBox: 'Calendar',
                subTextbox: 'New updation added',
                timeText: 'Just Now',
                circleColor: Color(0xffA2B6FF),
                cardIcon: (Icons.calendar_month),
              ),
              _CardListTille(
                textBox: 'Calendar',
                subTextbox: 'New updation added',
                timeText: 'Just Now',
                circleColor: Color(0xffA2B6FF),
                cardIcon: (Icons.calendar_month),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Jan 06 2023"),
              ),
              _CardListTille(
                textBox: 'Calendar',
                subTextbox: 'New updation added',
                timeText: 'Just Now',
                circleColor: Color(0xffA2B6FF),
                cardIcon: (Icons.calendar_month),
              ),
              _CardListTille(
                textBox: 'Calendar',
                subTextbox: 'New updation added',
                timeText: 'Just Now',
                circleColor: Color(0xffA2B6FF),
                cardIcon: (Icons.calendar_month),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardListTille extends StatelessWidget {
  var cardIcon;
  final String textBox;
  final String subTextbox;
  final String timeText;
  final Color circleColor;
  _CardListTille({
    super.key,
    required this.textBox,
    required this.subTextbox,
    required this.timeText,
    required this.circleColor,
    required this.cardIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Color(0xff95B1B0), width: 1)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: circleColor,
          child: Icon(cardIcon, color: Colors.white),
          // backgroundImage: Color("0xffA2B6FF"),
        ),
        title: Text(textBox),
        subtitle: Text(subTextbox,
            style: TextStyle(
                fontFamily: "Intent",
                color: Color(0xff95B1B0),
                fontSize: 12,
                fontWeight: FontWeight.w400)),
        trailing: Text(timeText,
            style: TextStyle(
                fontFamily: "Intent",
                color: Color(0xff95B1B0),
                fontSize: 12,
                fontWeight: FontWeight.w400)),
      ),
    );
  }
}
