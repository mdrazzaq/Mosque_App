import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_app/pages/login_page.dart';
import 'package:task_app/pages/oneboarding_sceen.dart';

class SingupSceen extends StatefulWidget {
  static const String id= 'SingupSceen';
  @override
  _SingupSceenState createState() => _SingupSceenState();
}

class _SingupSceenState extends State<SingupSceen> {
  final GlobalKey<ScaffoldState> scaffoldkey=GlobalKey<ScaffoldState>();
  final TextEditingController nameController=TextEditingController();
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController confirmpassController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(0, 1, 4, .1),
        elevation: 0.0,
        title: ClipRRect(
            borderRadius: BorderRadius.circular(50),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey,
            ),
            child: IconButton(
              onPressed: (){
                Navigator.pushNamed(context, OneboardingSceen.id);
              },
              icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 40,),
              Text('Sign Up',style: TextStyle(
                color: Colors.blueGrey,fontFamily: 'Brand-Bold',fontSize: 25,
              )),
              SizedBox(height: 20,),
              Center(
                child: Text('Welcome back',style: TextStyle(
                  fontSize: 20,color: Colors.grey,
                )),
              ),
              SizedBox(height: 20,),
              Text('Sign in to continue with The Mosque Fund',style: TextStyle(
                fontSize: 15,color: Colors.grey,fontFamily: 'Brand-Regular',
              )),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: confirmpassController,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Icon(Icons.done,color: Colors.white,),
                    ),
                  ),
                  Text('I agree with our'),
                  Text('Terms',style: TextStyle(color: Colors.blue)),
                  Text('and'),
                  Text('Condition',style: TextStyle(
                    color: Colors.blue,
                  )),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Center(
                      child: Text('Sign Up',style: TextStyle(
                        fontSize: 20,color: Colors.white,fontFamily: 'Regular-Bold',
                      )),
                    ),
                  ),
                ),
              ),
            //  SizedBox(height: 10,),
              Row(
                children: [
                  Center(
                    child: Text('Already have an account?',style: TextStyle(
                      fontSize: 15,color: Colors.blueGrey,
                    )),
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, LoginPage.id);
                    },
                    child: Text('Login',style: TextStyle(
                      fontSize: 15,color: Colors.blueGrey,
                    )),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 90,height: 1,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text('Or continue with',style: TextStyle(
                    fontFamily: 'Regular-Bold',fontSize: 15,color: Colors.black,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 90,height: 1,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
                ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Container(
                       child: Row(
                         children: [
                           IconButton(
                               icon: Icon(FontAwesomeIcons.google,color: Colors.white,),
                           onPressed: (){
                                 //Google login function
                           },
                           ),
                           Text('Google',style: TextStyle(
                             fontSize: 15,fontFamily: 'Regular-Bold',color: Colors.white,
                           )),
                         ],
                       ),
                     ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(FontAwesomeIcons.facebook,color: Colors.white,),
                              onPressed: (){
                                //Facebook Login function
                              },
                            ),
                            Text('Facebook',style: TextStyle(
                              fontSize: 15,fontFamily: 'Regular-Bold',color: Colors.white,
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                child: Container(
                  child: Wrap(
                    children: [
                      Center(
                        child: Text('The Mosque Fund is exempt from federal income tax under '
                            'Internal Revenue Code (IRC) Section 501(c)(3) ',style: TextStyle(
                          fontFamily: 'Brand-Regular',fontSize: 16,color: Colors.black,
                        )),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          color: Color.fromRGBO(0, 1, 4, .1),
        ),
      ),
    );
  }
}
