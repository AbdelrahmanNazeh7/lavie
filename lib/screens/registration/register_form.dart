import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../homescreen/home.dart';

class RegisterForm extends StatefulWidget {
  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late GlobalKey<FormState> formKey;

  late TextEditingController emailController;

  late TextEditingController passwordController;

  late TextEditingController confirmPasswordController;

  late TextEditingController firstNameController;

  late TextEditingController lastNameController;
@override
  void initState() {
  formKey=GlobalKey<FormState>();
  emailController = TextEditingController();
  passwordController = TextEditingController();
  confirmPasswordController = TextEditingController();
  firstNameController = TextEditingController();
  lastNameController = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    void register(String firstName,String lastName,String email,String password,String confirmPassword)async{
      try{
        Response response =await post(Uri.parse('https://lavie.orangedigitalcenteregypt.com/api/v1/auth/signup'),
            body: {
              "firstName": firstName,
              "lastName": lastName,
              "email": email,
              "password": password
            });
        if(response.statusCode ==200){
          var data = jsonDecode(response.body.toString());
          print('sign in successfully');
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: TextFormField(
                      controller: firstNameController,
                      onChanged: (text){
                      },
                      validator: (text){
                        if(text==null || text.length <3){
                          return 'please enter your first name';
                        }
                        return null;
                      },
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      decoration: const InputDecoration(
                          hintText: 'First Name',
                          hintStyle: TextStyle(
                            color: Colors.green,
                          ),
                          icon: Icon(Icons.drive_file_rename_outline,
                              color: Colors.green),
                          border:InputBorder.none
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29),
                        color: Colors.grey[200]
                    ),
                    width: MediaQuery.of(context).size.width *0.45,
                  ),
                  Container(
                    child: TextFormField(
                      controller: lastNameController,
                      onChanged: (text){
                      },
                      validator: (text){
                        if(text==null || text.length <3){
                          return 'enter your last name';
                        }
                        return null;
                      },
                      style: const TextStyle(
                        color: Colors.green,
                      ),
                      decoration: const InputDecoration(
                          hintText: 'Last Name',
                          hintStyle: TextStyle(
                            color: Colors.green,
                          ),
                          icon: Icon(Icons.drive_file_rename_outline,
                              color: Colors.green),
                          border:InputBorder.none
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29),
                        color: Colors.grey[200]
                    ),
                    width: MediaQuery.of(context).size.width *0.45,
                  ),
                ],
              ),
              Container(
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
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: Colors.grey[200]
                ),
                width: MediaQuery.of(context).size.width *0.8,
              ),
              Container(
                child: TextFormField(
                  controller: passwordController,
                  onChanged: (text){
                  },
                  validator: (text){
                    if(text!.isEmpty && text.length < 8)
                      return 'Empty';
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
              Container(
                child: TextFormField(
                  controller: confirmPasswordController,
                  onChanged: (text){
                  },
                  validator: (text){
                    if(text!.isEmpty && text.length <8)
                      return 'Empty';
                    if(text != passwordController.text)
                      return 'Not Match';
                    return null;
                  },
                  style: const TextStyle(
                      color: Colors.green
                  ),
                  decoration: const InputDecoration(
                      hintText: 'Confirm Password',
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
                  if(formKey.currentState?.validate()==true){

                  register(firstNameController.text.toString(),lastNameController.text.toString(),
                      emailController.text.toString(),passwordController.text.toString(),confirmPasswordController.text.toString());
                }
                  },
                child: Container(
                  child: const Center(
                    child:
                    Text(
                      'Sign Up',
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
