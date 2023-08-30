// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class MyWebViewPage extends StatefulWidget {
//   const MyWebViewPage({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _MyWebViewPageState createState() => _MyWebViewPageState();
// }

// class _MyWebViewPageState extends State<MyWebViewPage> {
//   WebViewController? _controller;
//   bool _isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     _controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(const Color(0x00000000))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             const CircularProgressIndicator();
//           },
//           onPageStarted: (String url) {
//             setState(() {
//               _isLoading = true;
//             });
//           },
//           onPageFinished: (String url) {
//             setState(() {
//               _isLoading = false;
//             });
//           },
//           onWebResourceError: (WebResourceError error) {},
//           onNavigationRequest: (NavigationRequest request) {
//             if (request.url.startsWith('htps://youtube.com/')) {
//               return NavigationDecision.prevent;
//             }
//             return NavigationDecision.navigate;
//           },
//         ),
//       )
//       // ..loadRequest(Uri.parse('https://bpkad.kendalkab.go.id/'));
//       ..loadRequest(Uri.parse('http://ppid.kendalkab.go.id/'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     //how to make safearea?
//     return SafeArea(
//       //add color in safearea

//       child: Scaffold(
//         // appBar: AppBar(
//         //   elevation: 0,
//         //   iconTheme: const IconThemeData(
//         //     color: Colors.black, // change your color here
//         //   ),
//         //   title: const Text(
//         //     'PPID',
//         //     style: TextStyle(
//         //       color: Colors.black,
//         //     ),
//         //   ),
//         //   backgroundColor: const Color(0xFFfdede9),
//         // ),
//         body: Stack(
//           children: [
//             WebViewWidget(controller: _controller!),
//             if (_isLoading)
//               const Center(
//                 child: CircularProgressIndicator(),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
