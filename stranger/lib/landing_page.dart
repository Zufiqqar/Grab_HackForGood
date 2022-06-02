import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stranger/model/colour.dart';
import 'package:stranger/model/font.dart';
import 'package:stranger/view/home/home_page.dart';


class LandingPage extends StatefulWidget {
  static String tag = '/LandingPage';

  @override
  LandingPageState createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage> {
  var emailCont = TextEditingController();
  var passwordCont = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: deviceHeight,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: deviceHeight*0.3,
              child: Container(
                height: deviceHeight,
                width: deviceWidth,
                child: Image.asset('image/drstrange.jpg'),
              )
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "image/ic_app_icon.png",
                      width: deviceWidth* 0.22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'RideWith',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: Font().large1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'Stranger',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: Font().large1,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: deviceHeight*0.01,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autofocus: false,
                      controller: emailCont,
                      textCapitalization: TextCapitalization.words,
                      style: TextStyle(color: Col().ColorPrimary, fontSize: Font().medium1),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Col().Splash,
                          focusColor: Col().blueBackground,
                          hintText: "Email",
                          hintStyle: TextStyle(color: Col().orangeBackground, fontSize: Font().medium1),
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
                              borderSide: BorderSide(color: Col().AppTextColorPrimary, width: 0.5)),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
                              borderSide: BorderSide(color: Colors.transparent, style: BorderStyle.none, width: 0))),
                    ),
                    SizedBox(
                      height: deviceHeight*0.01,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      autofocus: false,
                      obscureText: true,
                      style: TextStyle(color: Col().ColorPrimary, fontSize: Font().medium1),
                      controller: passwordCont,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Col().Splash,
                          focusColor: Col().blueBackground,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Col().orangeBackground, fontSize: Font().medium1),
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
                              borderSide: BorderSide(color: Col().AppTextColorPrimary, width: 0.5)),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
                              borderSide: BorderSide(color: Colors.transparent, style: BorderStyle.none, width: 0))),
                    ),
                    SizedBox(
                      height: deviceHeight*0.05,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      // height: double.infinity,
                      child: MaterialButton(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Sign In',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: Font().large1,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        textColor: Col().greenDark,
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
                        color: Col().greenDark,
                        onPressed: () => {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                                  (route) => false)
                        },
                      ),
                    ),
                    SizedBox(height: deviceHeight*0.03),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      // height: double.infinity,
                      child: MaterialButton(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: Font().large1,
                              color: Col().greenDark,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        textColor: Col().newDarkGreen,
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0),
                            side: BorderSide(color: Col().greenDark, width: 1)),
                        color: Colors.white,
                        onPressed: () => {
                          // ShSignUp().launch(context)
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
