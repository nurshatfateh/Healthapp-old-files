import 'package:flutter/material.dart';

import 'home.dart';

class Register extends StatelessWidget {
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 80.0,),
                        Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 60),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(3,0,3,10),
                            child: const TextField(
                              decoration: InputDecoration(
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
                            padding: const EdgeInsets.fromLTRB(3,0,3,10),
                            child: const TextField(
                              decoration: InputDecoration(
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
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Flexible(
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.height),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                    ),
                                    labelText: 'Height',
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
                              Flexible(
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.monitor_weight_outlined),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                    ),
                                    labelText: 'Weight',
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
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Flexible(
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.date_range),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                    ),
                                    labelText: 'DOB',
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
                              Flexible(
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.check_circle_outline_sharp),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                    ),
                                    labelText: 'Gender',
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

                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Flexible(
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.contact_phone),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                    ),
                                    labelText: 'SOS No.',
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


                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Flexible(
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.local_hospital),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                    ),
                                    labelText: 'SOS Hospital',
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
                            ],
                          ),

                          Container(
                              height: 50,
                              padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                              child: ElevatedButton(
                                  child: Text('Save',style: TextStyle(color: Colors.white ,fontSize:25, ),),
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => MyApp()),
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
                        ],
                      ),
                    ),
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



