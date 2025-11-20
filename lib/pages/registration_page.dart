import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  
  RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Container(
          width: 500,
          child: Column(children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                 TextFormField(
                  
                  validator: (value){

                  },
                  
                 )
                ],
              )
              )
            ]
            ),
        ),
      ),
    );
  }
}
