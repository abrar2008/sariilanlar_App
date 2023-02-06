import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sariilanlar/Screens/ch_password_screen.dart';
import 'package:sariilanlar/Screens/create_screen.dart';
import 'package:sariilanlar/Screens/home_screen.dart';
import 'package:sariilanlar/Screens/login_screen.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:sariilanlar/widgets/text_input.dart';


class ConformScreen extends StatefulWidget {
  const ConformScreen({Key? key}) : super(key: key);

  @override
  _ConformScreenState createState() => _ConformScreenState();
}

class _ConformScreenState extends State<ConformScreen> {
  final formKey = GlobalKey<FormState>();
  // bool _loading = false;
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passController = TextEditingController();

  bool rememberMe = false;

  bool _pwShow = true;
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    var logoImg = Image.asset(
      'assets/icons/map.png',
    );
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: sizeheight(context) * 0.1,
                      ),
                      Container(
                        width: 100.00,
                        height: 100.00,
                        child:   Image.asset("$imgpath/logo.png"),
                      ),
                     
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: const Text(
                            'Confirmation Code',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 17),
                          child: Text(
                            'Please Enter Your 6 digits Confirmation Code ',
                            style: TextStyle(
                              fontSize: 14,
                              
                              color: Colors.black.withOpacity(0.6),
                            ),
                          )),
                      const SizedBox(
                        height: 10.0,
                      ),
                      //Google Button
                      // Padding(
                      //   padding: EdgeInsets.symmetric(
                      //       horizontal: sizeWidth(context) * 0.06,
                      //       vertical: 20.0),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Expanded(
                      //         child: Padding(
                      //           padding: const EdgeInsets.symmetric(
                      //               vertical: 10,
                      //               horizontal: 0), //sizeWidth(context) * 0.06),
                      //           child: InkWell(
                      //             onTap: () {},
                      //             child: Container(
                      //               height: 45,
                      //               width: 140,
                      //               decoration: BoxDecoration(
                      //                 color: Colors.white,
                      //                 border: Border.all(color: Colors.grey),
                      //                 borderRadius: const BorderRadius.all(
                      //                     Radius.circular(10.0)),
                      //               ),
                      //               child: Row(
                      //                 mainAxisAlignment: MainAxisAlignment.center,
                      //                 children: [
                      //                   Container(
                      //                     child: Image.asset(
                      //                       'assets/icons/google.png',
                      //                       height: 30,
                      //                       width: 30,
                      //                     ),
                      //                   ),
                      //                   const SizedBox(
                      //                     width: 5.0,
                      //                   ),
                      //                   Container(
                      //                     child: Text(
                      //                       'Google',
                      //                       style: TextStyle(
                      //                           color: Colors.grey[700]),
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //       SizedBox(width: 15,),
                      //       Expanded(
                      //         child: Padding(
                      //           padding: const EdgeInsets.symmetric(
                      //               vertical: 10,
                      //               horizontal: 0), //sizeWidth(context) * 0.06),
                      //           child: InkWell(
                      //             onTap: () {},
                      //             child: Container(
                      //               height: 45,
                      //               width: 140,
                      //               decoration: BoxDecoration(
                      //                 color: Colors.white,
                      //                 border: Border.all(color: Colors.grey),
                      //                 borderRadius:
                      //                     BorderRadius.all(Radius.circular(10.0)),
                      //               ),
                      //               child: Row(
                      //                 mainAxisAlignment: MainAxisAlignment.center,
                      //                 children: [
                      //                   Container(
                      //                     child: Image.asset(
                      //                       'assets/icons/facebook.png',
                      //                       height: 35,
                      //                       width: 35,
                      //                     ),
                      //                   ),
                      //                   const SizedBox(
                      //                     width: 5.0,
                      //                   ),
                      //                   Container(
                      //                     child: Text(
                      //                       'Facebook',
                      //                       style: TextStyle(
                      //                           color: Colors.grey[700]),
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),

                      const SizedBox(
                        height: 20.0,
                      ),
                      CustomeTextFormField(
                        hintText: 'Enter 6 digital  Code',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                        
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: sizeWidth(context),
                        margin: EdgeInsets.symmetric(
                            horizontal: sizeWidth(context) * 0.06),
                        height: 45,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: ElevatedButton(
                          child: const Text(
                            'CONFIRM CODE',
                            style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold
                            ),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //     const SnackBar(content: Text('Processing ')));
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const ChpasswordScreen()));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            textStyle: const TextStyle(
                              fontSize: 14,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                     
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                       LoginScreen()));

                          
                        },
                        child: Container(
                          padding: const EdgeInsets.only(top: 10.0),
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              text: "Cancel ",
                              style: const TextStyle(
                                 decoration: TextDecoration.underline,
                                  color: Colors.black, fontSize: 14,
                                  fontWeight: FontWeight.bold
                                  ),
                              children: <TextSpan>[
                                TextSpan(
                                 
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                                                          },
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      /*
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 1.0,
                              width: 30.0.w,
                              color: Colors.grey,
                            ),
                            Text('or').tr(),
                            Container(
                              height: 1.0,
                              width: 30.0.w,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),

                      //Google Button
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: sizeWidth(context) * 0.06),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Container(
                              height: 25,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 2.0.w,
                                  ),
                                  Container(
                                    child: Image.asset(
                                      'assets/icons/google.png',
                                      height: 8.h,
                                      width: 8.w,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    child: Text(
                                      'continue_w_g',
                                      style: TextStyle(color: Colors.grey[700]),
                                    ).tr(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Facebook Button
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: sizeWidth(context) * 0.06),
                        child: GestureDetector(
                          onTap: () => null,
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Container(
                              height: 25,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 2.0.w,
                                  ),
                                  Container(
                                    child: Image.asset(
                                      'assets/icons/facebook.png',
                                      height: 8.h,
                                      width: 8.w,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    child: Text(
                                      'continue_W_F',
                                      style: TextStyle(color: Colors.grey[700]),
                                    ).tr(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10.0),
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            text: 'dont_have_an_account'.tr(),
                            style: TextStyle(color: Colors.black, fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                text: ('Sign_Up').tr(),
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.black,
                                    fontSize: 16),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                SignupScreen()));
                                  },
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      */
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
