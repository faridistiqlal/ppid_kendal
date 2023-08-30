import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ppid_kendal/splashscreen.dart';
// import 'package:ppid_kendal/webview_ppid.dart';

import 'halaman_utama.dart';
import 'layanan/hal_aduan_detail.dart';
import 'layanan/hal_layanan_detail.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light),
  );
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFFfdede9),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      routes: <String, WidgetBuilder>{
        '/SplashScreen': (BuildContext context) => const SplashScreen(),
        '/MyWebViewPage': (BuildContext context) => const HalamanUtama(),
        '/HalLayanan': (BuildContext context) => const HalLayanan(),
        '/HalLayananAduan': (BuildContext context) => const HalLayananAduan(),
      },
      home: const SplashScreen(),
    ),
  );
}
