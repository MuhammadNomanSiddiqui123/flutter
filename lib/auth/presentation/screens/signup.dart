import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/data/auth_service.dart';
class Signupscreen extends StatefulWidget {
  const new({super.key});
  @override
  State<Signupscreen> createState() => signupscreenstate();
}

class signupscreenstate extends State<Signupscreen>{
   final  nameController = TextEditingController();
   final emailcontroller = TextEditingController();
  final authservice = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SIGNUP'),),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
          controller:nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
         SizedBox(height: 10),         
          TextField(
            controller: emailcontroller,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: ()=>{

          }, child: Text('Signup'))
        ],
      ),
      ),
    );
  }
}