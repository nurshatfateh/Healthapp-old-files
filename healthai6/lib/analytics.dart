import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'navbar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: analyticsFirstRoute() ,
  ),
  );
}


class analyticsFirstRoute extends StatelessWidget {
  const analyticsFirstRoute({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(


      backgroundColor: Color(0xFF5FB2FF),

      appBar:AppBar(
        backgroundColor: Color(0xFF0051CB),
        title:Text("      Health AI  ",
          style:TextStyle(fontSize: 35.0,color: Colors.white,fontWeight:FontWeight.bold) ,
        ),
      ) ,

      body:Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children:[
              Center(
                child: Container(
                  decoration: BoxDecoration(color: Color(0xFFB0F1FF),borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.only(bottom: 0,left: 5,right: 5,top: 0),


                  height: 610,
                  alignment: Alignment.center,

                  child: Column(
                    children: [

                      SizedBox(height: 40.0,),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        elevation: 5,
                        color: Colors.white,

                        margin:EdgeInsets.all(15.0),
                        child: new InkWell(
                          onTap: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Do you want to see detailed analytics?'),

                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'Cancel'),
                                  child: const Text('No'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const analyticsSecondRoute()),
                                  ),
                                  child: const Text('Yes'),
                                ),
                              ],
                            ),
                          ),
                          //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                          child: Center(

                            child: ListTile(

                              title: Text("Body Temperature\n99°",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold, ),textAlign: TextAlign.center,
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
                              title: const Text('Do you want to see detailed analytics?'),

                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'Cancel'),
                                  child: const Text('No'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const analyticsSecondRoute()),
                                  ),
                                  child: const Text('Yes'),
                                ),
                              ],
                            ),
                          ),
                          //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                          child: Center(

                            child: ListTile(

                              title: Text("Body Oxygen Level\n99",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold, ),textAlign: TextAlign.center,
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
                              title: const Text('Do you want to see detailed analytics?'
                                  ''),

                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'Cancel'),
                                  child: const Text('No'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const analyticsSecondRoute()),
                                  ),
                                  child: const Text('Yes'),
                                ),
                              ],
                            ),
                          ),
                          //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                          child: Center(

                            child: ListTile(

                              title: Text("Blood Pressure\n120/90",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold, ),textAlign: TextAlign.center,
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
                              title: const Text('Do you want to see detailed analytics?'),

                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'Cancel'),
                                  child: const Text('No'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const analyticsSecondRoute()),
                                  ),
                                  child: const Text('Yes'),
                                ),
                              ],
                            ),
                          ),
                          //padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                          child: Center(

                            child: ListTile(

                              title: Text("Pulse Rate\n72",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold, ),textAlign: TextAlign.center,
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
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
                    ),

                    onPressed: () { },

                    child:

                    Text("Press to Calculate",
                      style: TextStyle(fontSize:23.0,color: Colors.black,fontWeight:FontWeight.bold, ),
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




class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}


class analyticsSecondRoute extends StatelessWidget {
  const analyticsSecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(DateTime.parse('2010-07-20 20:18:04Z'), 80),
      SalesData(DateTime.parse('2012-07-20 20:18:04Z'), 60),
      SalesData(DateTime.parse('2014-07-20 20:18:04Z'), 85),
      SalesData(DateTime.parse('2016-07-20 20:18:04Z'), 50),
      SalesData(DateTime.parse('2018-07-20 20:18:04Z'), 90)
    ];
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(


      backgroundColor: Color(0xFF5FB2FF),

      appBar:AppBar(
        backgroundColor: Color(0xFF0051CB),
        title:Text("      Health AI  ",
          style:TextStyle(fontSize: 35.0,color: Colors.white,fontWeight:FontWeight.bold) ,
        ),
      ) ,

      body:Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children:[
              Center(
                child: Container(
                  decoration: BoxDecoration(color: Color(0xFFB0F1FF),borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.only(bottom: 70,left: 5,right: 5,top: 0),


                  height: 600,
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
                              title: Text("Current Value is 98",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),textAlign: TextAlign.center,
                              ),
                              contentPadding: EdgeInsets.all(15.0),
                              trailing:Icon(Icons.check_circle_outline,size:50.0,color: Colors.green,),
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


                            title:       Center(
                                child: Container(
                                    child: SfCartesianChart(
                                        primaryXAxis: DateTimeAxis(),
                                        series: <ChartSeries>[
                                          // Renders line chart
                                          LineSeries<SalesData, DateTime>(
                                              dataSource: chartData,
                                              xValueMapper: (SalesData sales, _) => sales.year,
                                              yValueMapper: (SalesData sales, _) => sales.sales
                                          )
                                        ]
                                    )
                                )
                            ),
                            contentPadding: EdgeInsets.all(15.0),
                          ),
                        ),



                      ),
                      SizedBox(height: 12),

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            textStyle: const TextStyle(
                                color: Colors.blue,
                                fontSize: 10,
                                fontStyle: FontStyle.normal),
                          ),
                          onPressed: (){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const risk()),
                        );
                      }, child: const Text('Detailed Health Analysis', style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),),),


                    ],
                  ),
                ),




              ),






            ],

          )


      ),

      drawer: Navbar(),


    );


  }
}



class risk extends StatelessWidget {
  const risk({super.key});
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

                          },
                          child: Center(
                            child: ListTile(

                              leading:Icon(Icons.sick_outlined,size:50.0,color: Colors.redAccent,),
                              title: Text("High Blood Pressure",
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
                              Text("Possible Risks:\n\n1. Can lead to a heart attack or stroke.\n\n2. Can form an aneurysm.\n\n3. May cause heart failure.\n\n4. Can lead to kidney damage.\n\n5. Can cause vascular dementia",
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






            ],

          )


      ),

      drawer:Navbar(),


    );


  }
}

