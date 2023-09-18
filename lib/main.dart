import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tsf_local/screens/ForgotPassword.dart';
import 'package:tsf_local/screens/Login.dart';
import 'package:tsf_local/utils/AppConstants.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const Login(
        // title: "TSF App",
      ),
    );
  }
}

// class MyHomePage ext ends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/Login.png"),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           Container(
//               padding: EdgeInsets.only(
//                   top: MediaQuery.of(context).size.height * 0.20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     TextConstants().LOGIN,
//                     style: TextStyle(
//                         color: AppColors().white,
//                         fontSize: 30,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               )),
//           Container(
//             padding: EdgeInsets.only(
//                 top: MediaQuery.of(context).size.height * 0.40,
//                 left: MediaQuery.of(context).size.width * 0.1,
//                 right: MediaQuery.of(context).size.width * 0.1),
//             child: Column(children: [
//               Container(
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: AppColors().textFieldShadow, // Shadow color
//                       spreadRadius: 2, // Spread of the shadow
//                       blurRadius: 5, // Blur radius of the shadow
//                       offset: const Offset(0, 3), // Offset of the shadow (x, y)
//                     ),
//                   ],
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     fillColor: AppColors().textFillColor,
//                     filled: true,
//                     hintText: TextConstants().EMAIL,
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 30),
//               Container(
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: AppColors().textFieldShadow, // Shadow color
//                       spreadRadius: 2, // Spread of the shadow
//                       blurRadius: 5, // Blur radius of the shadow
//                       offset: const Offset(0, 3), // Offset of the shadow (x, y)
//                     ),
//                   ],
//                 ),
//                 child: TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     fillColor: AppColors().textFillColor,
//                     filled: true,
//                     hintText: TextConstants().PASSWORD,
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                   ),
//                 ),
//               ),
//               Align(
//                   alignment: Alignment.centerRight,
//                   child: Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Text(
//                       TextConstants().FORGOTPASSWORD,
//                       style: TextStyle(color: AppColors().white),
//                     ),
//                   )),
//               Align(
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding: const EdgeInsets.all(20),
//                     child: ElevatedButton.icon(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.login,
//                           size: 30.0,
//                         ),
//                         label: Text(TextConstants().LOGIN)),
//                   ))
//             ]),
//           )
//         ],
//       ),
//     );
//   }
// }
