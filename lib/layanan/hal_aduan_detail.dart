import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HalLayananAduan extends StatefulWidget {
  const HalLayananAduan({super.key});

  @override
  State<HalLayananAduan> createState() => _HalLayananAduanState();
}

class _HalLayananAduanState extends State<HalLayananAduan> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            _logo(),
            Padding(
              padding: EdgeInsets.only(top: mediaQueryData.size.height * 0.28),
              child: _textjudul(),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: mediaQueryData.size.height * 0.37),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.all(mediaQueryData.size.width * 0.03),
                child: Column(children: [
                  _aduanlapor(),
                  _padding1(),
                  _aduanlapor2(),
                  _padding1(),
                  _aduanlapor3(),
                  // _informasiText(),
                  // profil(),
                  // _padding1(),
                  // _padding1(),
                  // _informasiberkala(),
                  // _padding1(),
                  // _informasisetiapsaat(),
                  // _padding1(),
                  // _informasisertamerta(),
                  // _padding1(),
                  // _informasidikecualikan(),
                  // _padding1(),
                  // _padding1(),
                  // _informasilayanan(),
                  // _padding1(),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Column(
      children: [
        Image.asset(
          "assets/logo/header2.jpg",
          width: mediaQueryData.size.width * 1,
          // height: mediaQueryData.size.height * 1,
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
        // _informasiText(),
      ],
    );
  }

  Widget _textjudul() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: EdgeInsets.only(
        left: mediaQueryData.size.height * 0.02,
        right: mediaQueryData.size.height * 0.03,
        bottom: mediaQueryData.size.height * 0.03,
        // top: mediaQueryData.size.height * 0.010,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aduan",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              color: Colors.white,
            ),
            maxLines: 1,
          ),
        ],
      ),
    );
  }

  Widget _aduanlapor() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      // width: mediaQueryData.size.width * 0.47,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0.0, 5.0),
              blurRadius: 7.0),
        ],
      ),
      child: Material(
        color: Colors.green.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () async {
            final Uri url = Uri.parse('https://www.lapor.go.id/');
            if (!await launchUrl(
              url,
              mode: LaunchMode.externalApplication,
            )) {
              throw 'Could not launch $url';
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                _aduan1(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // _kalender(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: mediaQueryData.size.height * 0.005,
                      ),
                    ),
                    const Text(
                      'Lapor', //IBADAH
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: mediaQueryData.size.height * 0.005,
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Klik untuk detail",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _aduanlapor2() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      // width: mediaQueryData.size.width * 0.47,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0.0, 5.0),
              blurRadius: 7.0),
        ],
      ),
      child: Material(
        color: Colors.green.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () async {
            final Uri url = Uri.parse('http://inspektorat.kendalkab.go.id/wbs');
            if (!await launchUrl(
              url,
              mode: LaunchMode.externalApplication,
            )) {
              throw 'Could not launch $url';
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                _aduan2(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // _kalender(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: mediaQueryData.size.height * 0.005,
                      ),
                    ),
                    const Text(
                      'WBS', //IBADAH
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: mediaQueryData.size.height * 0.005,
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Klik untuk detail",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _aduanlapor3() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      // width: mediaQueryData.size.width * 0.47,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0.0, 5.0),
              blurRadius: 7.0),
        ],
      ),
      child: Material(
        color: Colors.green.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () async {
            final Uri url =
                Uri.parse('https://ppid.kendalkab.go.id/alur-pengaduan/');
            if (!await launchUrl(
              url,
              mode: LaunchMode.externalApplication,
            )) {
              throw 'Could not launch $url';
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                _aduan3(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // _kalender(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: mediaQueryData.size.height * 0.005,
                      ),
                    ),
                    const Text(
                      'Alur Pengaduan', //IBADAH
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: mediaQueryData.size.height * 0.005,
                      ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Klik untuk detail",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _aduan1() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.report_gmailerrorred,
        color: Colors.green,
        size: 40,
      ),
    );
  }

  Widget _aduan2() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.report_problem_outlined,
        color: Colors.green,
        size: 40,
      ),
    );
  }

  Widget _aduan3() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.view_timeline_outlined,
        color: Colors.green,
        size: 40,
      ),
    );
  }

  Widget _padding1() {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
    );
  }
}
