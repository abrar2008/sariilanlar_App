import 'package:flutter/material.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({ Key? key }) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  double coverheight = 220;
  double profileheight = 144;
  Widget build(BuildContext context) {
    bool isChecked = false;
      final top = coverheight - profileheight / 2;
    final bottom = profileheight / 2;
    return Scaffold(
       appBar: CustomAppBar(
         
          abtitle: 'Profile  Setting',
          showPreferedSize: false,
        
         // bgcolor: Colors.transparent,
        ),
         body: SingleChildScrollView(
           child: Container(
             child: Column(
               children: [
                  Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: bottom),
                height: coverheight,
                // color: Colors.grey,
                child: Image.asset(
                  '$imgpath/profilebg.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: top,
                child: CircleAvatar(
                  radius: profileheight / 2,
                  backgroundColor: Colors.grey.shade800,
                  backgroundImage: AssetImage('$imgpath/profile.png'),
                ),
              )
            ],
                 ),
         Container(
          width:  MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Container(
                 height: 50,
                 padding: const EdgeInsets.only(left: 8.0, right: 8.0, ),
                 child: TextField(
               onChanged: (value) {
                 //Do something with the user input.
               },
               decoration: InputDecoration(
                 hintText: 'John Smith',
                
                hintStyle: TextStyle(
             color: Colors.black,
             fontWeight: FontWeight.bold
                ),
                 enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color: Colors.grey)),
              focusedErrorBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color:Colors.red)),
              errorBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color: Colors.red)),
               ),
                ),
               ),
               SizedBox(height: 20,),
                Container(
                 height: 50,
                 padding: const EdgeInsets.only(left: 8.0, right: 8.0, ),
                 child: TextField(
               onChanged: (value) {
                 //Do something with the user input.
               },
               decoration: InputDecoration(
                 hintText: '123 456 7890',
                
                hintStyle: TextStyle(
             color: Colors.black,
             fontWeight: FontWeight.bold
                ),
                 enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color: Colors.grey)),
              focusedErrorBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color:Colors.red)),
              errorBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color: Colors.red)),
               ),
                ),
               ),
                SizedBox(height: 20,),
                Container(
                 height: 50,
                 padding: const EdgeInsets.only(left: 8.0, right: 8.0, ),
                 child: TextField(
               onChanged: (value) {
                 //Do something with the user input.
               },
               decoration: InputDecoration(
                 hintText: 'Johnsmith@gmail.com',
                
                hintStyle: TextStyle(
             color: Colors.black,
             fontWeight: FontWeight.bold
                ),
                 enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color: Colors.grey)),
              focusedErrorBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color:Colors.red)),
              errorBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color: Colors.red)),
               ),
                ),
               ),
              SizedBox(height: 20,),
                Container(
                 height: 90,
                 padding: const EdgeInsets.only(left: 8.0, right: 8.0, ),
                 child: TextField(
                 
               onChanged: (value) {
                 //Do something with the user input.
               },
               decoration: InputDecoration(
                 hintText: 'Enter You Bio Detail',
                
                hintStyle: TextStyle(
             color: Colors.black,
                
                ),
                 enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color: Colors.grey)),
              focusedErrorBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color:Colors.red)),
              errorBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
               borderSide: BorderSide(color: Colors.red)),
               ),
                ),
               ),
         
         
         
               Container(
                 padding: EdgeInsets.all(20),
                 child: Column(
                   children: [
                     Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.contact_mail),
                              SizedBox(width: 8,),
                         Text("Contact Options",
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold
                         ),
                         ),
         
                            ],
                          ),
                        ) ,
                         Icon(Icons.arrow_forward_ios_outlined)
                       ],
                     ),
                    Divider(),
         
                        Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.privacy_tip),
                              SizedBox(width: 8,),
                         Text("Privacy  & Safety",
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold
                         ),
                         ),
         
                            ],
                          ),
                        ) ,
                         Icon(Icons.arrow_forward_ios_outlined)
                       ],
                     ),
                      Divider(),
         
                        Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.notifications_active_outlined),
                              SizedBox(width: 8,),
                         Text("Notifications",
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.bold
                         ),
                         ),
         
                            ],
                          ),
                        ) ,
                         Switch(
                           activeColor: primaryColor,
            value: isChecked,
            onChanged: (bool value) { 
              setState(() {
                isChecked = value;
              });
             }, 
            ),
                       ],
                     ),

                      Divider(),

                      Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.lock_outlined),
                            SizedBox(width: 8,),
                       Text("Password",
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                       ),

                          ],
                        ),
                      ) ,
                       Icon(Icons.arrow_forward_ios_outlined)
                     ],
                   ),
                    Divider(),

                      Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.mode_night_outlined),
                            SizedBox(width: 8,),
                       Text("Dark & Light",
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                       ),

                          ],
                        ),
                      ) ,
                        Switch(
                           activeColor: primaryColor,
            value: isChecked,
            onChanged: (bool value) { 
              setState(() {
                isChecked = value;
              });
             }, 
            ),
                     ],
                   ),
                    Divider(),

                      Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.language),
                            SizedBox(width: 8,),
                       Text("Language",
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                       ),

                          ],
                        ),
                      ) ,
                       Icon(Icons.arrow_forward_ios_outlined)
                     ],
                   )
                   
                   
                   
                   
                   
                   ],
                 ),
               )
             ],
           ),
         )
               ],
             ),
           ),
         ),
    );
  }
}