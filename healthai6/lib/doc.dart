import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'navbar.dart';
import 'home.dart';
const List<String> list = <String>['Dhaka', 'Chittagong', 'Sylhet', 'Rajshahi', 'Khulna', 'Barisal', 'Rangpur'];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: docFirstRoute() ,
  ),
  );
}

class docFirstRoute extends StatefulWidget {
  const docFirstRoute({super.key});

  @override
  State<docFirstRoute> createState() => _docFirstRouteState();
}

class _docFirstRouteState extends State<docFirstRoute> {
  String dropdownValue = list.first;
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


                    height: 450,
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

                                    labelText: 'Type here to search for specialists',
                                  ),
                                )
                            ),

                          ),


                        ),



                        SizedBox(height: 5),
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.location_on_outlined),
                          elevation: 100,
                          style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          underline: Container(
                            height: 2,
                            color: Colors.black,
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          items: list.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),SizedBox(height: 13.0,),

                        ElevatedButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const docSecondRoute()),
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

      drawer:  Navbar(),


    );
  }
}















class docSecondRoute extends StatelessWidget {
  const docSecondRoute({super.key});
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


                  height: 580,
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

                          },
                          child: Center(
                            child: ListTile(

                              leading:Icon(Icons.medical_information_outlined ,size:50.0,color: Colors.redAccent,),
                              title: Text("Specialists for:\n Diarrhea",
                                style: TextStyle(fontSize:20.0,color: Colors.black,fontWeight:FontWeight.bold,),textAlign: TextAlign.center,
                              ),
                              trailing:Icon(Icons.medical_services_outlined,size:50.0,color: Colors.redAccent,),
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                          ),


                        ),),
                      SizedBox(height: 0,),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        elevation: 5,
                        color: Colors.white,

                        margin:EdgeInsets.all(15.0),
                        child: new InkWell(
                          onTap: (){ Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const docThirdRoute()),
                          );},
                          //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                          child: Center(

                            child: ListTile(

                              title: Text("1. Prof. Dr. Fazlur Rahman\n-> Pediatric Gastroenterologist\n-> Asgar Ali Hospital",
                                style: TextStyle(fontSize:19.0,color: Colors.black,fontWeight:FontWeight.bold, ),
                              ),
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                          ),


                        ),),
                      SizedBox(height: 0,),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        elevation: 5,
                        color: Colors.white,

                        margin:EdgeInsets.all(15.0),
                        child: new InkWell(
                          onTap: (){ Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const docThirdRoute()),
                          );},
                          //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                          child: Center(

                            child: ListTile(

                              title: Text("2. Prof. Dr. Ahsanul Rahman\n-> Gastroenterologist\n-> Square Hospital",
                                style: TextStyle(fontSize:19.0,color: Colors.black,fontWeight:FontWeight.bold, ),
                              ),
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                          ),


                        ),),

                      SizedBox(height: 0.0,),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        elevation: 5,
                        color: Colors.white,

                        margin:EdgeInsets.all(15.0),
                        child: new InkWell(
                          onTap: (){ Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const docThirdRoute()),
                          );},
                          //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                          child: Center(

                            child: ListTile(

                              title: Text("3. Prof. Dr. Shafik Ahmed\n-> Medicine Specialist\n-> IBN Sina Hospital",
                                style: TextStyle(fontSize:19.0,color: Colors.black,fontWeight:FontWeight.bold, ),
                              ),
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                          ),


                        ),),






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


class docThirdRoute extends StatelessWidget {
  const docThirdRoute({super.key});
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


                  height: 580,
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
                              MaterialPageRoute(builder: (context) => const docThirdRoute()),
                            );
                          },
                          child: Center(
                            child: ListTile(

                              leading:Icon(Icons.medical_information_outlined ,size:50.0,color: Colors.redAccent,),
                              title: Text("Pro. Dr. Fazlur Rahman",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),textAlign: TextAlign.center,
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


                              child:
                              Text("Expertise:\nPediatric Gastroenterologist\n\nHospital:\nAsgar Ali Hospital\n\nPhone:\n01933318546\n\nEmail:\nfazur@outlook.com\n\nAddress:\nDoyagonj, Dhaka",
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
                  margin: EdgeInsets.only(top: 20, bottom: 0),
                  child:Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Center(
                          child: IconButton(
                            iconSize: 50,color: Colors.white,
                            icon: const Icon(Icons.call),

                            onPressed: () {

                            },
                          ),
                        ),
                        SizedBox(width: 50.0,),
                        Center(
                          child: IconButton(
                            iconSize: 50,
                            color: Colors.white,
                            icon: const Icon(Icons.email),

                            onPressed: () {

                            },
                          ),
                        ),
                      ],
                    ),
                  )


                ),
              ),






            ],

          )


      ),

      drawer:  Navbar(),


    );


  }
}



