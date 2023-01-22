import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sleducation/pages/coursepage/coursepagehome.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreen createState() => _HomeScreen();
}
class _HomeScreen extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return
      Scaffold(
    //  extendBodyBehindAppBar: true,
//                  Text("Today's Task", style: GoogleFonts.handlee(fontSize: 46,fontWeight: FontWeight.bold),),
      appBar: AppBar(
        title:    Text("Money Uni", style: GoogleFonts.handlee(fontSize: 26,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
      centerTitle: true,

      ),

      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [



/////////////////////////////////////////////////////////
// First container
        Center(
          child: Container(

            child: Column(

              children: [
                Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(1.0),topRight: Radius.circular(1.0)),

                    color: Colors.green.withOpacity(0.09),
                  ),
                  width: width/1.05,
                  height: height/19,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("Your learning journey",
                      ),
                    ],
                  ),
                ),
                  SizedBox( height:20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                            CircularPercentIndicator(
                                radius: 70.0,
                                animation: true,
                                animationDuration: 1600,
                                lineWidth: 15.0,
                                percent: 0.4,
                                center: new Text(
                                  " Your\nStreak",
                                  style:
                                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                                ),
                            circularStrokeCap: CircularStrokeCap.round,
                            backgroundColor: Colors.grey.withOpacity(0.1),
                            progressColor: Colors.green,

                          ),],
                        ),
                    
                 Container(

                   width: width/2.5,
                   height: height/4,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     border: Border.all(
                       color: Colors.grey.withOpacity(0.1),
                       width: 3,
                     ),
                     borderRadius: BorderRadius.circular(8.0),
                   ),
                   child:
                   Column(children: [
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(topLeft: Radius.circular(1.0),topRight: Radius.circular(1.0)),
                         color: Colors.grey.withOpacity(0.09),
                       ),
                       width: width/1.05,
                       height: height/19,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Your FI's",
                           ),
                         ],
                       ),
                     ),
                         SizedBox(height: 2,),
                         Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                          Image.asset('assets/images/diamond.png',height: 75,width: 75,),
                           Text("26",style: TextStyle(fontSize: 25, color: Colors.black),),
                         ],
                         ),
                     TextButton(
                       onPressed: () {

                         },
                       child: Container(

                         decoration: BoxDecoration(
                           color: Colors.green,
                           border: Border.all(
                             color: Colors.greenAccent.withOpacity(0.2),
                             width: 3,
                           ),
                           borderRadius: BorderRadius.circular(8.0),
                         ),
                         padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                         child: const Text(
                           'Redeem',
                           style: TextStyle(color: Colors.white, fontSize: 13.0),
                         ),
                       ),
                     ),

                   ],)
                  )

                  ],
                )

              ],
            ),
            width: width/1.1,
            height: height/2.8,
            decoration: BoxDecoration(
                color: Colors.white,
              border: Border.all(
                color: Colors.green.withOpacity(0.3),
                width: 3,
              ),
              borderRadius: BorderRadius.circular(8.0),
            )
          ),
        ),


        //Second container
          Center(
            child: Container(

                child: Column(

                  children: [

                    SizedBox( height:5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(

                            width: width/2.5,
                            height: height/4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.1),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child:
                            Column(
                              children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(1.0),topRight: Radius.circular(1.0)),
                                  color: Colors.grey.withOpacity(0.09),
                                ),
                                width: width/1.05,
                                height: height/19,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Learn",
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5,),
                                Image.asset('assets/images/writing.png',height: 75,width: 75,),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>   courseHomePage(),),
                                  );},
                                  child: Container(

                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      border: Border.all(
                                        color: Colors.greenAccent.withOpacity(0.2),
                                        width: 3,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                    child: const Text(
                                      'Start learning',
                                      style: TextStyle(color: Colors.white, fontSize: 13.0),
                                    ),
                                  ),
                                ),


                            ],)
                        ),

                        Container(

                            width: width/2.5,
                            height: height/4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.1),
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child:
                            Column(children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(1.0),topRight: Radius.circular(1.0)),
                                  color: Colors.grey.withOpacity(0.09),
                                ),
                                width: width/1.05,
                                height: height/19,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Add expenses",
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5,),
                              Image.asset('assets/images/moneystack.png',height: 75,width: 75,),
                              TextButton(
                                onPressed: () {
                              /*    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>   IndexPage(),),
                                  );*/

                                },
                                child: Container(

                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    border: Border.all(
                                      color: Colors.greenAccent.withOpacity(0.2),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                  child: const Text(
                                    'Start adding',
                                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                                  ),
                                ),
                              ),


                            ],)
                        )

                      ],
                    )

                  ],
                ),

            ),
          ),
      ],



      )

    );
  }
}
