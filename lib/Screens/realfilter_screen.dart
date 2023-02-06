import 'package:flutter/material.dart';
import 'package:sariilanlar/Screens/estateresult_screen.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
import 'package:sariilanlar/widgets/custome_app_bar.dart';

class Realfilterscreen extends StatelessWidget {
  const Realfilterscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
            appBar: CustomAppBar(
            abtitle: "Real Estate Categories",
            bgcolor: primaryColor,
            // apbarheight: 180,
            showPreferedSize: false,
            onTap: () {
              //  Navigator.pop(context);
            },
          ),


           body: Container(
             child: Column(
               children: [
                 SizedBox(height: 10,),
                 Center(
                   child: Text("Real Estate",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     color: primaryColor,
                     fontSize: 18,
                     fontWeight: FontWeight.bold
                   ),
                   ),
                 ),
               Divider(
                 color: primaryColor,thickness: 1,
               ),

               InkWell(
                 onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Estateresultscreen()),
  );
                 },
                 child: Container(
                   padding: EdgeInsets.all(10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("All Real Estate",
                       style: TextStyle(
                         color: primaryColor,
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                       ),
               
                       Text("(479,023)",
                       style: TextStyle(
                         color: primaryColor,
                         fontWeight: FontWeight.bold
                       ),
                       )
                     ],
                   ),
                 ),
               ),
               Divider(
                 color: Colors.black38,
               ),

                   InkWell(
                 onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Estateresultscreen()),
  );
                 },
                 child: Container(
                   padding: EdgeInsets.all(10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Housing",
                       style: TextStyle(
                    
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                       ),
                 
                       Text("(479,023)",
                       style: TextStyle(
                       
                         fontWeight: FontWeight.bold
                       ),
                       )
                     ],
                   ),
                                ),
                 ),
                   Divider(
                 color: Colors.black38,
               ),

                   InkWell(
                 onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Estateresultscreen()),
  );
                 },
                 child: Container(
                   padding: EdgeInsets.all(10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Workplace",
                       style: TextStyle(
                    
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                       ),
                 
                       Text("(115,023)",
                       style: TextStyle(
                       
                         fontWeight: FontWeight.bold
                       ),
                       )
                     ],
                   ),
                                ),
                 ),

                   Divider(
                 color: Colors.black38,
               ),

                   InkWell(
                 onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Estateresultscreen()),
  );
                 },
                 child: Container(
                   padding: EdgeInsets.all(10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Land",
                       style: TextStyle(
                    
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                       ),
                 
                       Text("(182,023)",
                       style: TextStyle(
                       
                         fontWeight: FontWeight.bold
                       ),
                       )
                     ],
                   ),
                                ),
                 ),
                   Divider(
                 color: Colors.black38,
               ),

                   InkWell(
                 onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Estateresultscreen()),
  );
                 },
                 child: Container(
                   padding: EdgeInsets.all(10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Projects",
                       style: TextStyle(
                    
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                       ),
                 
                       Text("(604)",
                       style: TextStyle(
                       
                         fontWeight: FontWeight.bold
                       ),
                       )
                     ],
                   ),
                                ),
                 ),
                   Divider(
                 color: Colors.black38,
               ),

                   InkWell(
                 onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Estateresultscreen()),
  );
                 },
                 child: Container(
                   padding: EdgeInsets.all(10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Building ",
                       style: TextStyle(
                    
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                       ),
                 
                       Text("(10,123)",
                       style: TextStyle(
                       
                         fontWeight: FontWeight.bold
                       ),
                       )
                     ],
                   ),
                                ),
                 ),
                   Divider(
                 color: Colors.black38,
               ),

                   InkWell(
                 onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Estateresultscreen()),
  );
                 },
                 child: Container(
                   padding: EdgeInsets.all(10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Timeshare",
                       style: TextStyle(
                    
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                       ),
                 
                       Text("(125)",
                       style: TextStyle(
                       
                         fontWeight: FontWeight.bold
                       ),
                       )
                     ],
                   ),
                                ),
                 ),
                   Divider(
                 color: Colors.black38,
               ),

                   InkWell(
                 onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Estateresultscreen()),
  );
                 },
                 child: Container(
                   padding: EdgeInsets.all(10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Touristic Facility",
                       style: TextStyle(
                    
                         fontSize: 15,
                         fontWeight: FontWeight.bold
                       ),
                       ),
                 
                       Text("(1,6252)",
                       style: TextStyle(
                       
                         fontWeight: FontWeight.bold
                       ),
                       )
                     ],
                   ),
                                ),
                 )
               ],
             ),
           ),
    );
  }
}