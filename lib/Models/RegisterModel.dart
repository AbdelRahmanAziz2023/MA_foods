import 'package:flutter/material.dart';
import 'package:iti_project/Data/Lists.dart';
import 'package:iti_project/Models/Function.dart';
import 'package:iti_project/Models/LoginModel.dart';


class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email=TextEditingController();

  TextEditingController Name=TextEditingController();

  TextEditingController password=TextEditingController();

  TextEditingController phone=TextEditingController();

bool ispass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ABar(con:context),
      body: ListView(
        children:[
          SizedBox(height: 100,),
          Container(child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(
              child:Text('Register',style:TextStyle(fontSize:50,fontWeight:FontWeight.bold,color: Colors.red[400],),),
            alignment: Alignment.centerLeft,margin: EdgeInsets.all(20),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: Name,
                decoration: InputDecoration(
                  border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(30)),
                  prefixIcon:Icon(Icons.drive_file_rename_outline_sharp),
                  label:Text('Name'),
                  hintText: 'Enter Your Name..',
                ),
              ),
            ),
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
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {ispass= !ispass;});
                  }, icon:Icon(Icons.remove_red_eye)),
                  label:Text('PassWord'),
                  hintText: 'Enter Your Password..',
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: phone,
                decoration: InputDecoration(
                  border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(30)),
                  prefixIcon:Icon(Icons.phone),
                  label:Text('Phone'),
                  hintText: 'Enter Your Phone..',
                ),

              ),
            ),
            MaterialButton(
              textColor:Colors.white,
              onPressed: (){print('object');
              users.add({'name':Name.text,'password':password.text,
                'email':email.text,'phone':phone.text});
              Navigator.push(context, MaterialPageRoute(builder: (b){return Login();}));
              },
              color:Colors.red[400],
              child: Container(
                  width:100,
                  height: 40,
                  child: Row(children: [
                    Icon(Icons.add_task),
                    SizedBox(width: 5,),
                    Text('Register')
                  ],)),
            ),
          ],),),
      ]),

    );
  }
}

