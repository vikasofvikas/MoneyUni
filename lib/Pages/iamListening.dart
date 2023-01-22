import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sleducation/Widgets/customWidgets.dart';


class iamListening extends StatefulWidget {

  @override
  _courseHomePage createState() => _courseHomePage();
}


class _courseHomePage extends State<iamListening> {

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
                Text("I'm listening..", style: GoogleFonts.roboto(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.green),),
                SizedBox(height: 20,),
                InkWell(
                  // When the user taps the button, show a snackbar.
                    onTap: () {
                      Navigator.pop(context);
                    },
               child:     Icon(
                 Icons.cancel,
                 color: Colors.green,
                 size: 60.0,
                 textDirection: TextDirection.ltr,
                 semanticLabel: 'Icon', // Announced in accessibility modes (e.g TalkBack/VoiceOver). This label does not show in the UI.
               ),
                ),



              ]

          ),

        ),

      ),


    );
  }
}



