import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:task_app/pages/donor_page.dart';
import 'package:task_app/pages/singup_sceen.dart';

class OneboardingSceen extends StatelessWidget {
  static const String id='OneboardingSceen';
  var pages=[
    PageViewModel(
      titleWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Our process is simple",style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 40,
          )),
        ],
      ),

      bodyWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 250,),
          Container(
            alignment: Alignment.centerLeft,
            child: Text('Create an account or choose to enter anonymously',style: TextStyle(
              fontSize: 25,
            )),
          ),
        ],
      ),
     // image: const Center(child: Icon(Icons.android)),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(color: Colors.blueGrey,fontSize: 40,fontWeight: FontWeight.bold),

      ),
    ),
    PageViewModel(
      titleWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80,),
          Container(
            alignment: Alignment.centerLeft,
            child: Image(
              image: AssetImage('assets/intro2.png'),
            ),
          ),

        ],
      ),
      bodyWidget: Text('Search for organizations or entities that you would like to support ',
        style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.bold,letterSpacing: 1.0),
      ),
      // image: const Center(child: Icon(Icons.android)),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(color: Colors.blueGrey,fontSize: 40,fontWeight: FontWeight.bold),

      ),
    ),
    PageViewModel(
      titleWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 80,),
          Container(
            alignment: Alignment.centerLeft,
            child: Image(
              image: AssetImage('assets/intro3.png'),
            ),
          ),
        ],
      ),
      bodyWidget: Text('Support and track your donations progress! ',
        style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.bold,letterSpacing: 1.0),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(color: Colors.blueGrey,fontSize: 40,fontWeight: FontWeight.bold),

      ),
    ),
  ];
  final GlobalKey<ScaffoldState> scaffoldkey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      body: IntroductionScreen(
        pages: pages,
        onDone: () {
          // When done button is pre
          Navigator.pushNamed(context, SingupSceen.id);
        },
        /*onSkip: () {
          // You can also override onSkip callback
        },*/

        showSkipButton: false,
        skip: const Icon(Icons.skip_next),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.blue,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)
            )
        ),
      ),
    );
  }
}
