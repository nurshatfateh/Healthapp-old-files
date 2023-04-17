import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'navbar.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: illFirstRoute() ,
  ),
  );
}
class illFirstRoute extends StatelessWidget {
  const illFirstRoute({super.key});
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


                  height: 660,
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
                                    MaterialPageRoute(builder: (context) =>  illSecondRoute()),
                                  ),
                                  child: const Text('Yes'),
                                ),
                              ],
                            ),
                          ),


                          child: Center(
                            child: ListTile(

                              leading:Icon(Icons.add,size:50.0,color: Colors.red,),
                              title: Text("Add a new session",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),
                              ),
                              contentPadding: EdgeInsets.all(15.0),
                            ),
                          ),


                        ),),


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
                              MaterialPageRoute(builder: (context) => illSecondRoute()),
                            );
                          },
                          child: Center(
                            child: ListTile(


                              title: Text("Session 1: Nurshat",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),textAlign: TextAlign.center,
                              ),

                              contentPadding: EdgeInsets.all(15.0),
                            ),
                          ),


                        ),),
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
                              MaterialPageRoute(builder: (context) =>  illSecondRoute()),
                            );
                          },
                          child: Center(
                            child: ListTile(


                              title: Text("Session 2: Jamal",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),textAlign: TextAlign.center,
                              ),

                              contentPadding: EdgeInsets.all(15.0),
                            ),
                          ),


                        ),),
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
                              MaterialPageRoute(builder: (context) =>  illSecondRoute()),
                            );
                          },
                          child: Center(
                            child: ListTile(


                              title: Text("Session 3: Rifat",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),textAlign: TextAlign.center,
                              ),

                              contentPadding: EdgeInsets.all(15.0),
                            ),
                          ),


                        ),),
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
                              MaterialPageRoute(builder: (context) => illSecondRoute()),
                            );
                          },
                          child: Center(
                            child: ListTile(


                              title: Text("Session 4: Tausif",
                                style: TextStyle(fontSize:21.0,color: Colors.black,fontWeight:FontWeight.bold,),textAlign: TextAlign.center,
                              ),

                              contentPadding: EdgeInsets.all(15.0),
                            ),
                          ),


                        ),),







                    ],
                  ),
                ),



              ),





            ],

          )


      ),

      drawer:  Navbar(),


    );
  }
}















class illSecondRoute extends StatefulWidget{
  @override
  _illSecondRoute createState() => _illSecondRoute();
}

class _illSecondRoute extends State<illSecondRoute> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16, bottom: 5,top:3),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back,color: Colors.white,),
                  ),
                  SizedBox(width: 2,),
                  IconButton(
                    onPressed: (){

                    },
                    icon: Icon(Icons.blur_circular_outlined ,color: Colors.white,size: 40,),
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 6,),
                        Text("Health AI",style: TextStyle(color: Colors.white, fontSize: 16 ,fontWeight: FontWeight.w600),),
                        SizedBox(height: 2,),
                        Text("Your Personal Healthcare Companion",style: TextStyle(color: Colors.white70, fontSize: 13),),
                        SizedBox(height: 2,),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.blue[200]),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15,color: Colors.grey.shade700,),),
                  ),
                ),
              );
            },
          ),
          Align(

      alignment: Alignment.bottomLeft,
      child: Container(
        padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
        height: 60,

        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: (){
              },
              child: Container(
                height: 50,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child:   IconButton(
                  icon: const  Icon(Icons.mic_none_outlined, color: Colors.white, size: 20, ),

                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                      title: const Text('Please Speak in Plain English'),



                    ),
                  ),
                ),

              ),
            ),
            SizedBox(width: 15,),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Write message...",
                    hintStyle: TextStyle(color: Colors.black54),
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(width: 15,),
            FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.send,color: Colors.white,size: 18,),
              backgroundColor: Colors.blue,
              elevation: 0,
            ),
          ],

        ),
      ),
    ),
    ],
    ),
    );
  }
}


class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}
List<ChatMessage> messages = [
  ChatMessage(messageContent: "Hello, Nurshat", messageType: "receiver"),
  ChatMessage(messageContent: "How are you feeling today?", messageType: "receiver"),
  ChatMessage(messageContent: "Not quite fine...", messageType: "sender"),
  ChatMessage(messageContent: "Is it a mental fatigue or any illness?", messageType: "receiver"),
  ChatMessage(messageContent: "I am feeling a lot of pain in my stomach", messageType: "sender"),
];


