import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_app/bmicalculation.dart';
import 'package:healthcare_app/bokksession.dart';
import 'package:healthcare_app/doctor.dart';

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

      body:Container(
    child: Column(
    children: [
    ListTile(
      title: Text('Hello,',
      style: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    ),
    ListTile(
    title: Text('How Can We Take Care Yourself?',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    ),
    ),

    Container(
    child: Column(
    children: [
    Row(
    children: [
    GestureDetector(
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeDoctor()));
    },
    child:Card(
    child: Container(
    child: Column(
    children: [
    ListTile(
    leading: Icon(Icons.account_circle,
    color: Colors.white,
    size: 40,),
    ),
    ListTile(
    title: Text("Find Doctor",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),),
    subtitle: Text("210 Doctors",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white60,
    ),),
    contentPadding: const EdgeInsets.only(
    top: 20, left: 15),
    )
    ],
    ),
    width: 150,
    height: 150,
    ),
    color: Colors.indigo,
    ),
    ),
      GestureDetector(
        onTap: () {
         // Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeDoctor()));
        },
    child:Card(
    child: Container(
    child: Column(
    children: [
    ListTile(
    leading: Icon(Icons.account_balance,
    color: Colors.white,
    size: 40,),
    ),
    ListTile(
    title: Text("Find Hospital",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),),
    subtitle: Text("30 Hospital",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white60,
    ),),
    contentPadding: const EdgeInsets.only(
    top: 20, left: 15),
    )
    ],
    ),
    width: 150,
    height: 150,
    ),
    color: Colors.black54,
    ),
      )
    ],

    ),

    Row(
    children: [
      GestureDetector(
        onTap: () {
         // Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeDoctor()));
        },

   child: Card(
    child: Container(
    child: Column(
    children: [
    ListTile(
    leading: Icon(Icons.add_to_photos,
    color: Colors.white,
    size: 40,),
    ),
    ListTile(
    title: Text("Appointment",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),),
    subtitle: Text("50 Available",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white60,
    ),),
    contentPadding: const EdgeInsets.only(
    top: 20, left: 15),
    )
    ],
    ),
    width: 150,
    height: 150,
    ),
    color: Colors.black54,
    ),
    ),

      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeDoctor()));
        },
    child:Card(
    child: Container(
    child: Column(
    children: [
    ListTile(
    leading: Icon(Icons.calendar_today,
    color: Colors.white,
    size: 40,),
    ),
    ListTile(
    title: Text("DrugList",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),),
    subtitle: Text("22 Services",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white60,
    ),),
    contentPadding: const EdgeInsets.only(
    top: 20, left: 15),
    )
    ],
    ),
    width: 150,
    height: 150,
    ),
    color: Colors.black54,
    ),
      )
    ],
    ),
    ],
    ),
    padding: const EdgeInsets.all(27),
    ),
    ],
    ),
    padding: const EdgeInsets.all(10),
    color: Color.fromARGB(100, 255, 244, 214),
    ),
    );
  }

}
