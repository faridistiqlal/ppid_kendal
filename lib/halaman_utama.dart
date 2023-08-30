// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showMaterialModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
            context: context,
            builder: (context) => Padding(
              padding: EdgeInsets.only(
                left: mediaQueryData.size.height * 0.02,
                right: mediaQueryData.size.height * 0.02,
                // bottom: mediaQueryData.size.height * 0.03,
                // top: mediaQueryData.size.height * 0.03,
              ),
              child: SizedBox(
                height: mediaQueryData.size.height * 0.5,
                child: ListView(
                  children: <Widget>[
                    Text(
                      "Kontak",
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.bold),
                    ),
                    _padding1(),
                    _alamat(),
                    _padding1(),
                    _telepon(),
                    _padding1(),
                    _email(),
                    _padding1(),
                    _website(),
                  ],
                ),
              ),
            ),
          );
        },
        label: const Text(
          'Kontak',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        icon: const Icon(
          Icons.phone,
          color: Colors.white,
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            _logo(),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: mediaQueryData.size.height * 0.39),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.all(mediaQueryData.size.width * 0.03),
                child: Column(children: [
                  _informasiText(),
                  profil(),
                  _padding1(),
                  _padding1(),
                  _informasiberkala(),
                  _padding1(),
                  _informasisetiapsaat(),
                  _padding1(),
                  _informasisertamerta(),
                  _padding1(),
                  _informasidikecualikan(),
                  _padding1(),
                  _padding1(),
                  _informasilayanan(),
                  _padding1(),
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
          "assets/logo/header3.jpg",
          width: mediaQueryData.size.width * 1,
          // height: mediaQueryData.size.height * 1,
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
        // _informasiText(),
      ],
    );
  }

  Widget _informasiText() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(
        MediaQuery.of(context).size.width * 0.03,
      ),
      child: Text(
        "Informasi",
        // textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.grey[800],
        ),
      ),
    );
  }

  Widget profil() {
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
        color: Colors.orange.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () async {
            final Uri url =
                Uri.parse('https://ppid.kendalkab.go.id/profil-ppid/');
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
                _profil(),
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
                      'Profil', //IBADAH
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
                          "Profil PPID Kabupaten Kendal",
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

  Widget _informasiberkala() {
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
        color: Colors.blue.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () async {
            final Uri url =
                Uri.parse('https://ppid.kendalkab.go.id/informasi-berkala/');
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
                _berkala(),
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
                      'Informasi Berkala', //IBADAH
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
                          "Informasi yang diiperbaharui 6 bulan dan \ndiumumkan rutin untuk akses publik terus",
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

  Widget _informasisertamerta() {
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
        color: Colors.blue.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () async {
            final Uri url = Uri.parse(
                'https://ppid.kendalkab.go.id/informasi-serta-merta/');
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
                _setiapsaat(),
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
                      'Informasi Serta Merta', //IBADAH
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
                          "Informasi yang Penting, umumkan segera, \nterkait hajat banyak dan ketertiban",
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

  Widget _informasisetiapsaat() {
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
        color: Colors.blue.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () async {
            final Uri url = Uri.parse(
                'https://ppid.kendalkab.go.id/informasi-setiap-saat/');
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
                _sertamerta(),
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
                      'Informasi Setiap Saat', //IBADAH
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
                          "Informasi yang Wajb Disediakan dan \nDiumumian Setiap Saat",
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

  Widget _informasidikecualikan() {
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
        color: Colors.blue.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () async {
            final Uri url = Uri.parse(
                'https://ppid.kendalkab.go.id/informasi-dikecualikan/');
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
                _dikecualikan(),
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
                      'Informasi Di Kecualikan', //IBADAH
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
                          "Tidak dapat diakses, sesuai \nUndang-Undang Nomor 14 Tahun 2008",
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

  Widget _informasilayanan() {
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
          onTap: () {
            Navigator.pushNamed(context, '/HalLayanan');
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                _layanan(),
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
                      'Layanan', //IBADAH
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
                          "Layanan Informasi Publik",
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

  Widget _alamat() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      // width: mediaQueryData.size.width * 0.47,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0.0, 3.0),
              blurRadius: 7.0),
        ],
      ),
      child: Material(
        // color: Colors.green.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () {
            // Navigator.pushNamed(context, '/HalCalender');
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                _alamaticon(),
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
                      'Alamat', //IBADAH
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
                          "Jl. Soekarno-Hatta No. 193 Kendal",
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

  Widget _telepon() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      // width: mediaQueryData.size.width * 0.47,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0.0, 3.0),
              blurRadius: 7.0),
        ],
      ),
      child: Material(
        // color: Colors.green.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () {
            // Navigator.pushNamed(context, '/HalCalender');
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                _tlpicon(),
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
                      'Telepon', //IBADAH
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
                          "(0294) 384353",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    _faxicon(),
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
                          'Fax', //IBADAH
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
                              "(0294) 384353",
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _email() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      // width: mediaQueryData.size.width * 0.47,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0.0, 3.0),
              blurRadius: 7.0),
        ],
      ),
      child: Material(
        // color: Colors.green.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () {
            // Navigator.pushNamed(context, '/HalCalender');
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                _emailicon(),
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
                      'Email', //IBADAH
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
                          "ppid@kendalkab.go.id",
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

  Widget _website() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      // width: mediaQueryData.size.width * 0.47,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0.0, 3.0),
              blurRadius: 7.0),
        ],
      ),
      child: Material(
        // color: Colors.green.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () {
            // Navigator.pushNamed(context, '/HalCalender');
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                _webicon(),
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
                      'Website', //IBADAH
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
                          "ppid.kendalkab.go.id",
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

  Widget _profil() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.account_circle_sharp,
        color: Colors.orange,
        size: 40,
      ),
    );
  }

  Widget _berkala() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.notes_rounded,
        color: Colors.blue,
        size: 40,
      ),
    );
  }

  Widget _sertamerta() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.notes_rounded,
        color: Colors.blue,
        size: 40,
      ),
    );
  }

  Widget _setiapsaat() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.notes_rounded,
        color: Colors.blue,
        size: 40,
      ),
    );
  }

  Widget _dikecualikan() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.notes_rounded,
        color: Colors.blue,
        size: 40,
      ),
    );
  }

  Widget _layanan() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.help_outline_outlined,
        color: Colors.green,
        size: 40,
      ),
    );
  }

  Widget _alamaticon() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.home_rounded,
        color: Colors.blueGrey,
        size: 30,
      ),
    );
  }

  Widget _tlpicon() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.phone_android_outlined,
        color: Colors.blueGrey,
        size: 30,
      ),
    );
  }

  Widget _faxicon() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
        left: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.fax_rounded,
        color: Colors.blueGrey,
        size: 30,
      ),
    );
  }

  Widget _emailicon() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.email,
        color: Colors.blueGrey,
        size: 30,
      ),
    );
  }

  Widget _webicon() {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      padding: EdgeInsets.only(
        right: mediaQueryData.size.height * 0.02,
      ),
      child: const Icon(
        Icons.language_rounded,
        color: Colors.blueGrey,
        size: 30,
      ),
    );
  }

  Widget _padding1() {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
    );
  }
}
