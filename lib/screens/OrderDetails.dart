import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tsf/utils/AppConstants.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Login.png"), fit: BoxFit.cover)),
          ),
          Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          ))),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none_outlined,
                        size: 30,
                        color: AppColors().white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.1,
                    ),
                    child: Text(
                      "Order Details",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: AppColors().white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
              child: Container(
                width: double.infinity,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 20,
                  shadowColor: AppColors().textFieldShadow,
                  color: AppColors().white,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 15, top: 15),
                            child: Text("Order#: 5523456",
                                style: GoogleFonts.montserrat(
                                    textStyle:
                                        TextStyle(color: AppColors().grey),
                                    // letterSpacing: 1.1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 15),
                            child: (Text("10-Sept-2023, 3:00 PM",
                                style: GoogleFonts.montserrat(
                                    textStyle:
                                        TextStyle(color: AppColors().lightGrey),
                                    // letterSpacing: 1.1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10)))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 15),
                            child: (Text("Estimated Deleviery on 21 Dec",
                                style: GoogleFonts.montserrat(
                                    textStyle:
                                        TextStyle(color: AppColors().green),
                                    // letterSpacing: 1.1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12)))),
                      ],
                    ),
                  ),

                  // child: Column(children: [
                  //   Align(
                  //     alignment: Alignment.centerLeft,
                  //     child: Padding(
                  //         padding: const EdgeInsets.only(left: 15, top: 15),
                  //         child: Text("Order#: 5523456",
                  //             style: GoogleFonts.montserrat(
                  //                 textStyle: TextStyle(color: AppColors().grey),
                  //                 // letterSpacing: 1.1,
                  //                 fontWeight: FontWeight.bold,
                  //                 fontSize: 15))),
                  //   ),
                  //   Align(
                  //     alignment: Alignment.centerLeft,
                  //     child: Padding(
                  //       padding:
                  //           const EdgeInsets.only(left: 15, right: 15, top: 15),
                  //       child: (Text("10-Sept-2023, 3:00 PM",
                  //           style: GoogleFonts.montserrat(
                  //               textStyle:
                  //                   TextStyle(color: AppColors().lightGrey),
                  //               // letterSpacing: 1.1,
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 10))),
                  //     ),
                  //   ),
                  //   Align(
                  //       alignment: Alignment.centerLeft,
                  //       child: Padding(
                  //           padding: const EdgeInsets.only(
                  //               left: 15, right: 15, top: 15),
                  //           child: (Text("Estimated Deleviery on 21 Dec",
                  //               style: GoogleFonts.montserrat(
                  //                   textStyle:
                  //                       TextStyle(color: AppColors().green),
                  //                   // letterSpacing: 1.1,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 12)))))
                  // ]),
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
