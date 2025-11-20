import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppify/providers/authentication_provider.dart';

class RegistrationPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final contactController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthenticationProvider>(listen: false, context);
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
                 CustomTextFormField(nameController: nameController, fieldName: "Name"),
                 SizedBox(height: 20,),
                 CustomTextFormField(nameController: nameController, fieldName: "Phone number"),
                 SizedBox(height: 20,),
                 CustomTextFormField(nameController: nameController, fieldName: "Email"),
                 SizedBox(height: 20,),
                 CustomTextFormField(nameController: nameController, fieldName: "Password"),
                ],
              )
              ),
              ElevatedButton(onPressed: ()async{
                await authProvider.signUp(name: name, contact: contact, email: email, password: password);
              }, child: child)
            ]
            ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.nameController,
    required this.fieldName
  });

  final TextEditingController nameController;
  final String fieldName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     controller: nameController,
     validator: (value){
       if (value == null || value!.isEmpty){
         InputDecoration(
           helper: Text("Please Enter your ${fieldName.toLowerCase()}"),
         );
       }
       return null;
     },
     decoration: InputDecoration(
       label: Text(fieldName),
       border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
       hintText: "ex. Maryam"
     ),
    );
  }
}
