import 'package:flutter/material.dart';
import 'package:iti_project/Data/Classes.dart';
import 'package:iti_project/Data/Lists.dart';
import 'package:iti_project/Models/Function.dart';
import 'package:iti_project/Models/MenuModel.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key key}) : super(key: key);
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int f;
  double sumd=0, sumf = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ABar(con: context, tit: 'cart'),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: ListView(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  for (int i = 0; i < cartf.length; i++)
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(cartf[f = i].Image),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  width: 100, child: Text(cartf[f = i].Name)),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                    '${(double.parse(cartf[f = i].Price)) * (cartf[f = i].count)} Egp'),
                            ],
                          ),
                          txt(data: '${cartf[f = i].count}', Fonts: 30),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  cartf.removeAt(i);
                                });
                              },
                              icon: Icon(Icons.cancel))
                        ],
                      ),
                    ),
                  for (int i = 0; i < cartd.length; i++)
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(cartd[f = i].Image),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 100, child: Text(cartd[f = i].Name)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    '${(double.parse(cartd[f = i].Price)) * (cartd[f = i].count)} Egp'),
                              ]),
                          txt(data: '${cartd[f = i].count}', Fonts: 30),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  cartd.removeAt(i);
                                });
                              },
                              icon: Icon(Icons.cancel))
                        ],
                      ),
                    )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    txt(c: Colors.redAccent, data: 'Total', Fonts: 20),
                    txt(c: Colors.black, data: '${sumfood(sumf)+sumdrink(sumd)} Egp', Fonts: 15),
                  ],
                ),
                InkWell(
                    onTap: () {},
                    child: Container(
                      color: Colors.redAccent,
                      alignment: Alignment.center,
                      height: 40,
                      width: 80,
                      child: txt(data: 'Checkout', c: Colors.white),
                    )),
                InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (b) {
                        return MenuPage();
                      }));
                    },
                    child: Container(
                      color: Colors.redAccent,
                      alignment: Alignment.center,
                      height: 40,
                      width: 80,
                      child: txt(data: 'Buy More', c: Colors.white),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
