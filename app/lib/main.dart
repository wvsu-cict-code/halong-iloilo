import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:halong_iloilo/theme/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halong Iloilo',
      theme: ThemeData(
          primarySwatch: primaryColor,
          primaryColor: primaryColor,
          accentColor: primaryColor,
          buttonColor: secondaryColor,
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(foregroundColor: Colors.white),
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white))),
      home: MyHomePage(title: 'Halong Iloilo'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
                top: -height * 0.5,
                left: 0,
                right: 0,
                bottom: 0,
                child: SvgPicture.asset(
                  "assets/auth_illustration.svg",
                  width: double.infinity,
                  height: height * 3,
                )),
            Positioned(
                child: Container(
                  width: double.infinity,
                  height: height - 300,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Welcome to",
                            style:
                                TextStyle(fontSize: 28, color: secondaryColor),
                          ),
                          Text(
                            "Halong Iloilo!",
                            style: TextStyle(
                                fontSize: 33.0,
                                color: secondaryColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Local App to help contain and mitigate COVID-19 infections in the Province of Iloilo",
                            style: TextStyle(color: secondaryColor),
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                              child: SizedBox(
                                  width: double.infinity,
                                  child: FlatButton(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 13, 100, 13),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          FaIcon(FontAwesomeIcons.facebookF),
                                          Text("Continue with Facebook")
                                        ],
                                      ),
                                      onPressed: () {},
                                      color: new Color(0xFF3C5A9A),
                                      textColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(20.0),
                                      )))),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 3),
                              child: SizedBox(
                                  width: double.infinity,
                                  child: FlatButton(
                                      padding:
                                         EdgeInsets.fromLTRB(20, 13, 100, 13),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                         FaIcon(FontAwesomeIcons.google),
                                          Text("Continue with Google")
                                        ],
                                      ),
                                      onPressed: () {},
                                      color: Colors.white,
                                      textColor: secondaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(20.0),
                                        side: BorderSide(
                                            width: 1.5, color: secondaryColor),
                                      )))),
                          Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 11),
                              child: SizedBox(
                                  width: double.infinity,
                                  child: FlatButton(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 15, 0, 15),
                                      child: Text("Create an Account"),
                                      onPressed: () {},
                                      color: secondaryColor,
                                      textColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(20.0),
                                      )))),
                          Text(
                            "By creating an account, I agree to the app's Terms of Service and Privacy Policy.",
                            style: TextStyle(color: secondaryColor),
                          ),
                        ],
                      )),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                ),
                top: height / 2.45,
                left: 0,
                right: 0,
                bottom: 0)
          ],
        ));
  }
}
