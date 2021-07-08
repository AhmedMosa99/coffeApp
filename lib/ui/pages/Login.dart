import 'package:coffee_app/ui/pages/ShowProduct.dart';
import 'package:coffee_app/ui/pages/datailsProdict.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Container(
              margin: EdgeInsets.only(top: 30),
              height: MediaQuery.of(context).size.height,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: false,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 4.0,
                dotIncreasedColor: Color(0xFFFF335C),
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 0,
                showIndicator: true,
                indicatorBgPadding: 0,
                dotColor: Colors.grey,
                images: [
                  Image(
                    image: AssetImage('images/artwork.png'),
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: AssetImage('images/artwork.png'),
                    fit: BoxFit.cover,
                  ),
                  Image(
                    image: AssetImage('images/artwork.png'),
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Get the best coffee in town!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0x8C746A).withAlpha(150),
                  fontSize: 38,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 55,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Color(0xB98068).withAlpha(150),
                        )),
                    color: Color(0xB98068).withAlpha(150),
                    onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return DetailsProduct();
          }));
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 55,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Color(0xB98068).withAlpha(150),
                        )),
                    color: Colors.white.withAlpha(500),
                    onPressed: () {
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return ShowProduct();
          }));
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Color(0xB98068).withAlpha(150)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                      color: Colors.blue.withAlpha(150),
                    )),
                color: Colors.white.withAlpha(500),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.blue.withOpacity(.9),
                      ),
                    ),
                    Text(
                      "Connect with Facebook",
                      style: TextStyle(color: Colors.blue.withOpacity(.7),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
