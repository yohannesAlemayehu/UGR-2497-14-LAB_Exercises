import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SecondApp());
}

class SecondApp extends StatelessWidget {
  const SecondApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.grey[200],
            appBar: AppBar(leading: Icon(Icons.arrow_back), actions: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(3)),
                  child: Container(
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Icon(Icons.search), Text("search product")]),
                  )),
              Icon(Icons.bubble_chart),
              Icon(Icons.doorbell_outlined)
            ]),
            body: Column(children: [
              Image.asset("assets/supra.jpg"),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "\$8.6",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                Icon(Icons.favorite)
              ]),
              SizedBox(
                height: 20,
              ),
              Text(
                "BARDI Smart Light Bulb Lamp Bohlem LED WIFI RGBWW 12W 12 watt Home IoT",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Text("    "),
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                  size: 17,
                ),
                Text(
                  "5.0 (354)    |    ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("540 Sale     |     "),
                Text("Brooklyn")
              ]),
              SizedBox(height: 10),
              Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Variant",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text("Size: XS"),
                        Row(children: [
                          Container(
                              color: Colors.blue,
                              padding: EdgeInsets.all(6),
                              child: Text("XS",
                                  style: TextStyle(color: Colors.white))),
                          Container(
                              padding: EdgeInsets.all(6), child: Text("S")),
                          Container(
                              padding: EdgeInsets.all(6), child: Text("M")),
                          Container(
                              padding: EdgeInsets.all(6), child: Text("L")),
                          Container(
                              padding: EdgeInsets.all(6), child: Text("XL")),
                          Container(
                              padding: EdgeInsets.all(6), child: Text("XXL")),
                        ]),
                        Text("Color: Red"),
                        Row(children: [
                          Container(
                              color: Colors.blue,
                              padding: EdgeInsets.all(6),
                              child: Text("Red",
                                  style: TextStyle(color: Colors.white))),
                          Container(
                              padding: EdgeInsets.all(6), child: Text("Black")),
                          Container(
                              padding: EdgeInsets.all(6), child: Text("Green")),
                          Container(
                              padding: EdgeInsets.all(6), child: Text("White")),
                          Container(
                              padding: EdgeInsets.all(6), child: Text("Blue")),
                        ]),
                      ])),
              Container(
                  child: Row(children: [
                Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                Expanded(
                    flex: 8,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Add to Shopping Cart"),
                    ))
              ]))
            ])));
  }
}
