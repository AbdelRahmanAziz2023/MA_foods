import 'package:flutter/material.dart';
import 'package:iti_project/Models/DrinkModel.dart';
import 'package:iti_project/Models/FoodModel.dart';
import 'Function.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ABar(tit:'M&A Menu',con:context),
      body: Container(
        width: double.infinity,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 20,),
         InkWell(
           onTap: (){
             Navigator.of(context).push(
               MaterialPageRoute(builder: (b){return FoodPage();}));},
           child: Container(
            width: 350,
            height: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 2),
              color:Colors.red[200]
            ),
            margin: EdgeInsets.all(10),
            child:Column(children: [
              Container(
                width: 350,
                height:200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image:AssetImage('images/m1.jpg'),),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                ),),
              SizedBox(height: 20,),
              txt(data: 'Food Menu',Fonts:25,c:Colors.white ),
            ],),),
         ),
         SizedBox(height: 20,),
         InkWell(
           onTap: (){
             Navigator.of(context).push(
                 MaterialPageRoute(builder: (b){return DrinkPage();})
             );
           },
           child: Container(
             width: 350,
             height: 280,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 border: Border.all(width: 2),
                 color:Colors.red[200]
             ),
             margin: EdgeInsets.all(10),
             child:Column(children: [
               Container(
                 width: 350,
                 height:200,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     fit: BoxFit.fill,
                     image:AssetImage('images/m2.jpg'),),
                     borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                 ),),
               SizedBox(height: 20,),
               txt(data: 'Drink Menu',Fonts:25,c:Colors.white ),
             ],),),
         ),
          SizedBox(height: 20,),
      ],),),
    );
  }
}
