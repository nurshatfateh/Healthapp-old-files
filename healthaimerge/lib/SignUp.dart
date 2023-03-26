import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'email_conformation.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var name;
  var email;
  var password;
  var confirm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 95, 178, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 60.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(5),
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 60),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  name = value;
                                });
                              },
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                ),
                                labelText: 'Full Name',
                                labelStyle: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w900),
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                              textAlign: TextAlign.left,
                              textAlignVertical: TextAlignVertical.center,
                              cursorColor: Colors.black,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  email = value;
                                });
                              },
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                ),
                                labelText: 'Email',
                                labelStyle: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w900),
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                              textAlign: TextAlign.left,
                              textAlignVertical: TextAlignVertical.center,
                              cursorColor: Colors.black,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                              obscureText: true,
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
                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  confirm = value;
                                });
                              },
                              obscureText: true,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.password_outlined),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                ),
                                labelText: 'Confirm Password',
                                labelStyle: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w900),
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                              textAlign: TextAlign.left,
                              textAlignVertical: TextAlignVertical.center,
                              cursorColor: Colors.black,
                            ),
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: ElevatedButton(
                                  onPressed: () async {
                                    try {
                                      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                        email: email,
                                        password: password,
                                      );
                                    } on FirebaseAuthException catch (e) {
                                      if (e.code == 'weak-password') {
                                        print('The password provided is too weak.');
                                      } else if (e.code == 'email-already-in-use') {
                                        print('The account already exists for that email.');
                                      }
                                    } catch (e) {
                                      print(e);
                                    }
                                    // Navigator.push(context,
                                    //   MaterialPageRoute(builder: (context) => email_conformation()),
                                    // );
                                  },
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(30)),
                                              side: BorderSide(color: Colors.white)
                                          )
                                      )
                                  ),
                                  child: const Text('Sign Up',style: TextStyle(color: Colors.white ,fontSize:20, ),)
                              )
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text("Already have an account?"),
                        TextButton(
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



