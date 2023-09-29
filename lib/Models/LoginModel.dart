import 'package:flutter/material.dart';
import 'package:iti_project/Data/Lists.dart';
import 'package:iti_project/Models/Function.dart';
import 'package:iti_project/Models/RegisterModel.dart';
import 'package:iti_project/Models/UserModel.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool ispass=true;
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
String error='';
int n=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ABar(con:context),
      body: ListView(
        children:[
          SizedBox(height: 30,),
          Container(child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(
        child:Text('Login',style:TextStyle(fontSize:50,fontWeight:FontWeight.bold,color:Colors.red[400],),),
          alignment: Alignment.centerLeft,margin: EdgeInsets.all(20),),
          Text(error,style: TextStyle(color:Colors.red),),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                border:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(30)),
              prefixIcon:Icon(Icons.attach_email),
                label:Text('Mail'),
                hintText: 'Enter Your Email..',
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: password,
                obscureText: ispass,
                decoration: InputDecoration(
                  border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(30)),
                  prefixIcon:Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: (){setState(() {
                    ispass= !ispass;
                  });}, icon:Icon(Icons.remove_red_eye)),
                  label:Text('PassWord'),
                  hintText: 'Enter Your Password..',
                ),
              ),
            ),
            Container(
              child:TextButton(child: Text('Forget Password',style:TextStyle(fontSize:10,fontWeight:FontWeight.bold,),)),
              alignment: Alignment.centerRight,margin: EdgeInsets.symmetric(horizontal: 20),),
            MaterialButton(
              textColor:Colors.white,
              onPressed: (){print('object');
               for(int i=0;i<users.length;i++)
                 {
                   if(users[i]['email']==email.text&&users[i]['password']==password.text)
                     {
                       Navigator.push(context, MaterialPageRoute(builder: (b){return User(users[i]);}));
                       n=1;
                       print('found');
                     }
                 }
               if(n==0)
                 {setState(() {
                   error='User not Found';
                 });}
                },
              color:Colors.red[400],
              child: Container(
                width:80,
                  height: 40,
                  child: Row(children: [
                Icon(Icons.login),
                SizedBox(width: 5,),
                Text('Login')
              ],)),
            ),
            Container(
              alignment: Alignment.center,
                width:300,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Don't have an acount?"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (b){return Register();}));
                  }, child:Text('Register Now')),
                ],)),
        ],),),
      ]),
    );
  }
}
