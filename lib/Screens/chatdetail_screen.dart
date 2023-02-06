import 'package:flutter/material.dart';
import 'package:sariilanlar/utils/color_schemes.dart';
class ChatdetailScreen extends StatefulWidget {
  

  @override
  _ChatdetailScreenState createState() => _ChatdetailScreenState();
}

class _ChatdetailScreenState extends State<ChatdetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: primaryColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('JOHN SMITH ' ,
            style: TextStyle(
               color: Colors.white,
               fontSize: 20,
               fontWeight: FontWeight.bold,

            ),
            ),
            SizedBox(height: 5,),
            Text('Last Seen 00:02 ' ,
            style: TextStyle(
               color: Colors.white70,
               fontSize: 15,
               

            ),
            ),
          ],
        ),
        actions: [
          Icon(Icons.settings),
        ],
      ),
    body:  Stack(
        children: <Widget>[
           Column(
               children: [
                
                SizedBox(height: 10,),

                  
                 //
                  Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
              Container(
               
                child: Text("TODAY" ,
                 style: TextStyle(
                   
                 ),
                ),
              ),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 30.0, right: 20.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
            ]),

        Column(

           children: [

             Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
                      MaterialButton(
  onPressed: () {},
  //color: Colors.blue,
  textColor: Colors.white,
  child:
    Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         
       
         Column(
           
           children: [
             SizedBox(height: 10,),
             
   SizedBox(height: 3,),
   
              
             
           ],
         ),
             //SizedBox(height:250,),
                
      ],
    ),
  padding: EdgeInsets.all(16),
  shape: CircleBorder(),
),

               SizedBox(width: 5,),
               

             

             ]   
           ),

        

     






          //
         
        ],
      ),


        ]
    ),
     Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                 
                  SizedBox(width: 15,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Type message ",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none
                      ),
                    ),
                  ),

                   GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                       // color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.attachment, color: Colors.black54, size: 20, ),
                    ),
                  ),    
                 // SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.send,color: Colors.white,size: 18,),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],
                
              ),
            ),
          ),
    ]
    )
    );
    

    
  }
}