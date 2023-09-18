import 'package:flutter/material.dart';
import 'package:tsf_local/components/WidgetStyle.dart';
import 'package:tsf_local/utils/AppConstants.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Login.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    TextConstants().LOGIN,
                    style: TextStyle(
                        color: AppColors().white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.40,
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1),
            child: Column(children: [
              Container(
                decoration: BoxShadows().customDecoration(
                    AppColors().textFieldShadow, 2, 5, const Offset(0, 3)),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: AppColors().textFillColor,
                    filled: true,
                    hintText: TextConstants().EMAIL,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.email),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxShadows().customDecoration(
                AppColors().textFieldShadow, 2, 5, const Offset(0, 3)),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: AppColors().textFillColor,
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: const Icon(Icons.password_rounded),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.visibility_off)),
                    ),
                    hintText: TextConstants().PASSWORD,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      TextConstants().FORGOTPASSWORD,
                      style: TextStyle(color: AppColors().white),
                    ),
                  )),
              // Align(
              //     alignment: Alignment.center,
              //     child: Padding(
              //       padding: const EdgeInsets.all(20),
              //       child: ElevatedButton.icon(
              //           onPressed: () {},
              //           icon: const Icon(
              //             Icons.login,
              //             size: 30.0,
              //           ),
              //           label: Text(TextConstants().LOGIN)),
              //     ))
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.10,
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1),
                child: Container(
                  width: double.infinity,

                  decoration: BoxShadows().customDecoration(
                      AppColors().textFieldShadow, 2, 5, const Offset(0, 2)),

                  child: MaterialButton(
                      // elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: AppColors().gold,
                      onPressed: () {},
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(TextConstants().LOGIN,
                              style: GoogleFonts.montserrat(
                                  textStyle:
                                      TextStyle(color: AppColors().white),
                                  fontWeight: FontWeight.bold)),
                        ),
                      )),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
