import 'package:flutter/material.dart';

class DetailsProduct extends StatefulWidget {
  String name;
  String image;

  DetailsProduct({this.name, this.image});

  @override
  _DetailsProductState createState() => _DetailsProductState();
}

class _DetailsProductState extends State<DetailsProduct> {
  List<bool> isSelected = [false, true, false];
  double opcity = .2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage('images/bg.png'),
          fit: BoxFit.cover,
        ),
        shadowColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          widget.name,
          style: TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/bg.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                    width: double.infinity,
                    child: Image.asset("images/macciato1.png")),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 8,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                widget.name,
                                style: TextStyle(fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text("210",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Color(0xCF9775).withAlpha(500),
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/Rectangle6.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "1",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/Rectangle.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Size",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    ToggleButtons(
                      renderBorder: false,
                      borderWidth: 0,
                      fillColor: Color(0xCF9775).withAlpha(200),
                      children: [
                        Container(
                              child: Image.asset("images/small.png"),
                            ),
                        Container(
                          child: Image.asset("images/mediam.png"),
                        ),
                        Container(
                          child: Image.asset("images/big.png"),
                        ),
                      ],
                      isSelected: isSelected,
                      onPressed: (int newIndex) {
                        setState(() {
                          for (int index = 0;
                              index < isSelected.length;
                              index++) {
                            if (index == newIndex) {
                              isSelected[index] = true;
                              opcity = 1;
                            } else {
                              isSelected[index] = false;
                            }
                          }
                        });
                      },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width/2,
                   height: MediaQuery.of(context).size.height/15,
                    
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      color: Color(0xCF9775).withAlpha(500),
                      onPressed: (){},
                    child: Text("Add to cart",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                  ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
