import 'package:ape_coder/Javascript/JavascriptLessons.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
//import 'cppLessons.dart' as cppLessons;
import 'package:ape_coder/CPP/cppLessons.dart';
//import 'cppLessons.dart' as a;
import 'package:ape_coder/CPP/cppLessons.dart';
import 'package:ape_coder/Java/JavaLessons.dart';
import 'package:ape_coder/Profile.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'The Ape Coder',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LanguagesScreenWidget());
  }
}

class LanguagesScreenWidget extends StatefulWidget {
  const LanguagesScreenWidget({Key? key}) : super(key: key);
  //static late double cplusplusPercent;

  @override
  _LanguagesScreenWidgetState createState() => _LanguagesScreenWidgetState();
}

class _LanguagesScreenWidgetState extends State<LanguagesScreenWidget> {
  static late double percentage;

  @override
  Widget build(BuildContext context) {
    /* setState(() {
      if (a.cplusplusPercent > 0)
        percentage = a.cplusplusPercent;
      else
        percentage = 0;
    }); */
    setState(() {
      if (cplusplusPercent < 0) {
        cplusplusPercent = 0;
      }
      print(cplusplusPercent);
    });
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      appBar: AppBar(
          title: const Text("Ape's Languages"),
          actions: <Widget>[
            IconButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProfileWidget(),
                ),
              ),
              icon: const Icon(Icons.account_circle),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.black),
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx < 0) {
            Navigator.of(context).push(SwipeablePageRoute(
              builder: (BuildContext context) => ProfileWidget(),
            ));
          }
        },
        child: Center(
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(height: 60.0),
                    //Spacer(flex: ),

                    //----------------------------------------------------------------------------------------------------------
                    //C++
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CppLessonsWidget(),
                          ),
                        ),
                      },
                      // ignore: unnecessary_new
                      child: new Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        //color: Colors.transparent,
                        child: Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 30, right: 70),
                                    child: new Text(
                                      "C++",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 25),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 15),
                                    child: LinearPercentIndicator(
                                      width: 180.0,
                                      lineHeight: 4.0,
                                      percent: cplusplusPercent,
                                      backgroundColor: Colors.grey,
                                      progressColor:
                                          Color.fromARGB(255, 165, 88, 149),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/cplusplusIcon.png'),
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    //----------------------------------------------------------------------------------------------------------
                    //Java
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => JavaLessonsWidget(),
                          ),
                        ),
                      },
                      // ignore: unnecessary_new
                      child: new Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        //color: Colors.transparent,
                        child: Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 30, right: 70),
                                    child: new Text(
                                      "Java",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 25),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 15),
                                    child: LinearPercentIndicator(
                                      width: 180.0,
                                      lineHeight: 4.0,
                                      percent: javaPercent,
                                      backgroundColor: Colors.grey,
                                      progressColor:
                                          Color.fromARGB(255, 165, 88, 149),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60),
                              child: Image(
                                image: AssetImage('assets/images/javaIcon.png'),
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    //----------------------------------------------------------------------------------------------------------
                    //Javasript
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => JavascriptLessonsWidget(),
                          ),
                        ),
                      },
                      // ignore: unnecessary_new
                      child: new Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        //color: Colors.transparent,
                        child: Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 30, right: 10),
                                    child: new Text(
                                      "Javascript",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 25),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 15),
                                    child: LinearPercentIndicator(
                                      width: 180.0,
                                      lineHeight: 4.0,
                                      percent: JavascriptPercent,
                                      backgroundColor: Colors.grey,
                                      progressColor:
                                          Color.fromARGB(255, 165, 88, 149),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/javascriptIcon.png'),
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    //----------------------------------------------------------------------------------------------------------
                    //PHP
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CppLessonsWidget(),
                          ),
                        ),
                      },
                      // ignore: unnecessary_new
                      child: new Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        //color: Colors.transparent,
                        child: Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 30, right: 70),
                                    child: new Text(
                                      "PHP",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 25),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 15),
                                    child: LinearPercentIndicator(
                                      width: 180.0,
                                      lineHeight: 4.0,
                                      percent: 0.2,
                                      backgroundColor: Colors.grey,
                                      progressColor:
                                          Color.fromARGB(255, 165, 88, 149),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60),
                              child: Image(
                                image: AssetImage('assets/images/phpIcon.png'),
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    //----------------------------------------------------------------------------------------------------------
                    //Python
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CppLessonsWidget(),
                          ),
                        ),
                      },
                      // ignore: unnecessary_new
                      child: new Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        //color: Colors.transparent,
                        child: Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 30, right: 45),
                                    child: new Text(
                                      "Python",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 25),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 15),
                                    child: LinearPercentIndicator(
                                      width: 180.0,
                                      lineHeight: 4.0,
                                      percent: 0.2,
                                      backgroundColor: Colors.grey,
                                      progressColor:
                                          Color.fromARGB(255, 165, 88, 149),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60),
                              child: Image(
                                image:
                                    AssetImage('assets/images/pythonIcon.png'),
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    //----------------------------------------------------------------------------------------------------------
                    //Ruby
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CppLessonsWidget(),
                          ),
                        ),
                      },
                      // ignore: unnecessary_new
                      child: new Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        //color: Colors.transparent,
                        child: Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 30, right: 70),
                                    child: new Text(
                                      "Ruby",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 25),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10, top: 15),
                                    child: LinearPercentIndicator(
                                      width: 180.0,
                                      lineHeight: 4.0,
                                      percent: 0.2,
                                      backgroundColor: Colors.grey,
                                      progressColor:
                                          Color.fromARGB(255, 165, 88, 149),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 60),
                              child: Image(
                                image: AssetImage('assets/images/rubyIcon.png'),
                                height: 60,
                                width: 60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 120.0),
                  ],
                ),
              ),
              //SizedBox(height: 120.0),
              Positioned(
                //position at bottom
                bottom: 0,
                left: 0,
                right: 0, //set left right to 0 for 100% width
                child: Container(
                    //your bototm widget tree
                    height: 45,
                    color: Color.fromARGB(255, 47, 47, 47),
                    child: SizedBox(height: 65)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
