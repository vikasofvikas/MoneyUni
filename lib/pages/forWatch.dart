import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sleducation/Widgets/customWidgets.dart';
import 'package:sleducation/pages/iamListening.dart';

class watchHomePage extends StatefulWidget {

  @override
  _courseHomePage createState() => _courseHomePage();
}


class _courseHomePage extends State<watchHomePage> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;



    return Scaffold(
      body:
      Container(
        width: double.infinity,
        child:
        Center(
          child:
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children:[ 
               Text("Tap to add expenses", style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green),),
               SizedBox(height: 20,),
          InkWell(
            // When the user taps the button, show a snackbar.
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   iamListening(),),
                );
              },
            child:  Container(
              child: Icon(
                Icons.keyboard_voice_sharp,
                color: Colors.green,
                size: 40.0,
                textDirection: TextDirection.ltr,
                semanticLabel: 'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
              ),

              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.green.withOpacity(0.3),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(38.0),
              ),
            )
          ),




             ]

           ),

    ),

      ),


    );
  }
}



