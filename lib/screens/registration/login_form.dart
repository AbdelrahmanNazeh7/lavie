import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lavie/screens/homescreen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late GlobalKey<FormState> formKey;

  late TextEditingController emailController;

  late TextEditingController passwordController;
@override
  void initState() {
  formKey=GlobalKey<FormState>();
  emailController = TextEditingController();
  passwordController = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    void login(String email,String password)async{
      final SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
      try{
        Response response =await post(Uri.parse('https://lavie.orangedigitalcenteregypt.com/api/v1/auth/signin'),
            body: {
              'email' : email,
              'password': password
            });

        if(response.statusCode ==200){
          sharedPreferences.setString('email', email.toString());
          var data = jsonDecode(response.body.toString());
          print('logged in successfully');
          Navigator.pushReplacementNamed(context, Home.routeName);
        }
        else{
          var data = jsonDecode(response.body.toString());
          print(data['message']);
        }
      }catch(e){
        print(e.toString());
      }
    }
    var secondColor=Colors.green[500];
    return  Center(
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: Colors.grey[200]
                ),
                width: MediaQuery.of(context).size.width *0.8,
                child: TextFormField(
                  controller: emailController,
                  onChanged: (text){
                  },
                  validator: (text){
                    if(text!.isEmpty || !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(text)){
                      return 'please enter email';
                    }
                    return null;
                  },
                  style: const TextStyle(
                    color: Colors.green,
                  ),
                  decoration: const InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.green,
                      ),
                      icon: Icon(Icons.email,
                          color: Colors.green),
                      border:InputBorder.none
                  ),
                ),
              ),
              Container(
                child: TextFormField(
                  controller: passwordController,
                  onChanged: (text){
                  },
                  validator: (text){
                    if(text==null || text.length < 8){
                      return 'please enter your password';
                    }
                    return null;
                  },
                  style: const TextStyle(
                      color: Colors.green
                  ),
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.green,
                      ),
                      icon: Icon(Icons.lock,
                        color: Colors.green,),
                      border:InputBorder.none
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: Colors.grey[200]
                ),
                width: MediaQuery.of(context).size.width *0.8,
              ),
              InkWell(
                onTap: (){

                  login(emailController.text.toString(),passwordController.text.toString());
                },
                child: Container(
                  child: const Center(
                    child:
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: secondColor,
                  ),
                  width: MediaQuery.of(context).size.width *0.7,
                  height: MediaQuery.of(context).size.height *0.07,
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
