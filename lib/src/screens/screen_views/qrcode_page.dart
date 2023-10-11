
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePageView extends StatefulWidget {

  const ProfilePageView({
    super.key,
  });

  @override
  State<ProfilePageView> createState() => _ProfilePageViewState();
}

class _ProfilePageViewState extends State<ProfilePageView> {

  //url opening //
  final Uri _url = Uri.parse('https://flutter.dev');
//   final Uri _url = Uri.parse(result.toString());
//url opening //
  //QR Scanner //
  final GlobalKey _gLobalkey = GlobalKey();
  QRViewController? controller;
  Barcode? result;
  void qr(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        result = event;
      });
    });
  }
  //QR Scanner //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff00CECE),
        centerTitle: true,
        title: Text(
          "Qr Scanner",
          style: TextStyle(fontFamily: "Intent", fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.image)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //QR Scanner //
            SizedBox(
              height: 400,
              width: 400,
              child: QRView(key: _gLobalkey, onQRViewCreated: qr),

            ),
            Center(
              child: (result != null)
                  ? Text('${result!.code}')
                  : const Text('Scan a code'),
            ),
            //QR Scanner //
            //url opening //
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xff00CECE))
                ),
                onPressed: _launchUrl,
                child: const Text('Open the Url'),
              ),
            ),
            //url opening //
          ],
        ),
      ),
    );
  }

  //url opening //
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
//url opening //

}
