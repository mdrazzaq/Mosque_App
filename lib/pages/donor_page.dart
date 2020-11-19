import 'package:flutter/material.dart';

class DonorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        SizedBox(height: 50,),
        Center(
          child: Text('Who Are You ?',style: TextStyle(
            fontSize: 35,fontFamily: 'Brand-Bold',
          )),
        ),
        SizedBox(height: 30,),
        Padding(
          padding: EdgeInsets.all(15),
          child: Text('Please Select What You Will be Doing',style: TextStyle(
            fontFamily: 'Brand-Regular',fontSize: 18,color: Colors.grey,
          )),
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('assets/mosque.png'),
                  width: 150,
                ),
                Image(
                  image: AssetImage('assets/donor.png'),
                  width: 150,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: Container(
            child: Center(
              child: Image(
                image: AssetImage('assets/org.png'),
              ),
            ),
          ),
        )
      ],
    ),
    );
  }
}
