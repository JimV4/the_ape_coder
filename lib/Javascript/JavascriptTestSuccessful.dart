import 'package:flutter/material.dart';
import 'JavascriptLessons.dart';
import 'package:ape_coder/main.dart';
import 'package:ape_coder/Javascript/JavascriptLessons.dart';
import '../Profile.dart';

class JavascriptTestSuccessfulWidget extends StatefulWidget {
  const JavascriptTestSuccessfulWidget({Key? key}) : super(key: key);

  @override
  _JavascriptTestSuccessfulWidgetState createState() =>
      _JavascriptTestSuccessfulWidgetState();
}

class _JavascriptTestSuccessfulWidgetState
    extends State<JavascriptTestSuccessfulWidget> {
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();
  @override
  void initState() {
    if (!levels.contains('Javascript Gorilla')) {
      JavascriptCompleted = true;
      super.initState();
      Future(() {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Color.fromARGB(255, 243, 223, 45),
          duration: Duration(milliseconds: 2000),
          content: Positioned(
            top: 100,
            child: Text(
                "Congratulations! You have advanced to Javascript Gorilla!"),
            //),
          ),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      if (JavascriptPercent <= 0.9) {
        JavascriptPercent += 0.1;
      } else {
        JavascriptPercent -= 0.1;
      }
    });
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 47, 47),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              /* mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, */
              children: <Widget>[
                SizedBox(height: 30),
                Text(
                  'Test',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 52,
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  'Successful!',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 52,
                      fontStyle: FontStyle.italic),
                ),
                Text("Your certificate will be sent to you",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontStyle: FontStyle.italic)),
                Text("by your given email address",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontStyle: FontStyle.italic)),
                SizedBox(height: 50.0),
                Image(
                  image: AssetImage("assets/images/gorilla.png"),
                  height: 300,
                  width: 300,
                ),
                SizedBox(height: 60.0),
                SizedBox(
                  width: 290.0,
                  height: 45.0,
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LanguagesScreenWidget(),
                        ),
                      ),
                    },
                    child: Text(
                      "Back To Languages",
                      style: TextStyle(
                        color: Color.fromARGB(255, 108, 28, 122),
                        fontSize: 18,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                /* Padding(padding: EdgeInsets.only(left: 10)),
                SizedBox(
                  width: 190.0,
                  height: 35.0,
                ), */
              ],
            ),
          ],
        ),
      ),
    );
  }

  /*  void showInSnackBar(String value) {
    scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(value)));
  } */
}
