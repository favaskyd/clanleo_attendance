
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'devicedetail.dart';

class TrackDevice extends StatefulWidget {
  const TrackDevice({super.key});

  @override
  State<TrackDevice> createState() => _TrackDeviceState();
}

class _TrackDeviceState extends State<TrackDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00CECE),
        title: Center(
          child: Center(
              child: Text(
                "Track Devices",
                style: TextStyle(fontFamily: "Intent", fontWeight: FontWeight.w700),
              )),
        ),
        actions: [ Icon(Icons.more_vert)],
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            CardBox(boxIcon: Icons.add,
                boxText: 'Asus zenbook pro'),
            CardBox(boxIcon: Icons.add,
                boxText: 'thinkpad'),
            CardBox(boxIcon: Icons.add,
                boxText: 'Asus zenbook pro'),
            CardBox(boxIcon: Icons.add,
                boxText: 'thinkpad'),

          ],
        ),
      ),
    );
  }
}

class CardBox extends StatelessWidget {
  var boxIcon;
  final String boxText;
  CardBox({
    super.key, required this.boxIcon,
    required this.boxText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 150,
            width: 167,
            child: InkWell(

              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => DeviceDetail())));
              },
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.more_vert),
                        ],
                      ),
                      Icon(boxIcon,size: 80),
                      Spacer(),
                      Text(boxText)

                    ],
                    // child: ListTile(
                    //   leading: Icon(Icons.computer_outlined),
                    //   title: Icon(Icons.more_vert),

                  ),
                ),

              ),
            ),
          ),
          SizedBox(
            height: 150,
            width: 167,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => DeviceDetail())));
              },
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.more_vert),
                        ],
                      ),
                      Icon(Icons.computer_outlined,size: 80),
                      Spacer(),
                      Text("Asus zenbook pro")

                    ],
                    // child: ListTile(
                    //   leading: Icon(Icons.computer_outlined),
                    //   title: Icon(Icons.more_vert),

                  ),
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
