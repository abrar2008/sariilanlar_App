import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sariilanlar/Screens/home_screen.dart';
import 'package:sariilanlar/Screens/login_screen.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:sariilanlar/widgets/text_input.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final formKey = GlobalKey<FormState>();
  // bool _loading = false;
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passController = TextEditingController();

  bool rememberMe = false;

  bool _pwShow = true;
  bool flag = false;
bool isChecked = false;
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
                        child:Image.asset("$imgpath/logo.png"),
                      ),
                     
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: const Text(
                            'Create Account',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 17),
                          child: Text(
                            'Please Create Account to Countinue',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          )),
                      const SizedBox(
                        height: 10.0,
                      ),
                      //Google Button
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: sizeWidth(context) * 0.06,
                            vertical: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 0), //sizeWidth(context) * 0.06),
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 45,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Image.asset(
                                            'assets/icons/google.png',
                                            height: 30,
                                            width: 30,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Container(
                                          child: Text(
                                            'Google',
                                            style: TextStyle(
                                                color: Colors.grey[700]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 0), //sizeWidth(context) * 0.06),
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 45,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Image.asset(
                                            'assets/icons/facebook.png',
                                            height: 35,
                                            width: 35,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5.0,
                                        ),
                                        Container(
                                          child: Text(
                                            'Facebook',
                                            style: TextStyle(
                                                color: Colors.grey[700]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      CustomeTextFormField(
                        hintText: 'Name',
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

                      CustomeTextFormField(
                        hintText: 'Email Address',
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
                      CustomeTextFormField(
                        obscureText: true,
                        hintText: 'Password',
                        validator: (String? val) {
                          if (val == null || val.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),


                   Container(
                     padding: EdgeInsets.only(left: 5,right: 10,top: 10),
                     child: Row(
                                             children: [
                                               Checkbox(
                                                 shape: CircleBorder(),

activeColor: primaryColor,              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
                                               Text("I agree with the Terms Of Services & Privacy Policy",
                                               style: TextStyle(
                                                 fontSize: 12,
                                                 
                                               ),
                                               )
                                             ],
                                           ),
                   ),
                      const SizedBox(
                        height: 10.0,
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
                            'SIGN UP',
                            style: TextStyle(color: Colors.black,
                            fontWeight: FontWeight.bold
                            ),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Processing ')));
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const HomePage()));
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
                      // Container(
                      //   alignment: Alignment.center,
                      //   child: TextButton(
                      //     onPressed: () {
                      //       // Navigator.push(
                      //       //     context,
                      //       //     MaterialPageRoute(
                      //       //         builder: (BuildContext context) =>
                      //       //             ForgetPassword()));
                      //     },
                      //     child:  Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         Text(
                      //           'Have an Account? ',
                      //           style: TextStyle(
                                  
                      //               fontSize: 15,
                      //               color: Colors.black),
                      //         ),
                      //         Text(
                      //           'Login Now',
                      //           style: TextStyle(
                      //               decoration: TextDecoration.underline,
                      //               fontSize: 15,
                      //               color: primaryColor),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10.0),
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(
                            text: "Have an Account? ",
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                text: ('Login Now'),
                                style: const TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: primaryColor,
                                    fontSize: 16),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                LoginScreen()));
                                  },
                              )
                            ],
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
