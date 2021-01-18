import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_app/bmicalculation.dart';
import 'package:healthcare_app/bokksession.dart';

class HomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return HomePageState();
  }

}

class HomePageState extends State{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  void _showScaffold(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Homepage",textAlign: TextAlign.center,),

      ),
      body: Center(


          child: Container(
             margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Column

            (
               children: <Widget>[

                 Row(children: <Widget>[
                 Container(
                   child: Text("Hello",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 30),),
                 ),

                 ]),
                 Row(children: <Widget>[
                   Container(
                     child: Text("How can we help?",style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold,fontSize: 20),),
                   ),
                 ]),
        Container(
    child:
                 Column(
                   children: [
                     Row(children: <Widget>[
                     Container(
                       decoration: BoxDecoration(
                           image: DecorationImage(
                               image: AssetImage("assets/images/doctor.png"), fit: BoxFit.cover)),
                       margin: const EdgeInsets.fromLTRB(20, 90, 20, 20),child:
                     RaisedButton(
                       onPressed: (){
                         //Navigator.push(context, MaterialPageRoute(builder: (context)=>BookSession()));
                       },
                       child:  Text("See Doctor",style: TextStyle(color: Colors.black),),
                     ),
                       width: 130,
                       height:100,


                     ),
                     Container(
                         margin: const EdgeInsets.fromLTRB(20, 90, 20, 20),
                         child:
                     RaisedButton(
                       onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>BookSession()));
                       },
                       child:  Text("Find Hospital",style: TextStyle(color: Colors.black),),
                     ),
                       width: 130,
                       height:100,
                    
                     ),
    ]),
                   ],
                 )
        ),
                 Container(
                     child:
                     Column(
                       children: [
                         Row(children: <Widget>[
                           Container(

                         margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                             child:
                           RaisedButton(

                             onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>BookSession()));
                             },
                             child:  Text("Book Appointment",style: TextStyle(color: Colors.black),),
                           ),
                             width: 130,
                             height:100,
                           ),
                           Container(
                               margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                             child:
                           RaisedButton(
                             onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>BookSession()));
                             },
                             child:  Text("List of Drug",style: TextStyle(color: Colors.black),),
                           ),
                             width: 130,
                             height:100,
                           ),
                         ]),
                       ],
                     )
                 ),


               ],
             )
                 ),
                 ),

      drawer: Drawer(

        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                 // color: Colors.green,
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.cover)
              ),
            ),
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text('BMI Calculation',style: TextStyle(color: Colors.indigo)),
              onTap: () {

               Navigator.push(context, MaterialPageRoute(builder: (context)=>BMICalculation()));
              },
            ),
            ListTile(
              leading: Icon(Icons.transfer_within_a_station),
              title: Text('Calorie Calculation',style: TextStyle(color: Colors.indigo),),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.book_outlined),
              title: Text('About Us',style: TextStyle(color: Colors.indigo)),
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