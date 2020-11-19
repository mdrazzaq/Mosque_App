import 'package:flutter/material.dart';

class VarificationPage extends StatefulWidget {
  static const String id= 'VarificationPage';
  @override
  _VarificationPageState createState() => _VarificationPageState();
}

class _VarificationPageState extends State<VarificationPage> {
  final GlobalKey<ScaffoldState> scaffoldkey=GlobalKey<ScaffoldState>();
  final TextEditingController vareficontrollerone=TextEditingController();
  final TextEditingController vareficontrollertwo=TextEditingController();
  final TextEditingController vareficontrollerthree=TextEditingController();
  final TextEditingController vareficontrollerfour=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Container(
            width: double.infinity,
            height: 460,
            decoration: BoxDecoration(
              color: Colors.black12,
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Text('Verification',style: TextStyle(
                    fontSize: 30,fontFamily: 'Brand-Regular',color: Colors.black,
                  )),
                  Center(
                    child: Container(
                      child: Text('Please input your verification number',style: TextStyle(
                        fontSize: 15,fontFamily: 'Brand-Regular',color: Colors.black,
                      )),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color: Colors.white,
                        height: 160,
                        child: Row(
                          children: [
                            SizedBox(width: 15,),
                            Container(
                              width: 60,
                              child: TextField(
                                controller: vareficontrollerone,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              width: 60,
                              child: TextField(
                                controller: vareficontrollertwo,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              width: 60,
                              child: TextField(
                                decoration: InputDecoration(hoverColor: Colors.grey),
                                controller: vareficontrollerthree,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              width: 60,
                              child: TextField(
                                controller: vareficontrollerfour,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Text('Didn’t recive a verification code?',style: TextStyle(
                            fontSize: 20,fontFamily: 'Brand-Bold',color: Colors.grey,
                          )),
                          Center(
                            child: Stack(
                              children: [
                                MaterialButton(
                                  onPressed: (){},
                                  textColor: Colors.blueAccent,
                                  child: Text('Resend the code',style: TextStyle(
                                    fontSize: 20,fontFamily: 'Brand-Bold',
                                  )),
                                ),
                                Positioned(
                                  bottom: 10,left: 10,
                                  child: Container(
                                    width: 160,height: 2,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      child: Row(
                        children: [
                          Container(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
