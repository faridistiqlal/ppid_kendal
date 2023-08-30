import 'package:flutter/material.dart';
import 'dart:async';

import 'halaman_utama.dart';

// import 'package:ppid_kendal/webview_ppid.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(
      duration,
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) {
              return const HalamanUtama(); //masuk halaman login
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: mediaQueryData.size.height * 0.25),
            ),
            Image.asset(
              "assets/logo/logo.png",
              width: mediaQueryData.size.width * 0.4,
              height: mediaQueryData.size.height * 0.4,
            ),
            Padding(
              padding: EdgeInsets.only(top: mediaQueryData.size.height * 0.17),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo/kendal.png',
                  width: 50.0,
                  height: 50.0,
                ),
                const Text(
                  " Pemerintah \n Kabupaten Kendal",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
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
