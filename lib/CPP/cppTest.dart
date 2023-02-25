import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ape_coder/CPP/cppTestSuccessful.dart';
import 'cppLessons.dart';
import 'package:vibration/vibration.dart';
import 'package:audioplayers/audioplayers.dart';

const backgroundcolor = Color.fromARGB(255, 47, 47, 47);
bool Q1A_checked = false;
bool Q1B_checked = false;
bool Q1C_checked = false;

bool Q2A_checked = false;
bool Q2B_checked = false;
bool Q2C_checked = false;

bool Q3A_checked = false;
bool Q3B_checked = false;
bool Q3C_checked = false;

bool Q4A_checked = false;
bool Q4B_checked = false;
bool Q4C_checked = false;

bool Q5A_checked = false;
bool Q5B_checked = false;
bool Q5C_checked = false;

int counter = 0;

class CppTestWidget extends StatefulWidget {
  const CppTestWidget({Key? key}) : super(key: key);

  @override
  _CppTestWidgetState createState() => _CppTestWidgetState();
}

class _CppTestWidgetState extends State<CppTestWidget> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        title: const Text("Test"),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CppLessonsWidget(),
            ),
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  //------------------------------------------------------------------------------------------------------------
                  //------------------------------------------------------------------------------------------------------------
                  //------------------------------------------------------------------------------------------------------------
                  //------------------------------------------------------------------------------------------------------------
                  //------------------------------------------------------------------------------------------------------------
                  // QUESTION 1
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Container(
                      height: 560,
                      width: 370,
                      decoration: BoxDecoration(
                        color: backgroundcolor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 7),
                            child: Text(
                                "  1.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in nulla lacus. Maecenas egestas eros a nibh ornare congue. Proin egestas urna pellentesque, dignissim purus et, mattis orci. Aliquam maximus a libero a sollicitudin. Nam mollis, nisl quis dictum gravida, ligula tortor laoreet neque, et iaculis velit neque molestie nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in nulla lacus. Maecenas egestas eros a nibh ornare congue.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q1A_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q1A_checked = !Q1A_checked;
                                      counter++;
                                      if (Q1B_checked) {
                                        Q1B_checked = false;
                                      }
                                      if (Q1C_checked) {
                                        Q1C_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option A",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          //SizedBox(height: 5.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q1B_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q1B_checked = !Q1B_checked;
                                      if (Q1A_checked) {
                                        Q1A_checked = false;
                                        counter--;
                                      }
                                      if (Q1C_checked) {
                                        Q1C_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option B",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q1C_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q1C_checked = !Q1C_checked;
                                      if (Q1A_checked) {
                                        Q1A_checked = false;
                                        counter--;
                                      }
                                      if (Q1B_checked) {
                                        Q1B_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option C",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //SizedBox(height: 15.0),

                  //------------------------------------------------------------------------------------------------------------------
                  //------------------------------------------------------------------------------------------------------------------
                  //------------------------------------------------------------------------------------------------------------------
                  //------------------------------------------------------------------------------------------------------------------
                  // QUESTION 2

                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Container(
                      height: 560,
                      width: 370,
                      decoration: BoxDecoration(
                        color: backgroundcolor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 7),
                            child: Text(
                                "  2.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in nulla lacus. Maecenas egestas eros a nibh ornare congue. Proin egestas urna pellentesque, dignissim purus et, mattis orci. Aliquam maximus a libero a sollicitudin. Nam mollis, nisl quis dictum gravida, ligula tortor laoreet neque, et iaculis velit neque molestie nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in nulla lacus. Maecenas egestas eros a nibh ornare congue.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q2A_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q2A_checked = !Q2A_checked;
                                      counter++;
                                      if (Q2B_checked) {
                                        Q2B_checked = false;
                                      }
                                      if (Q2C_checked) {
                                        Q2C_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option A",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          //SizedBox(height: 5.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q2B_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q2B_checked = !Q2B_checked;
                                      if (Q2A_checked) {
                                        Q2A_checked = false;
                                        counter--;
                                      }
                                      if (Q2C_checked) {
                                        Q2C_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option B",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q2C_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q2C_checked = !Q2C_checked;
                                      if (Q2A_checked) {
                                        Q2A_checked = false;
                                        counter--;
                                      }
                                      if (Q2B_checked) {
                                        Q2B_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option C",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //------------------------------------------------------------------------------------------------------------------
                  //------------------------------------------------------------------------------------------------------------------
                  //------------------------------------------------------------------------------------------------------------------
                  //------------------------------------------------------------------------------------------------------------------
                  // QUESTION 3

                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Container(
                      height: 560,
                      width: 370,
                      decoration: BoxDecoration(
                        color: backgroundcolor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 7),
                            child: Text(
                                "  3.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in nulla lacus. Maecenas egestas eros a nibh ornare congue. Proin egestas urna pellentesque, dignissim purus et, mattis orci. Aliquam maximus a libero a sollicitudin. Nam mollis, nisl quis dictum gravida, ligula tortor laoreet neque, et iaculis velit neque molestie nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in nulla lacus. Maecenas egestas eros a nibh ornare congue.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q3A_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q3A_checked = !Q3A_checked;
                                      counter++;
                                      if (Q3B_checked) {
                                        Q3B_checked = false;
                                      }
                                      if (Q3C_checked) {
                                        Q3C_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option A",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          //SizedBox(height: 5.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q3B_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q3B_checked = !Q3B_checked;
                                      if (Q3A_checked) {
                                        Q3A_checked = false;
                                        counter--;
                                      }
                                      if (Q3C_checked) {
                                        Q3C_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option B",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q3C_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q3C_checked = !Q3C_checked;
                                      if (Q3A_checked) {
                                        Q3A_checked = false;
                                        counter--;
                                      }
                                      if (Q3B_checked) {
                                        Q3B_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option C",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //--------------------------------------------------------------------------------------------------------------------
                  //--------------------------------------------------------------------------------------------------------------------
                  //--------------------------------------------------------------------------------------------------------------------
                  //--------------------------------------------------------------------------------------------------------------------
                  //  QUESTION 4
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Container(
                      height: 560,
                      width: 370,
                      decoration: BoxDecoration(
                        color: backgroundcolor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 7),
                            child: Text(
                                "  4.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in nulla lacus. Maecenas egestas eros a nibh ornare congue. Proin egestas urna pellentesque, dignissim purus et, mattis orci. Aliquam maximus a libero a sollicitudin. Nam mollis, nisl quis dictum gravida, ligula tortor laoreet neque, et iaculis velit neque molestie nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in nulla lacus. Maecenas egestas eros a nibh ornare congue.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q4A_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q4A_checked = !Q4A_checked;
                                      counter++;
                                      if (Q4B_checked) {
                                        Q4B_checked = false;
                                      }
                                      if (Q4C_checked) {
                                        Q4C_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option A",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          //SizedBox(height: 5.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q4B_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q4B_checked = !Q4B_checked;
                                      if (Q4A_checked) {
                                        Q4A_checked = false;
                                        counter--;
                                      }
                                      if (Q4C_checked) {
                                        Q4C_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option B",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q4C_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q4C_checked = !Q4C_checked;
                                      if (Q4A_checked) {
                                        Q4A_checked = false;
                                        counter--;
                                      }
                                      if (Q4B_checked) {
                                        Q4B_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option C",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //--------------------------------------------------------------------------------------------------------------------
                  //--------------------------------------------------------------------------------------------------------------------
                  //--------------------------------------------------------------------------------------------------------------------
                  //--------------------------------------------------------------------------------------------------------------------
                  //  QUESTION 5
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Container(
                      height: 560,
                      width: 370,
                      decoration: BoxDecoration(
                        color: backgroundcolor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 7),
                            child: Text(
                                "  5.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in nulla lacus. Maecenas egestas eros a nibh ornare congue. Proin egestas urna pellentesque, dignissim purus et, mattis orci. Aliquam maximus a libero a sollicitudin. Nam mollis, nisl quis dictum gravida, ligula tortor laoreet neque, et iaculis velit neque molestie nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in nulla lacus. Maecenas egestas eros a nibh ornare congue.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ),
                          SizedBox(height: 20.0),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q5A_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q5A_checked = !Q5A_checked;
                                      counter++;
                                      if (Q5B_checked) {
                                        Q5B_checked = false;
                                      }
                                      if (Q5C_checked) {
                                        Q5C_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option A",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 19),
                                ),
                              ],
                            ),
                          ),
                          //SizedBox(height: 5.0),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q5B_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q5B_checked = !Q5B_checked;
                                      if (Q5A_checked) {
                                        Q5A_checked = false;
                                        counter--;
                                      }
                                      if (Q5C_checked) {
                                        Q5C_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option B",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q5C_checked
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q5C_checked = !Q5C_checked;
                                      if (Q5A_checked) {
                                        Q5A_checked = false;
                                        counter--;
                                      }
                                      if (Q5B_checked) {
                                        Q5B_checked = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option C",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                ],
              ),

              //-------------------------------------------------------------------------------------------------------------
              //-------------------------------------------------------------------------------------------------------------
              //-------------------------------------------------------------------------------------------------------------
              //-------------------------------------------------------------------------------------------------------------
              //SUBMIT BUTTON
            ),
            Positioned(
              //position at bottom
              bottom: 0,
              left: 0,
              right: 0, //set left right to 0 for 100% width
              child: Container(
                //your bototm widget tree
                height: 80,
                color: backgroundcolor,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      SizedBox(
                        width: 350.0,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {
                            if (counter == 5) {
                              AudioPlayer()
                                  .play(AssetSource('correct_answer.mp3'));
                              Vibration.vibrate();

                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CppTestSuccessfulWidget(),
                                ),
                              );
                            } else {
                              AudioPlayer()
                                  .play(AssetSource('wrong_answer.mp3'));
                              Vibration.vibrate();

                              String counterStr = counter.toString();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  behavior: SnackBarBehavior.floating,
                                  backgroundColor: Colors.red,
                                  duration: Duration(seconds: 3),
                                  content: Container(
                                    padding: EdgeInsets.all(16),
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: Text(
                                        "Test Unsuccessful! Your result is $counterStr/5. Please try again...",
                                        style: TextStyle(fontSize: 20)),
                                  ),
                                ),
                              );
                            }
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(
                              color: Color.fromARGB(255, 46, 7, 26),
                              fontSize: 25,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(187, 236, 81, 107)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28.0),
                                side: BorderSide(
                                    color: Color.fromARGB(187, 236, 81, 107)),
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
    ));
  }
}
