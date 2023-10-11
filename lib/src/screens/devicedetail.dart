
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeviceDetail extends StatefulWidget {
  const DeviceDetail({super.key});

  @override
  State<DeviceDetail> createState() => _DeviceDetailState();
}

class _DeviceDetailState extends State<DeviceDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff00CECE),
          title: Center(
            child: Center(
                child: Text(
                  "Device Details",
                  style: TextStyle(fontFamily: "Intent", fontWeight: FontWeight.w700),
                )),
          ),
          actions: [ Icon(Icons.more_vert)],
        ),
        body:Container(
            color: const Color.fromRGBO(10, 14, 15, 1),
            // elevation: 4,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  // bottom: 0,
                  child: Container(
                    height: 230,
                    width: 360,

                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1627615608004-f6fba8eca2a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2hhZG93JTIwYm95fGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                          fit: BoxFit.cover
                      ),
                    ),

                  ),
                ),


                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  // bottom: 0,
                  child: Container(
                    height: 530,
                    width: 360,
                    decoration: BoxDecoration(borderRadius:
                    BorderRadius.circular(25),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            HeadText(
                              headText: 'Device Name',),
                            SubText(
                              subText: 'Asus Zenbook pro',),

                            HeadText(
                                headText: 'Device Name'),
                            SubText(
                                subText: 'Asus Zenbook pro'),
                            SizedBox(height: 20),

                            Card(
                              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              child: ExpansionTile(title:
                              Text("Device Specifications"),
                                  children: [
                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),
                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                  ]),
                            ),
                            SizedBox(height:10),
                            Card(
                              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              child: ExpansionTile(title:
                              Text("OS Specification"),
                                  children: [
                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),
                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),
                                  ]),
                            ),
                            SizedBox(height:10),
                            Card(
                              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                              child: ExpansionTile(title:
                              Text("User Info"),
                                  children: [
                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),
                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                    Text("Device name"),
                                    Text("Nick Name"),
                                    SizedBox(height: 20),

                                  ]),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],))
    );
  }
}

class SubText extends StatelessWidget {
  final String subText;
  const SubText({
    super.key,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 29),
      child: Text(subText,
          style: TextStyle(
              fontFamily: "Intent",
              color: Color(0xff324B4B),
              fontSize: 16,
              fontWeight: FontWeight.w600)),
    );
  }
}

class HeadText extends StatelessWidget {
  final String headText;
  const HeadText({
    super.key,
    required this.headText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 29,top: 29,),
      child: Text(headText,
          style: TextStyle(
              fontFamily: "Intent",
              color: Color(0xff324B4B),
              fontSize: 12,
              fontWeight: FontWeight.w400)),
    );
  }
}
