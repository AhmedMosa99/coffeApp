import 'package:flutter/material.dart';

import 'Login.dart';

class Begin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Draggable(
        child: AnimatedContainer(
          duration: Duration(seconds: 610),
          curve: Curves.fastOutSlowIn,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bg.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Image(
                    image: AssetImage('images/logo.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
        feedback: AnimatedContainer(
          duration: Duration(seconds: 610),
          curve: Curves.fastOutSlowIn,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bg.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Image(
                    image: AssetImage('images/logo.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
        onDragEnd: (details) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Login();
          }));
        },
      ),
    );
  }
}