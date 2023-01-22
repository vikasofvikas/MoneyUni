import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sleducation/Widgets/customWidgets.dart';


class courseHomePage extends StatefulWidget {

  @override
  _courseHomePage createState() => _courseHomePage();
}


class _courseHomePage extends State<courseHomePage> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;



    return Scaffold(
      body:
      Container(
        width: double.infinity,
        child:
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: 30, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                        ),),

                    ],),


                  Center(child:
                  Text("Today's Task", style: GoogleFonts.handlee(fontSize: 46,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 15,)],),),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight:  Radius.circular(70),topLeft:  Radius.circular(70)),
                  color: Colors.green.withOpacity(0.1),
                ),
                child:
                ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: <Widget>[

                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 0,left: 30,right: 30,bottom: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                             /*   Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:[   Container(
                                      height: height/3.5,
                                      width: height/3.5,
                                      child:Image.asset('assets/images/day1.png'),
                                    ),]
                                ),*/
                                // Text("Course Content", style: kTitleTextStyle),
                                SizedBox(height: 10),
                                CourseContent(
                                  number: "01",
                                  duration: 3,
                                  title: "Finance basics",

                                ),
                                CourseContent(
                                  number: '02',
                                  duration: 2,
                                  title: "Do's and Dont's",

                                ),
                                CourseContent(
                                  number: '03',
                                  duration: 3,
                                  title: "Financial discipline",


                                ),

                                Padding(
                                  padding: const EdgeInsets.only(bottom: 30),
                                  child:
                                  InkWell(
                                    onTap: () {

                                     /* Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>    HomeScreen(),),
                                      );*/
                                    }, // Handle your callback
                                    child:
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "04",
                                          style: TextStyle(
                                            fontSize: 32,
                                            color: Colors.green
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                              Text (
                                                "3 mins read\n",
                                                style: TextStyle( fontSize: 15,  ),
                                              ),
                                              Text (
                                                "Understanding market",style: TextStyle( fontSize: 18,fontWeight: FontWeight.bold),
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
                                        )],),),),

                              ],),),],),]),
              ),),],),),);}}



