
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPageView extends StatefulWidget {
  const SettingsPageView({
    super.key,
  });

  @override
  State<SettingsPageView> createState() => _SettingsPageViewState();
}

class _SettingsPageViewState extends State<SettingsPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Color(0xff00CECE),
        title: Text(
          "Settings",
          style: TextStyle(fontFamily: "Intent", fontWeight: FontWeight.w700),
        ),
      ),

      body:  Padding(
        padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
        child: Column(
          children: [
            cardlistTile(
              cardText: 'Display',
            ),
            cardlistTile(
              cardText: 'Display',
            ),cardlistTile(
              cardText: 'Display',
            ),cardlistTile(
              cardText: 'Display',
            ),cardlistTile(
              cardText: 'Display',
            ),cardlistTile(
              cardText: 'Display',
            ),cardlistTile(
              cardText: 'Display',
            ),

          ],
        ),
      ),
    );
  }
}



class cardlistTile extends StatelessWidget {
  final String cardText;

  const cardlistTile({
    super.key,
    required this.cardText,

  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Card(
          elevation: 6,
          color: Color(0xffFFFFFF),
          child: ListTile(
            title: Text(cardText,
                style: TextStyle(
                    fontFamily: "Intent",
                    color: Color(0xff324B4B),
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            trailing: IconButton(onPressed: () {},
              icon: Icon(
                  Icons.arrow_forward_ios_rounded, color: Color(0xff324B4B)),),
          ),

        ),
      ),
    );
  }
}
