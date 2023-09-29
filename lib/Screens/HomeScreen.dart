import 'package:flutter/material.dart';
import 'package:iti_project/Models/Function.dart';
import 'package:iti_project/Models/MenuModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(80))),
        toolbarHeight: 100,
         centerTitle: true,
         title:txt(data:'M&A Food',Fonts: 25,),
         backgroundColor: Colors.red[400],
        shadowColor:Colors.red,
        elevation:20,
      ),
      drawer:Menu(context),
      body:Container(
        color:Colors.white10,
        child: Column(
        children: [
         Container(
          width:double.infinity,
          height: 380,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage('images/logo.jpeg'),),
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),),
         Expanded(
           child: Container(
            width: double.infinity,
            height: 305,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.red[100],
                borderRadius: BorderRadius.vertical(top: Radius.circular(100))),
            child:Column(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children:[ Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      SizedBox(height: 20,),
                      txt(data:'Welcome To',Fonts: 40,),
                    txt(data:'M&A Food Services',Fonts:40),
                    txt2(data:'Specializing in The Finest international Food and drink',Fonts:20,c:Colors.white),
                    SizedBox(height: 8,),
                      ],),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 20,),
                          txt(data:'The Greatest',Fonts: 40,),
                          txt(data:'Of All Time',Fonts:40),
                          txt2(data:'The Fastest And Best Dilvary in Egybt',Fonts:20,c:Colors.white),
                          SizedBox(height: 8,),
                        ],),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 20,),
                          txt(data:'Check Menu',Fonts: 40,),
                          txt(data:'And Good Time',Fonts:40),
                          txt2(data:'Specializing in The Finest international Food and drink',Fonts:20,c:Colors.white),
                          SizedBox(height: 8,),],),]),
                height: 180),
                InkWell(onTap: (){print('menu');
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (b){return MenuPage();}));},
                    child: Con(child:txt(data: 'Get Started',Fonts: 25,c:Colors.white),height:70,width: 300,radius: 25)),
              ],),),
         ),],),)
    );
  }
}
