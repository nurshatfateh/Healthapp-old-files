import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'SignUp.dart';
import 'home.dart';
import 'forgotpass.dart';
import 'login.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: splash(),
        backgroundColor: Color.fromARGB(1000, 95, 178, 255),
      ),
    );
  }
}
class splash extends StatelessWidget {

  void isLogin(BuildContext context){
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

    if(user!= null){
      Timer(const Duration(seconds: 3),
      ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyApp())));
    }else{
      Timer(const Duration(seconds: 3),
      ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login())));
    }
  }

  const splash({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(


      backgroundColor: Color(0xFF5FB2FF),



      body:Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              children:[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF5FB2FF),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/splash.png',
                        height: 550,
                        width: 550,
                      ),

                    ],),
                ),
                SizedBox(height: 50.0,),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                  color: Colors.white,

                  margin:EdgeInsets.all(15.0),
                  child: new InkWell(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const MaterialApp(
                        debugShowCheckedModeBanner: false,
                        home: Scaffold(
                            backgroundColor: Color(0xFF5FB2FF),
                          body: Login()),

                        ),
                      ),
                    ),

                    //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                    child: Center(

                      child: ListTile(

                        title: Text("Get Started",
                          style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold, ),textAlign: TextAlign.center,
                        ),
                        contentPadding: EdgeInsets.all(15.0),
                      ),
                    ),


                  ),),





              ],

            ),
          )


      ),




    );
  }
}