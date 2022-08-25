import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lavie/screens/registration/login_form.dart';
import 'package:lavie/screens/registration/register_form.dart';
class RegistrationScreen extends StatefulWidget {
  static const String routeName = 'registration-screen';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  var tabs =[
    LoginForm(),
    RegisterForm()
  ];
  int currentTab=0;
  Widget currentScreen = LoginForm();
  @override
  Widget build(BuildContext context) {

    final String google_icon = 'assets/images/google.svg';
    final String facebook_icon = 'assets/images/facebook.svg';
    var mainColor=Color.fromARGB(255, 138, 138, 138);
    var secondColor=Colors.green[500];
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(image: AssetImage('assets/images/tree_log.png')),
            ],
          ),
          Center(
            child: Image(image: AssetImage('assets/images/ic_launcher.png'),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    currentScreen = RegisterForm();
                    currentTab = 1;
                  });
                },
                child: Text('Sign Up',style: TextStyle(
                  color: currentTab==0? mainColor : secondColor  ,
                  fontSize: 18,
                ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    currentScreen = LoginForm();
                    currentTab = 0;
                  });                },
                child: Text('Login',style: TextStyle(
                  color: currentTab==0? secondColor : mainColor,
                  fontSize: 18,
                ),
                ),
              ),
            ],
          ),
          tabs[currentTab],
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width *0.2,
                color: Colors.grey,
              ),
              Text('or continue with',style: TextStyle(color: Colors.grey),),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width *0.2,
                color: Colors.grey,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(google_icon),
              SizedBox(width: 10,),
              SvgPicture.asset(facebook_icon),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(image: AssetImage('assets/images/tree_log_down.png')),
            ],
          ),
        ],
      ),
    );
  }
}
