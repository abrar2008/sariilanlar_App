import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sariilanlar/Screens/chatdetail_screen.dart';

class Chatscreen extends StatefulWidget {
 

  @override
  _ChatscreenState createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
   List<String> mylist = [
   'Deirdre John ' ,
   'John Smith ' ,

   'Deirdre John ' , 

   'Olivia James' ,

   'John Smith' ,
   'Deirdre John' , 
   'Olivia James' ,
   'John Smith' , 
   'Deirdre John' ,


 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //        backgroundColor: Colors.white,
      //        iconTheme: IconThemeData(
      //     color: Colors.black
        
      //   ),
      //   title: Text('Chat ' ,
      //  style: TextStyle(
      //    color: Colors.black,
      //  ),
      //  ),
      //    actions: [
        
      //             IconButton(
      //       icon: Icon(Icons.search),
      //       onPressed: () {
      //       },
      //     ),
                     
      //            IconButton(
      //       icon: Icon(Icons.more_vert_rounded),
      //       onPressed: () {
      //       },
      //     ),  
                    
                   
      //    ]    
       
      // ), 

body: ListView.builder(
  
          itemCount: mylist.length,
          itemBuilder: (context , index) => ListTile (
           
            minLeadingWidth: 20,
           horizontalTitleGap: 5,
             leading: CircleAvatar(
               
               backgroundImage: NetworkImage('https://www.gravatar.com/avatar/1b8fabaa8d66250a7049bdb9ecf44397?s=250&d=mm&r=x'),

maxRadius: 30,
              
               ),
             title: Text('${mylist[index]}'),
             subtitle: 
            InkWell(
                  onTap: (){
              
               Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ChatdetailScreen()
    
    ));
              
          

                  },
                    child: Column(


                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                    SizedBox(height: 5,),
                     Text('Car Sell '),
                     SizedBox(height: 2,),
                     Text('larem ipsum dolor sit amet '),
                   
                     
                 ],

               ),
             ),



             trailing: Text('20:35'),
            
            )
          
          )
        
        


    );
  }
}
