import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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


          backgroundColor: Colors.blue,

          appBar:AppBar(
            backgroundColor: Colors.indigo,
            title:Text("    H e a l t h   A I  ",
              style:TextStyle(fontSize: 35.0,color: Colors.white,fontWeight:FontWeight.bold) ,
            ),
          ) ,

          body:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(

                children:[



                  SizedBox(height: 15.0,),

                  Card(

                    color: Colors.white,
                    margin:EdgeInsets.all(15.0),
                    //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                    child: new InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SecondRoute()),
                        );
                      },
                    child: Center(
                      child: ListTile(

                        leading:Icon(Icons.waving_hand_outlined,size:50.0,color: Colors.red,),
                        title: Text("Press to send SOS",
                          style: TextStyle(fontSize:25.0,color: Colors.black,fontWeight:FontWeight.bold,),
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                    ),


                  ),),
                  SizedBox(height: 15.0,),
                  Card(
                    color: Colors.white,
                    margin:EdgeInsets.all(15.0),
                    child: new InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ThirdRoute()),
                        );
                      },
                    //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                    child: Center(
                      child: ListTile(
                        leading:Icon(Icons.airport_shuttle_outlined ,size:50.0,color: Colors.red,),
                        title: Text("Press to call Ambulance",
                          style: TextStyle(fontSize:23.0,color: Colors.black,fontWeight:FontWeight.bold, ),
                        ),
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                    ),


                  ),),
                  SizedBox(height: 15.0,),
                  Card(
                    color: Colors.white,
                    margin:EdgeInsets.all(15.0),

                    //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 6.0),
                    child: Center(
                      child: ListTile(

                        title: Center(
                          child: Text("Your SOS Contact:\n\n+8801933318385\n\n\nYour SOS Hospital:\n\nLabaid Specialized Hospital",
                            style: TextStyle(fontSize:25.0,color: Colors.black,fontWeight:FontWeight.bold),
                          ),


                        ),
                        contentPadding: EdgeInsets.all(20.0),
                      ),
                    ),


                  ),
                  SizedBox(height: 25.0,),

                  TextButton(

                    style: ButtonStyle(

                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent)
                    ),

                    onPressed: () { },

                    child:

                    Text("Back To Home",
                      style: TextStyle(fontSize:23.0,color: Colors.white,fontWeight:FontWeight.bold, ),
                    ),
                  )
                ],
              )

          ),

          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  title: const Text('Item 1'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: const Text('Item 2'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),

          ),



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

  backgroundColor: Colors.blue,

  appBar:AppBar(
  backgroundColor: Colors.indigo,
  title:Text("    H e a l t h   A I  ",
  style:TextStyle(fontSize: 35.0,color: Colors.white,fontWeight:FontWeight.bold) ,
  ),
  ) ,

  body:Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(

  children:[



  SizedBox(height: 15.0,),
  Card(
  color: Colors.white,
  margin:EdgeInsets.all(15.0),
  //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
  child: Center(
  child: ListTile(
  leading:Icon(Icons.check_circle_outline,size:50.0,color: Colors.green,),
  title: Text("SOS Sent Success!",
  style: TextStyle(fontSize:25.0,color: Colors.black,fontWeight:FontWeight.bold,),
  ),
  contentPadding: EdgeInsets.all(20.0),
  ),
  ),


  ),
  SizedBox(height: 15.0,),

  Card(
  color: Colors.white,
  margin:EdgeInsets.all(15.0),
  //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 6.0),
  child: Center(
  child: ListTile(

  title: Center(
  child: Text("Your SOS message has been successfully sent to...\n\nContact:\n+8801933318385\n\nHospital:\nLabaid Specialized Hospital",
  style: TextStyle(fontSize:25.0,color: Colors.black,fontWeight:FontWeight.bold),
  ),


  ),
  contentPadding: EdgeInsets.all(20.0),
  ),
  ),


  ),
  SizedBox(height: 170.0,),

  TextButton(

  style: ButtonStyle(

  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent)
  ),

  onPressed: () { },

  child:

  Text("Back To Home",
  style: TextStyle(fontSize:23.0,color: Colors.white,fontWeight:FontWeight.bold, ),
  ),
  )
  ],
  )

  ),

  drawer: Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
  // Important: Remove any padding from the ListView.
  padding: EdgeInsets.zero,
  children: [
  const DrawerHeader(
  decoration: BoxDecoration(
  color: Colors.blue,
  ),
  child: Text('Drawer Header'),
  ),
  ListTile(
  title: const Text('Item 1'),
  onTap: () {
  // Update the state of the app.
  // ...
  },
  ),
  ListTile(
  title: const Text('Item 2'),
  onTap: () {
  // Update the state of the app.
  // ...
  },
  ),
  ],
  ),

  ),

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

  backgroundColor: Colors.blue,

  appBar:AppBar(
  backgroundColor: Colors.indigo,
  title:Text("    H e a l t h   A I  ",
  style:TextStyle(fontSize: 35.0,color: Colors.white,fontWeight:FontWeight.bold) ,
  ),
  ) ,

  body:Padding(
  padding: const EdgeInsets.all(8.0),
  child: Column(

  children:[



  SizedBox(height: 15.0,),
  Card(
  color: Colors.white,
  margin:EdgeInsets.all(15.0),
  //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
  child: Center(
  child: ListTile(
  leading:Icon(Icons.check_circle_outline,size:50.0,color: Colors.green,),
  title: Text("Emergency ambulance has been called Successfully!",
  style: TextStyle(fontSize:25.0,color: Colors.black,fontWeight:FontWeight.bold,),
  ),
  contentPadding: EdgeInsets.all(20.0),
  ),
  ),


  ),
  SizedBox(height: 15.0,),
  Card(

  color: Colors.white,
  margin:EdgeInsets.all(15.0),
  //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
  child: Center(
  child:    Icon(Icons.airport_shuttle_outlined,
  size: 100,
  color: Colors.black,

  ),

  ),


  ),

  SizedBox(height: 15.0,),
  Card(
  color: Colors.white,
  margin:EdgeInsets.all(15.0),
  //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 6.0),
  child: Center(

  child: ListTile(

  title: Center(
  child: Text("Emergency ambulance has been called from the nearest hospital...\n\nHospital name:\nAsgar Ali Hospital ",
  style: TextStyle(fontSize:25.0,color: Colors.black,fontWeight:FontWeight.bold),
  ),


  ),
  contentPadding: EdgeInsets.all(20.0),
  ),
  ),


  ),
  SizedBox(height: 50.0,),

  TextButton(

  style: ButtonStyle(

  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
  backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent)
  ),

  onPressed: () { },

  child:

  Text("Back To Home",
  style: TextStyle(fontSize:23.0,color: Colors.white,fontWeight:FontWeight.bold, ),
  ),
  )
  ],
  )

  ),

  drawer: Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
  // Important: Remove any padding from the ListView.
  padding: EdgeInsets.zero,
  children: [
  const DrawerHeader(
  decoration: BoxDecoration(
  color: Colors.blue,
  ),
  child: Text('Drawer Header'),
  ),
  ListTile(
  title: const Text('Item 1'),
  onTap: () {
  // Update the state of the app.
  // ...
  },
  ),
  ListTile(
  title: const Text('Item 2'),
  onTap: () {
  // Update the state of the app.
  // ...
  },
  ),
  ],
  ),

  ),



  );
  }
  }

