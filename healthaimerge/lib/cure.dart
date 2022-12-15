import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'navbar.dart';
import 'home.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: cureFirstRoute() ,
  ),
  );
}
class cureFirstRoute extends StatelessWidget {
  const cureFirstRoute({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(


      backgroundColor: Color(0xFF5FB2FF),

      appBar:AppBar(
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

      body:Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children:[
              Center(
                child: Container(
                  decoration: BoxDecoration(color: Color(0xFFB0F1FF),borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.only(bottom: 20,left: 5,right: 5,top: 20),


                  height: 375,
                  alignment: Alignment.center,

                  child: Column(
                    children: [
                      SizedBox(height: 13.0,),

                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                        color: Colors.white,
                        elevation: 5,
                        margin:EdgeInsets.all(15.0),
                        //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),



                          child: Center(
                            child: ListTile(


                              title: Text("Please Enter Your Disease:",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),textAlign: TextAlign.center,
                              ),
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                          ),


                       ),
                      SizedBox(height: 13.0,),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        elevation: 5,
                        color: Colors.white,

                        margin:EdgeInsets.all(15.0),



                          //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                          child: Center(

                          child: Padding(
                            padding: EdgeInsets.all(7),
                              child:
                              const TextField(

                                decoration: InputDecoration(
                                  border: InputBorder.none,

                                  labelText: 'Type here to search for the cure',
                                ),
                              )
                          ),

                          ),


                        ),



                      SizedBox(height: 12),
                      ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const cureSecondRoute()),
                        );
                      }, child: const Text('Search')),
                      SizedBox(height: 5),
                      ElevatedButton(onPressed: (){ Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BaseApp()),
                      );}, child: const Text('Return')),
                       ],
                     )




                  ),
                ),









            ],

          )


      ),

      drawer: const Navbar(),


    );
  }
}















class cureSecondRoute extends StatelessWidget {
  const cureSecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(


      backgroundColor: Color(0xFF5FB2FF),

      appBar:AppBar(
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

      body:Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children:[
              Center(
                child: Container(
                  decoration: BoxDecoration(color: Color(0xFFB0F1FF),borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.only(bottom: 0,left: 5,right: 5,top: 0),


                  height: 620,
                  alignment: Alignment.center,

                  child: Column(
                    children: [
                      SizedBox(height: 15.0,),

                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                        color: Colors.white,
                        elevation: 5,
                        margin:EdgeInsets.all(12.0),
                        //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                        child: new InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const cureSecondRoute()),
                            );
                          },
                          child: Center(
                            child: ListTile(

                              leading:Icon(Icons.sick_outlined,size:50.0,color: Colors.redAccent,),
                              title: Text("Disease:\n Diarrhea",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),textAlign: TextAlign.center,
                              ),
                              trailing:Icon(Icons.sick_outlined,size:50.0,color: Colors.redAccent,),
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                          ),


                        ),),

                      SizedBox(height: 15.0,),
                      Card(

                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        elevation: 5,
                        color: Colors.white,
                        margin:EdgeInsets.all(15.0),

                        //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 6.0),
                        child: Center(

                          child: ListTile(
                            leading:Icon(Icons.medical_information_outlined,size:50.0,color: Colors.redAccent,),


                            title: Center(


                              child:
                              Text("Suggested Cure:\n\n1. Drink more fluid to stay hydrated.\n\n2. Avoid exercise.\n\n3. Eat a BRAT Diet: bananas, rice, applesauce and toast.\n\n4. Drinking tea might help.\n\n5. Avoid foods that can aggravate diarrhea.",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold),
                              ),


                            ),
                            contentPadding: EdgeInsets.all(15.0),
                          ),
                        ),


                      ),


                    ],
                  ),
                ),



              ),
              Center(
                child:Container(
                  margin: EdgeInsets.only(top: 35, bottom: 0),
                  child:


                  TextButton(


                    style: ButtonStyle(

                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent)
                    ),

                    onPressed: () { Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BaseApp()),
                  ); },

                    child:

                    Text("Go Home",
                      style: TextStyle(fontSize:23.0,color: Colors.white,fontWeight:FontWeight.bold, ),
                    ),
                  ),
                ),
              )





            ],

          )


      ),

      drawer: const Navbar(),


    );


  }
}







