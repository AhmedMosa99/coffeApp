
import 'package:coffee_app/modles/product.dart';
import 'package:coffee_app/ui/pages/datailsProdict.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowProduct extends StatefulWidget {
  @override
  _ShowProductState createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  int _selectedIndex = 0;
  List products = [
    Product(name: "Espresso", image: "images/Group.png"),
    Product(name: "Macchiato", image: "images/macciato.png"),
    Product(name: "Latte", image: "images/latte.png"),
    Product(name: "Cappuccino", image: "images/Group1.png"),
    Product(name: "Mocha", image: "images/Mocha.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFAF4EE).withAlpha(500),
      appBar: AppBar(
        backgroundColor: Color(0xFAF4EE).withAlpha(500),
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0, top: 25),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        color: Color(0xFAF4EE).withAlpha(500),
        child: ListView(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Padding(
              padding: const EdgeInsets.only(top: 15, right: 15, left: 25),
              child: Row(
                children: [
                  Text(
                    "It's Great",
                    style: TextStyle(fontSize: 36),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Day for  ",
                    style: TextStyle(
                        fontSize: 36,
                        color: Color(0xCF9775).withAlpha(1000),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Coffee.  ",
                style: TextStyle(
                    fontSize: 36,
                    color: Color(0xB98875).withAlpha(1000),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: ListView.builder(
              
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){

      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DetailsProduct(name: products[index].name,image: products[index].image,);
          }));
                  },
                  child: buildListTile(products[index].image, products[index].name));
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 11,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
            color: Color(0xFAF4EE).withAlpha(500)),
        child: BottomNavigationBar(
          // backgroundColor: Colors.white12,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(Icons.location_pin),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.coffee),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  Container buildListTile(String image, String name) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: ListTile(
        leading: Image.asset(image),
        title: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            name,
            style: TextStyle(fontSize: 20),
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
