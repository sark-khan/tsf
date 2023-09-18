import 'package:flutter/material.dart';
import 'package:tsf_local/utils/AppConstants.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(automaticallyImplyLeading: true),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/Login.png"),
                fit: BoxFit.cover,
              )),
            ),
            SingleChildScrollView(
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.20,
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1),

                      // alignment: Alignment.center,
                      child: Center(
                        child: Text(
                          TextConstants().FORGOTPASSWORDSCREENTEXT,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: AppColors().white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.20,
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColors().textFieldShadow,
                              // Shadow color
                              spreadRadius: 2,
                              // Spread of the shadow
                              blurRadius: 5,
                              // Blur radius of the shadow
                              offset: const Offset(
                                  0, 3), // Offset of the shadow (x, y)
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: AppColors().textFillColor,
                            filled: true,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Icon(Icons.email),
                            ),
                            hintText: TextConstants().EMAIL,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.20,
                        left: MediaQuery.of(context).size.width * 0.1,
                        right: MediaQuery.of(context).size.width * 0.1),


                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: AppColors().textFieldShadow,
                              // Shadow color
                              spreadRadius: 2,
                              // Spread of the shadow
                              blurRadius: 5,
                              // Blur radius of the shadow
                              offset: const Offset(
                                  0, 2),
                            )
                          ]
                      ),

                        child: MaterialButton(
                            // elevation: 10,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            color: AppColors().gold,
                            onPressed: () {},
                            child: FittedBox(
                              fit: BoxFit.fitHeight,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(TextConstants().SUBMIT,
                                    style: GoogleFonts.montserrat(
                                        textStyle:
                                            TextStyle(color: AppColors().white),fontWeight: FontWeight.bold)),
                              ),
                            )),

                    ),
                  )
                ],
              )),
            )
          ],
        )
        // body: Stack(
        //   children: [
        //     Container(
        //       decoration: const BoxDecoration(
        //         image: DecorationImage(
        //           image: AssetImage("assets/Login.png"),
        //           fit: BoxFit.cover,
        //         ),
        //       ),
        //     ),
        //     Container(
        //         padding: EdgeInsets.only(
        //             top: MediaQuery.of(context).size.height * 0.20),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text(
        //               TextConstants().LOGIN,
        //               style: TextStyle(
        //                   color: AppColors().white,
        //                   fontSize: 30,
        //                   fontWeight: FontWeight.bold),
        //             ),
        //           ],
        //         )),
        //     Container(
        //       padding: EdgeInsets.only(
        //           top: MediaQuery.of(context).size.height * 0.40,
        //           left: MediaQuery.of(context).size.width * 0.1,
        //           right: MediaQuery.of(context).size.width * 0.1),
        //       child: Column(children: [
        //         Container(
        //           decoration: BoxDecoration(
        //             boxShadow: [
        //               BoxShadow(
        //                 color: AppColors().textFieldShadow, // Shadow color
        //                 spreadRadius: 2, // Spread of the shadow
        //                 blurRadius: 5, // Blur radius of the shadow
        //                 offset: const Offset(0, 3), // Offset of the shadow (x, y)
        //               ),
        //             ],
        //           ),
        //           child: TextField(
        //             decoration: InputDecoration(
        //               fillColor: AppColors().textFillColor,
        //               filled: true,
        //               hintText: TextConstants().EMAIL,
        //               border: OutlineInputBorder(
        //                   borderRadius: BorderRadius.circular(10)),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(height: 30),
        //         Container(
        //           decoration: BoxDecoration(
        //             boxShadow: [
        //               BoxShadow(
        //                 color: AppColors().textFieldShadow, // Shadow color
        //                 spreadRadius: 2, // Spread of the shadow
        //                 blurRadius: 5, // Blur radius of the shadow
        //                 offset: const Offset(0, 3), // Offset of the shadow (x, y)
        //               ),
        //             ],
        //           ),
        //           child: TextField(
        //             obscureText: true,
        //             decoration: InputDecoration(
        //               fillColor: AppColors().textFillColor,
        //               filled: true,
        //               hintText: TextConstants().PASSWORD,
        //               border: OutlineInputBorder(
        //                   borderRadius: BorderRadius.circular(10)),
        //             ),
        //           ),
        //         ),
        //         Align(
        //             alignment: Alignment.centerRight,
        //             child: Padding(
        //               padding: const EdgeInsets.all(10),
        //               child: Text(
        //                 TextConstants().FORGOTPASSWORD,
        //                 style: TextStyle(color: AppColors().white),
        //               ),
        //             )),
        //         Align(
        //             alignment: Alignment.center,
        //             child: Padding(
        //               padding: const EdgeInsets.all(20),
        //               child: ElevatedButton.icon(
        //                   onPressed: () {},
        //                   icon: const Icon(
        //                     Icons.login,
        //                     size: 30.0,
        //                   ),
        //                   label: Text(TextConstants().LOGIN)),
        //             ))
        //       ]),
        //     )
        //   ],
        // ),
        );
  }
}
