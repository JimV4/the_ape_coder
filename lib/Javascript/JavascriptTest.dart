import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ape_coder/Javascript/JavascriptTestSuccessful.dart';
import 'JavascriptLessons.dart';

const backgroundcolor = Color.fromARGB(255, 47, 47, 47);
bool Q1A_checked_javascript = false;
bool Q1B_checked_javascript = false;
bool Q1C_checked_javascript = false;

bool Q2A_checked_javascript = false;
bool Q2B_checked_javascript = false;
bool Q2C_checked_javascript = false;

bool Q3A_checked_javascript = false;
bool Q3B_checked_javascript = false;
bool Q3C_checked_javascript = false;

bool Q4A_checked_javascript = false;
bool Q4B_checked_javascript = false;
bool Q4C_checked_javascript = false;

bool Q5A_checked_javascript = false;
bool Q5B_checked_javascript = false;
bool Q5C_checked_javascript = false;

int counter = 0;

class JavascriptTestWidget extends StatefulWidget {
  const JavascriptTestWidget({Key? key}) : super(key: key);

  @override
  _JavascriptTestWidgetState createState() => _JavascriptTestWidgetState();
}

class _JavascriptTestWidgetState extends State<JavascriptTestWidget> {
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
              builder: (context) => JavascriptLessonsWidget(),
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
                      height: 510,
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
                                  icon: Q1A_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q1A_checked_javascript =
                                          !Q1A_checked_javascript;
                                      counter++;
                                      if (Q1B_checked_javascript) {
                                        Q1B_checked_javascript = false;
                                      }
                                      if (Q1C_checked_javascript) {
                                        Q1C_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option A",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                                  icon: Q1B_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q1B_checked_javascript =
                                          !Q1B_checked_javascript;
                                      if (Q1A_checked_javascript) {
                                        Q1A_checked_javascript = false;
                                        counter--;
                                      }
                                      if (Q1C_checked_javascript) {
                                        Q1C_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option B",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q1C_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q1C_checked_javascript =
                                          !Q1C_checked_javascript;
                                      if (Q1A_checked_javascript) {
                                        Q1A_checked_javascript = false;
                                        counter--;
                                      }
                                      if (Q1B_checked_javascript) {
                                        Q1B_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option C",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                      height: 510,
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
                                  icon: Q2A_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q2A_checked_javascript =
                                          !Q2A_checked_javascript;
                                      counter++;
                                      if (Q2B_checked_javascript) {
                                        Q2B_checked_javascript = false;
                                      }
                                      if (Q2C_checked_javascript) {
                                        Q2C_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option A",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                                  icon: Q2B_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q2B_checked_javascript =
                                          !Q2B_checked_javascript;
                                      if (Q2A_checked_javascript) {
                                        Q2A_checked_javascript = false;
                                        counter--;
                                      }
                                      if (Q2C_checked_javascript) {
                                        Q2C_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option B",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q2C_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q2C_checked_javascript =
                                          !Q2C_checked_javascript;
                                      if (Q2A_checked_javascript) {
                                        Q2A_checked_javascript = false;
                                        counter--;
                                      }
                                      if (Q2B_checked_javascript) {
                                        Q2B_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option C",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                      height: 510,
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
                                  icon: Q3A_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q3A_checked_javascript =
                                          !Q3A_checked_javascript;
                                      counter++;
                                      if (Q3B_checked_javascript) {
                                        Q3B_checked_javascript = false;
                                      }
                                      if (Q3C_checked_javascript) {
                                        Q3C_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option A",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                                  icon: Q3B_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q3B_checked_javascript =
                                          !Q3B_checked_javascript;
                                      if (Q3A_checked_javascript) {
                                        Q3A_checked_javascript = false;
                                        counter--;
                                      }
                                      if (Q3C_checked_javascript) {
                                        Q3C_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option B",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q3C_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q3C_checked_javascript =
                                          !Q3C_checked_javascript;
                                      if (Q3A_checked_javascript) {
                                        Q3A_checked_javascript = false;
                                        counter--;
                                      }
                                      if (Q3B_checked_javascript) {
                                        Q3B_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option C",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                      height: 510,
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
                                  icon: Q4A_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q4A_checked_javascript =
                                          !Q4A_checked_javascript;
                                      counter++;
                                      if (Q4B_checked_javascript) {
                                        Q4B_checked_javascript = false;
                                      }
                                      if (Q4C_checked_javascript) {
                                        Q4C_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option A",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                                  icon: Q4B_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q4B_checked_javascript =
                                          !Q4B_checked_javascript;
                                      if (Q4A_checked_javascript) {
                                        Q4A_checked_javascript = false;
                                        counter--;
                                      }
                                      if (Q4C_checked_javascript) {
                                        Q4C_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option B",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q4C_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q4C_checked_javascript =
                                          !Q4C_checked_javascript;
                                      if (Q4A_checked_javascript) {
                                        Q4A_checked_javascript = false;
                                        counter--;
                                      }
                                      if (Q4B_checked_javascript) {
                                        Q4B_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option C",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                      height: 510,
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
                                  icon: Q5A_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q5A_checked_javascript =
                                          !Q5A_checked_javascript;
                                      counter++;
                                      if (Q5B_checked_javascript) {
                                        Q5B_checked_javascript = false;
                                      }
                                      if (Q5C_checked_javascript) {
                                        Q5C_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option A",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                                  icon: Q5B_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q5B_checked_javascript =
                                          !Q5B_checked_javascript;
                                      if (Q5A_checked_javascript) {
                                        Q5A_checked_javascript = false;
                                        counter--;
                                      }
                                      if (Q5C_checked_javascript) {
                                        Q5C_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option B",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Q5C_checked_javascript
                                      ? Icon(Icons.radio_button_on_rounded,
                                          color: Colors.white)
                                      : Icon(Icons.radio_button_off_rounded,
                                          color: Colors.white),
                                  onPressed: () {
                                    setState(() {
                                      Q5C_checked_javascript =
                                          !Q5C_checked_javascript;
                                      if (Q5A_checked_javascript) {
                                        Q5A_checked_javascript = false;
                                        counter--;
                                      }
                                      if (Q5B_checked_javascript) {
                                        Q5B_checked_javascript = false;
                                      }
                                    });
                                  },
                                ),
                                Text(
                                  "Option C",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      JavascriptTestSuccessfulWidget(),
                                ),
                              );
                            } else {
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
