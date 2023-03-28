import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'round_button.dart';
import 'login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'utils.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void login(){
    if(_formKey.currentState!.validate()){
      setState(() {
        loading = true;
      });
      _auth.createUserWithEmailAndPassword(email: emailController.text.toString(), password: passwordController.text.toString()).then((value) {
        setState(() {
          loading = false;
        });
        
      }).onError((error, stackTrace){
        Utils().toastMessage(error.toString());
        setState(() {
          loading = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Sign Up          '),),
        backgroundColor: const Color(0xFF5FB2FF),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.alternate_email)
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10,),
                   TextFormField(
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_open)
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter password';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50,),
          
          RoundButton(title: 'Sign Up',
            loading: loading,
            onTap: () {
              login();
            },
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?"),
              TextButton(onPressed: (() {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => const Login())
                );
              }),
               child: Text('Login')),
            ],
          )
        ]),
      ),
    );
  }
}