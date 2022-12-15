import 'package:flutter/material.dart';
import 'Register.dart';

class email_conformation extends StatelessWidget {
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 80),
                      child: Column(
                        children: [
                          Image.asset('images/mail.png'),
                        ],
                      ),
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
                          MaterialPageRoute(builder: (context) =>  MaterialApp(
                            debugShowCheckedModeBanner: false,
                            home: Scaffold(
                                backgroundColor: Color(0xFF5FB2FF),
                                body: Register()),

                          ),
                          ),
                        ),

                        //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                        child: Center(

                          child: ListTile(

                            title: Text("Press here after confirming your account from your email",
                              style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold, ),textAlign: TextAlign.center,
                            ),
                            contentPadding: EdgeInsets.all(15.0),
                          ),
                        ),


                      ),)


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
