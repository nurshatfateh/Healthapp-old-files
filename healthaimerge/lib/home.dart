import 'package:flutter/material.dart';
import 'profile.dart';
import 'navbar.dart';
import 'cure.dart';
import 'doc.dart';
import 'ill.dart';
import 'sos1.dart';
import 'kit_history.dart';
import 'analytics.dart';

void main() {
  runApp(MyApp());  
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/': (context) => BaseApp(),
        '/ill.dart': (context) => illFirstRoute(),
        '/doc.dart': (context) => docFirstRoute(),
        '/cure.dart': (context) => cureFirstRoute(),
        '/sos1.dart': (context) => FirstRoute(),
        '/kit_history': (context) => kitFirstRoute(),
        '/profile.dart': (context) => userProfile(),
      },
    );
  }
}

class BaseApp extends StatelessWidget {
  const BaseApp({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Navbar(),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
          child: Center(
            child: Text(
              'Health AI',
              style: TextStyle(
                fontFamily: 'InknutAntiqua',
                fontSize: 32.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
        child: GridView(
          
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10, childAspectRatio: 0.8,),
          
          children: [
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF5FB2FF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset(
                    'images/detection.png',
                    height: 150,
                    width: 150,
                  ),
                  const Text(
                    "Disease Detection",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => illFirstRoute()),
                  );
              },
            ),
            InkWell(
              child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF5FB2FF),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset(
                    'images/doctor_suggestion.png',
                    height: 150,
                    width: 150,
                  ),
                  const Text(
                    "Doctor Suggestion",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16.0,
                      color: Colors.white,fontWeight: FontWeight.bold
                    ),
                  ),
                ],),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => docFirstRoute()),
                  );
              },
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF5FB2FF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset(
                    'images/cure_suggestion.png',
                    height: 150,
                    width: 150,
                  ),
                  const Text(
                    "Cure Suggestion",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16.0,
                      color: Colors.white,fontWeight: FontWeight.bold
                    ),
                  ),
                ],),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cureFirstRoute()),
                  );
              },
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF5FB2FF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset(
                    'images/data.png',
                    height: 150,
                    width: 150,
                  ),
                  const Text(
                    "Health Analytics",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16.0,
                      color: Colors.white,fontWeight: FontWeight.bold
                    ),
                  ),
                ],),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => analyticsFirstRoute()),
                  );
              },
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF5FB2FF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset(
                    'images/profile_details.png',
                    height: 120,
                    width: 150,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Text(
                      "Personal Data",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16.0,
                        color: Colors.white,fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => userProfile()),
                  );
              },
            ),

            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF5FB2FF),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset(
                    'images/emergency.png',
                    height: 150,
                    width: 150,
                  ),
                  const Text(
                    "Emergency System",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16.0,
                      color: Colors.white,fontWeight: FontWeight.bold
                    ),
                  ),
                ],),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstRoute()),
                  );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}