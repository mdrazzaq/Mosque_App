import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_app/pages/singup_sceen.dart';
import 'package:task_app/pages/varification_page.dart';

class LoginPage extends StatefulWidget {
  static const String id='LoginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> scaffoldkey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white24,
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
              Navigator.pushNamed(context, SingupSceen.id);
              },
              icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white24,
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Image(
                    image: AssetImage('assets/mosqueLogo.png'),
                    width: 100,height: 100,
                  ),
                ),
                Container(
                  child: FlatButton(
                    onPressed: (){},
                    child: Text('Login',style: TextStyle(
                      fontFamily: 'Regular-Bold',fontSize: 34,color: Colors.black,
                    )),
                  ),
                ),
                Container(
                  child: Text('Welcome back',style: TextStyle(
                    fontSize: 25,color: Colors.grey,fontFamily: 'Brand-Regular',
                  )),
                ),
                Text('Sign in to continue with The Mosque Fund',style: TextStyle(
                  fontSize: 16,color: Colors.grey,fontFamily: 'Brand-Regular',
                )),
                SizedBox(height: 20,),
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
                SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text('Sign In',style: TextStyle(
                          fontSize: 20,color: Colors.white,fontFamily: 'Regular-Bold',
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('Don’t have an account?',style: TextStyle(
                        fontSize: 16,color: Colors.grey,fontFamily: 'Brand-Regular',
                      )),
                      FlatButton(
                        onPressed: (){},
                        child: Text('Create account',style: TextStyle(
                          fontSize: 16,color: Colors.blue,fontFamily: 'Brand-Regular',
                        )),
                      ),
                    ],
                  ),
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
                                icon: Icon(FontAwesomeIcons.google,color: Colors.black12,),
                                onPressed: (){
                                  Navigator.pushNamed(context, VarificationPage.id);
                                },
                              ),
                              Text('Google',style: TextStyle(
                                fontSize: 15,fontFamily: 'Regular-Bold',color: Colors.black12,
                              )),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(FontAwesomeIcons.facebook,color: Colors.black12,),
                                onPressed: (){},
                              ),
                              Text('Facebook',style: TextStyle(
                                fontSize: 15,fontFamily: 'Regular-Bold',color: Colors.black12,
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text('The Mosque Fund is exempt from federal',style: TextStyle(
                          fontFamily: 'Regular-Bold',fontSize: 15,color: Colors.black,
                        )),
                            Text('under Internal Revenue Code ',style: TextStyle(
                              fontFamily: 'Regular-Bold',fontSize: 15,color: Colors.black,
                            )),
                        Text( '(IRC) Section 501(c)(3)',style: TextStyle(
                          fontFamily: 'Regular-Bold',fontSize: 15,color: Colors.black,
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
