import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'SignUp.dart';
import 'home.dart';
import 'forgotpass.dart';

void main() => runApp(const MyApp());

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
                          body: MyStatefulWidget()),

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












class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 60),
                )),

            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  labelText: 'User Name',
                  labelStyle: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w900),
                  filled: true,
                  fillColor: Colors.white70,
                ),
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: Colors.black,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w900),
                  filled: true,
                  fillColor: Colors.white70,
                ),
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => forgotpass()),
                );

              },
              child: const Text(
                'Forgot Password?',
                  style: TextStyle(color: Colors.black)
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(85, 0, 85, 0),
                child: ElevatedButton(
                  child: const Text('Login' , style: TextStyle(color: Colors.white ,fontSize:20, ),),
                   onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BaseApp()),
                  );
                  },
                    style: ButtonStyle(

                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                side: BorderSide(color: Colors.white)

                            )
                        )
                    )
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                const Text('Don\'t have any account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),
                  ),
                  onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );

                  },
                )
              ],
            ),
          ],
        ));
  }
}
