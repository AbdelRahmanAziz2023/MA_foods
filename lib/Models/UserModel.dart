import 'package:flutter/material.dart';
import 'package:iti_project/Screens/HomeScreen.dart';

class User extends StatelessWidget {

  Map m;
  User(this.m);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading:IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (b){
          return HomePage();
        }));},icon:Icon(Icons.arrow_back_ios),),
          shadowColor:Colors.red,
          toolbarHeight:100,
          shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.vertical(bottom:Radius.circular(80))),
          elevation:20,
          backgroundColor: Colors.red[400],),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 100,),
            CircleAvatar(
              child: Icon(Icons.account_circle,size: 100,color:Colors.black,),
              radius: 80,backgroundColor: Colors.yellow,),
            SizedBox(height: 50,),
            Column(children: [
              Con3(child: Text(m['name'],style: TextStyle(fontSize: 25),)),
              SizedBox(height: 10,),
              Con3(child: Text(m['email'],style: TextStyle(fontSize: 25),)),
              SizedBox(height: 10,),
              Con3(child: Text(m['phone'],style: TextStyle(fontSize: 25),)),
            ],),
          ],),),
        ));
  }
}
Widget Con3({Widget child})
{
  return Container(
    alignment: Alignment.center,
    child: child,
    width: 300,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(width: 5,color:Colors.black)
    ),
  );
}
