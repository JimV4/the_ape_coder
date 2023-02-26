import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ape_coder/main.dart';
import 'package:ape_coder/Java/JavaLesson.dart';
import 'package:ape_coder/Java/JavaTest.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swipeable_page_route/swipeable_page_route.dart';
import 'package:ape_coder/Profile.dart';

late double javaPercent = 0;
late bool Lesson1CheckedJava = false;
late bool Lesson2CheckedJava = false;
late bool Lesson3CheckedJava = false;
late bool Lesson4CheckedJava = false;
late bool Lesson5CheckedJava = false;
late bool Lesson6CheckedJava = false;

class JavaLessonsWidget extends StatefulWidget {
  const JavaLessonsWidget({Key? key}) : super(key: key);

  @override
  _JavaLessonsWidgetState createState() => _JavaLessonsWidgetState();
}

class _JavaLessonsWidgetState extends State<JavaLessonsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      appBar: AppBar(
        title: const Text("Java Lessons"),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => LanguagesScreenWidget(),
            ),
          ),
        ),
      ),
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
                  children: <Widget>[
                    //--------------------------------------------------------------------------------
                    // LESSON 1
                    SizedBox(height: 60.0),
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => JavaLessonWidget(
                              lessonName: 'Lesson 1',
                              lessonChecked: Lesson1CheckedJava,
                            ),
                          ),
                        ),
                      },
                      child: new Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        child: Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: new Text(
                                  "Lesson 1",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 25),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 160),
                              child: IconButton(
                                icon: Lesson1CheckedJava
                                    ? Icon(Icons.check_box, size: 30)
                                    : Icon(Icons.check_box_outline_blank,
                                        size: 30),
                                onPressed: () {
                                  setState(() {
                                    Lesson1CheckedJava = !Lesson1CheckedJava;
                                  });
                                  if (Lesson1CheckedJava == true) {
                                    javaPercent += 0.15;
                                  } else {
                                    javaPercent -= 0.15;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //--------------------------------------------------------------------------------
                    // LESSON 2
                    SizedBox(height: 40.0),
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => JavaLessonWidget(
                              lessonName: 'Lesson 2',
                              lessonChecked: Lesson2CheckedJava,
                            ),
                          ),
                        ),
                      },
                      child: new Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        child: Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: new Text(
                                  "Lesson 2",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 25),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 160),
                              child: IconButton(
                                icon: Lesson2CheckedJava
                                    ? Icon(Icons.check_box, size: 30)
                                    : Icon(Icons.check_box_outline_blank,
                                        size: 30),
                                onPressed: () {
                                  setState(() {
                                    Lesson2CheckedJava = !Lesson2CheckedJava;
                                  });
                                  if (Lesson2CheckedJava == true) {
                                    javaPercent += 0.15;
                                  } else {
                                    javaPercent -= 0.15;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //--------------------------------------------------------------------------------
                    // LESSON 3
                    SizedBox(height: 40.0),
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => JavaLessonWidget(
                              lessonName: 'Lesson 3',
                              lessonChecked: Lesson3CheckedJava,
                            ),
                          ),
                        ),
                      },
                      child: new Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        child: Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: new Text(
                                  "Lesson 3",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 25),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 160),
                              child: IconButton(
                                icon: Lesson3CheckedJava
                                    ? Icon(Icons.check_box, size: 30)
                                    : Icon(Icons.check_box_outline_blank,
                                        size: 30),
                                onPressed: () {
                                  setState(() {
                                    Lesson3CheckedJava = !Lesson3CheckedJava;
                                  });
                                  if (Lesson3CheckedJava == true) {
                                    javaPercent += 0.15;
                                  } else {
                                    javaPercent -= 0.15;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //--------------------------------------------------------------------------------
                    // LESSON 4
                    SizedBox(height: 40.0),
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => JavaLessonWidget(
                              lessonName: 'Lesson 4',
                              lessonChecked: Lesson4CheckedJava,
                            ),
                          ),
                        ),
                      },
                      child: new Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        child: Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: new Text(
                                  "Lesson 4",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 25),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 160),
                              child: IconButton(
                                icon: Lesson4CheckedJava
                                    ? Icon(Icons.check_box, size: 30)
                                    : Icon(Icons.check_box_outline_blank,
                                        size: 30),
                                onPressed: () {
                                  setState(() {
                                    Lesson4CheckedJava = !Lesson4CheckedJava;
                                  });
                                  if (Lesson4CheckedJava == true) {
                                    javaPercent += 0.15;
                                  } else {
                                    javaPercent -= 0.15;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //--------------------------------------------------------------------------------
                    // LESSON 5
                    SizedBox(height: 40.0),
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => JavaLessonWidget(
                              lessonName: 'Lesson 5',
                              lessonChecked: Lesson5CheckedJava,
                            ),
                          ),
                        ),
                      },
                      child: new Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        child: Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: new Text(
                                  "Lesson 5",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 25),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 160),
                              child: IconButton(
                                icon: Lesson5CheckedJava
                                    ? Icon(Icons.check_box, size: 30)
                                    : Icon(Icons.check_box_outline_blank,
                                        size: 30),
                                onPressed: () {
                                  setState(() {
                                    Lesson5CheckedJava = !Lesson5CheckedJava;
                                  });
                                  if (Lesson5CheckedJava == true) {
                                    javaPercent += 0.15;
                                  } else {
                                    javaPercent -= 0.15;
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),

                    //--------------------------------------------------------------------------------
                    // LESSON 6
                    GestureDetector(
                      onTap: () => {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => JavaLessonWidget(
                              lessonName: 'Lesson 6',
                              lessonChecked: Lesson6CheckedJava,
                            ),
                          ),
                        ),
                      },
                      child: new Container(
                        height: 100.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.black, width: 5),
                        ),
                        child: Row(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: new Text(
                                  "Lesson 6",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 25),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 160),
                              child: IconButton(
                                /* icon: const Icon(Icons.check_box_outline_blank,
                                  size: 30), */
                                icon: Lesson6CheckedJava
                                    ? Icon(Icons.check_box, size: 30)
                                    : Icon(Icons.check_box_outline_blank,
                                        size: 30),
                                onPressed: () {
                                  setState(() {
                                    Lesson6CheckedJava = !Lesson6CheckedJava;
                                  });
                                  if (Lesson6CheckedJava == true) {
                                    javaPercent += 0.15;
                                  } else {
                                    javaPercent -= 0.15;
                                  }
                                },
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
              Positioned(
                //position at bottom
                bottom: 0,
                left: 0,
                right: 0, //set left right to 0 for 100% width
                child: Container(
                  //your bototm widget tree
                  height: 100,
                  color: Color.fromARGB(255, 47, 47, 47),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        new InkWell(
                          child: Text(
                            "For the Java Library Click Here",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          onTap: () => launch(
                              'https://docs.oracle.com/javase/8/docs/api/allclasses-frame.html'),
                        ),
                        SizedBox(height: 15.0),
                        SizedBox(
                          width: 350.0,
                          height: 50.0,
                          child: ElevatedButton(
                            onPressed: () => {
                              if (Lesson1CheckedJava &&
                                  Lesson2CheckedJava &&
                                  Lesson3CheckedJava &&
                                  Lesson4CheckedJava &&
                                  Lesson5CheckedJava &&
                                  Lesson6CheckedJava)
                                {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => JavaTestWidget(),
                                    ),
                                  ),
                                }
                              else
                                {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.red,
                                      duration: Duration(seconds: 3),
                                      content: Container(
                                        padding: EdgeInsets.all(16),
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                        ),
                                        child: Text(
                                            "Complete all lessons before taking the test!",
                                            style: TextStyle(fontSize: 14)),
                                      ),
                                    ),
                                  )
                                }
                            },
                            child: Text(
                              "Take Test",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28.0),
                                  side: BorderSide(color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
