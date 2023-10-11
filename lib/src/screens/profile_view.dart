
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00CECE),
        title: Center(
          child: Center(
              child: Text(
                "Profile",
                style: TextStyle(fontFamily: "Intent", fontWeight: FontWeight.w700),
              )),
        ),
        actions: [ Icon(Icons.more_vert)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 130,right: 130,bottom: 45,top: 30),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1627615608004-f6fba8eca2a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2hhZG93JTIwYm95fGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                radius: 50),
          ),
          ProfileText(
              textName: 'Name',
              textContent: "Pattrick Bateman"),
          ProfileText(
              textName: "Emp ID",
              textContent: '"423847293"'),
          ProfileText(
              textName: 'Designation',
              textContent: "Senior Developer"),
          ProfileText(
              textName: 'Chair Number',
              textContent: "11"),
          ProfileText(
              textName: 'Email ID',
              textContent: "Pattrickbateman007@gamil.com"),
          ProfileText(
              textName: "Phone Number",
              textContent: "9745832844"),
          ProfileText(
              textName: "Address",
              textContent: "643,kaloor,apt.102\n"
                  "673508-990,north rail way"),
          ProfileText(
              textName: "Git ID",
              textContent: "http//githup./name"),







        ],
      ),
    );
  }
}

class ProfileText extends StatelessWidget {
  final String textName;
  var textContent;
  ProfileText({
    super.key,
    required this.textName,
    required this .textContent,

  });

  @override
  Widget build(BuildContext Context) {
    return Padding(
      padding: const EdgeInsets.only(left: 55,bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(textName, style: TextStyle(
              fontFamily: "Intent",
              color: Color(0xff324B4B),
              fontSize: 12,
              fontWeight: FontWeight.w500)),
          Text(textContent, style: TextStyle(
              fontFamily: "Intent",
              color: Color(0xff324B4B),
              fontSize: 16,
              fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
