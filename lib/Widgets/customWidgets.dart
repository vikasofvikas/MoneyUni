import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




Color title = Color.fromRGBO(255, 88, 100, 1);

class sound_box extends StatelessWidget {
  final String URL;
  final String imagePath;
  final String soundName;


  const sound_box({

    required this.URL,
    required this.imagePath,
    required this.soundName,

  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return  GestureDetector(
      onTap: () {
       },
      child:
      Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius:  BorderRadius.circular(10.0),
            color: Theme.of(context).backgroundColor,
            boxShadow: [
              BoxShadow(
                color:  Colors.grey.withOpacity(0.7),
                blurRadius: 10,
                offset: const Offset(0, 0),
              ),
            ],
            border: Border.all(
                color:Theme.of(context).hintColor.withOpacity(0.3),
                width: 3
            ),
            //shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.end,
            children: [

              Center(child: Text(soundName,style: GoogleFonts.handlee(  fontWeight: FontWeight.bold,fontSize: height/50),),),
            ],)),);
  }
}






class CourseContent extends StatelessWidget {
  final String number;
  final int duration;
  final String title;


  const CourseContent({

    required this.number,
    required this.duration,
    required this.title,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child:

        Row(
          children: <Widget>[
            Text(
              number,
              style: TextStyle(

                fontSize: 32,
                color:
                  Colors.green
              ),
            ),
            SizedBox(width: 20),

            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children:[
                  Text (
                    "$duration mins read\n", style: TextStyle(

                    fontSize: 15,
                  ),

                  ),

                  Text (
                    title, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),

                  ),
                ]),

            Spacer(),

            Container(
              margin: EdgeInsets.only(left: 20),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3),
              ),
              child: Icon(Icons.arrow_forward_ios, color: Colors.green,),
            )



          ],

        ),




    );
  }
}

buildTextTitleVariation2(String text, double fontsizenumber   )

{
  return Padding(
    padding: EdgeInsets.only(bottom: 16),
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontsizenumber,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

buildTextSubTitleVariation1(String text, double fontsizenumber ){
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(

        text,
        style: TextStyle(

          fontSize: fontsizenumber,
          height: 1.5,
          //  fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.justify
    ),
  );
}


class meaningDialogue extends StatelessWidget {
  final String word;
  final String meaning;
  final double fontsizenumber;

  const meaningDialogue({
    required this.word,
    required this.meaning,
    required this.fontsizenumber,

  });
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () =>
          showDialog<String>(
            context: context,
            builder: (BuildContext context) =>
                AlertDialog(
                  contentPadding: EdgeInsets.all(10),
                  titlePadding: EdgeInsets.all(10),
                  scrollable: true,
                  title:   Text(word,style: TextStyle(fontSize: fontsizenumber,)),
                  content:
                  Text(
                      meaning,
                      style: TextStyle(fontSize: fontsizenumber, height: 1.5,),
                      textAlign: TextAlign.justify
                  ),
                  actions: [

                    Center(child:
                    IconButton(
                      icon: Icon(
                        Icons.backspace_outlined,

                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },),),],
                ),
          ),
      child: Text(word, style: TextStyle(fontSize: fontsizenumber,decoration: TextDecoration.underline,),),
    );
  }
}

newWords( double fontsizenumber)
{
  return Column(
    children: [

      Divider(
        thickness: 0.2, // thickness of the line
        // empty space to the trailing edge of the divider.
        color: Colors.grey,
        // The color to use when painting the line.
        height: 25, // The divider's height extent.
      ),

      Text("New Words",style: TextStyle(fontSize: fontsizenumber,fontWeight: FontWeight.bold),)

    ],

  );
}


dailyTask2(String text,   ){
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(

        text,
        style: TextStyle(


          height: 1.5,
          //  fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.justify
    ),
  );
}