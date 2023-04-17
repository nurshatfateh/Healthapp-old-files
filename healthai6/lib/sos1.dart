import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'navbar.dart';
import 'home.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstRoute() ,
  ),
  );
}
class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});
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
          padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
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


                    height: 565,
                    alignment: Alignment.center,
                 
                    child: Column(
                      children: [
                        SizedBox(height: 15.0,),

                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                          color: Colors.white,
                          elevation: 5,
                          margin:EdgeInsets.all(15.0),
                          //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                          child: new InkWell(
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Are you sure?'),

                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: const Text('No'),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => const SecondRoute()),
                                    ),
                                    child: const Text('Yes'),
                                  ),
                                ],
                              ),
                            ),


                            child: Center(
                              child: ListTile(

                                leading:Icon(Icons.waving_hand_outlined,size:50.0,color: Colors.red,),
                                title: Text("Press to send SOS",
                                  style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),
                                ),
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
                          child: new InkWell(
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Are you sure?'),

                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: const Text('No'),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (context) => const ThirdRoute()),
                                    ),
                                    child: const Text('Yes'),
                                  ),
                                ],
                              ),
                            ),
                            //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                            child: Center(

                              child: ListTile(
                                leading:Icon(Icons.airport_shuttle_outlined ,size:50.0,color: Colors.red,),
                                title: Text("Press for Ambulance",
                                  style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold, ),
                                ),
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


                              title: Center(

                                child: Text("Your Saved Contact:\n\n+8801933318385\n\n\nYour Saved Hospital:\n\nLabaid Specialized Hospital",
                                  style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold),textAlign: TextAlign.center,
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
    margin: EdgeInsets.only(top: 10, bottom: 10),
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

          drawer: Navbar(),


    );
  }
}















class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
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
                margin: EdgeInsets.only(bottom: 70,left: 5,right: 5,top: 70),


                height: 435,
                alignment: Alignment.center,

                child: Column(
                  children: [
                    SizedBox(height: 15.0,),

                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                      color: Colors.white,
                      elevation: 5,
                      margin:EdgeInsets.all(15.0),
                      //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                      child: new InkWell(
                        onTap: () {

                        },
                        child: Center(
                          child: ListTile(

                            leading:Icon(Icons.check_circle_outline,size:50.0,color: Colors.green,),
                            title: Text("SOS Message Was Sent Successfully!",
                              style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),
                            ),
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


                          title: Center(

                            child: Text("Your SOS message has been successfully sent to...\n\nSaved Contact:\n+8801933318385\n\nHospital:\nLabaid Specialized Hospital",
                              style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold),textAlign: TextAlign.center,
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

    drawer:  Navbar(),


  );


  }
  }





class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  return Scaffold(


    backgroundColor: Color(0xFF5FB2FF),

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

    body:Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children:[
            Center(
              child: Container(
                decoration: BoxDecoration(color: Color(0xFFB0F1FF),borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.only(bottom: 70,left: 5,right: 5,top: 60),


                height: 495,
                alignment: Alignment.center,

                child: Column(
                  children: [
                    SizedBox(height: 15.0,),

                    Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                      color: Colors.white,
                      elevation: 5,
                      margin:EdgeInsets.all(15.0),
                      //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                      child: new InkWell(
                        onTap: () {

                        },
                        child: Center(
                          child: ListTile(

                            leading:Icon(Icons.check_circle_outline,size:50.0,color: Colors.green,),
                            title: Text("Ambulance has been called successfully!",
                              style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),
                            ),
                            contentPadding: EdgeInsets.all(15.0),
                          ),
                        ),


                      ),),
                    SizedBox(height: 2.0,),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  elevation: 5,
                  color: Colors.white,
                  margin:EdgeInsets.all(15.0),
                  child: Padding(padding: EdgeInsets.all(10.0),

                child:
                Icon(Icons.airport_shuttle_outlined,
                  size: 70,
                  color: Colors.black,


                ),
                  ),



                ),
                    SizedBox(height: 2.0,),

                    Card(

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      elevation: 5,
                      color: Colors.white,
                      margin:EdgeInsets.all(15.0),

                      //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 6.0),
                      child: Center(

                        child: ListTile(


                          title: Center(

                            child: Text("Emergency ambulance has been called from the nearest hospital...\n\nHospital name:\nAsgar Ali Hospital ",
                              style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold),textAlign: TextAlign.center,
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
                margin: EdgeInsets.only(top: 0, bottom: 0),
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

    drawer:  Navbar(),


  );
  }
  }

