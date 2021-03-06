import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_app/AboutUs.dart';
import 'package:healthcare_app/bmicalculation.dart';
import 'package:healthcare_app/bokksession.dart';
import 'package:healthcare_app/createaccount.dart';
import 'package:healthcare_app/devicetype.dart';
import 'package:healthcare_app/doctor.dart';
import 'package:healthcare_app/loginpage.dart';
import 'package:healthcare_app/searchhospital.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
class HomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print(" 1st createState()");
   return HomePageState();
  }

}

class HomePageState extends State{
  String email;
  DateTime backbuttonpressedTime;
  SharedPreferences logindata;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  void _showScaffold(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

  Future<bool> onWillPop() async {
    DateTime currentTime = DateTime.now();
    //Statement 1 Or statement2
    bool backButton = backbuttonpressedTime == null ||
        currentTime.difference(backbuttonpressedTime) > Duration(seconds: 3);
    if (backButton) {

      backbuttonpressedTime = currentTime;
      Fluttertoast.showToast(
          msg: "Double Click to exit app",
          backgroundColor: Colors.black,
          textColor: Colors.white);
      return false;
    }
    return true;
  }
  @override
  void initState() {
    print("2nd state");
    super.initState();
    getData();
  }
  
  void getData() async{
    logindata = await SharedPreferences.getInstance();
    setState(() {
      print("6th state");
      email=logindata.getString('email');
    });

  }
  void logout() async {
    logindata = await SharedPreferences.getInstance();
    logindata.clear();
    _showMyDialog();

  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(''),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Image.asset("assets/images/logout.png",height: 60,),
                Text('Are sure you want to Logout',style: TextStyle(color: Colors.red),textAlign: TextAlign.left,),

              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
              },
            ),
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void didChangeDependencies(){
    print("3rd state");
    super.didChangeDependencies();
  }
  @override
  void didUpdateWidget(HomePage loginPage) {
    print("5th state");
    // Clean up the controller when the widget is disposed.
    super.didUpdateWidget(loginPage);
  }
  @override
  void diactivate() {
    print("7thth state");
    super.deactivate();
  }
  @override
  void dispose() {
    print("8th state");
    // Clean up the controller when the widget is disposed.
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print("4th state");
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(email),

      ),


      drawer: Drawer(


        child: ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
              accountName: new Text("Abc",style: TextStyle(fontSize: 20,color: Colors.black),),
              accountEmail: new Text(email,style:TextStyle(fontSize: 15,color: Colors.black),),

              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/logo.png",),
                 fit: BoxFit.fitWidth,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                 backgroundImage:AssetImage("assets/images/doctor.jpg")),
            ),
            ListTile(
              leading: Icon(Icons.accessibility,color: Colors.blue,),
              title: Text('BMI Calculation',style: TextStyle(color: Colors.pinkAccent)),
              onTap: () {

               Navigator.push(context, MaterialPageRoute(builder: (context)=>BMICalculation()));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle,color: Colors.blue,),
              title: Text('Create Account',style: TextStyle(color: Colors.pinkAccent),),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>CreateAccount()));

              },
            ),
            ListTile(
              leading: Icon(Icons.search,color: Colors.blue,),
              title: Text('Search Doctor',style: TextStyle(color: Colors.pinkAccent),),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>SearchDoctor()));

              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today,color: Colors.blue,),
              title: Text('Book Session',style: TextStyle(color: Colors.pinkAccent),),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>BookSession()));

              },
            ),

            ListTile(
              leading: Icon(Icons.person,color: Colors.blue,),
              title: Text('Doctor ',style: TextStyle(color: Colors.pinkAccent),),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>SeeDoctor()));

              },
            ),
            const Divider(),
            ListTile(
              leading: Icon(Icons.assignment,color: Colors.blue,),
              title: Text('About Us',style: TextStyle(color: Colors.pinkAccent),),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>MySecondPage()));

              },
            ),
            ListTile(
              leading: Icon(Icons.logout,color: Colors.blue,),
              title: Text('LogOut',style: TextStyle(color: Colors.pinkAccent)),
              onTap: () {logout();
                //Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));


              },
            ),
          ],
        ),
      ),

      body:WillPopScope(onWillPop: onWillPop,
        child:SafeArea(

    child:
    Container(child:ListView(
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
      Wrap(
          children: [
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
                                              width:150,
                                              height:150,
                                              ),
                                              color: Colors.blue,
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
                                                width:  150,
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
                                                height:  150,
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
    ]),
                                              ],
                                              ),

                                              padding: const EdgeInsets.all(10),
                                              color: Color.fromARGB(100, 255, 244, 214),
    ),
      )
      )
    );
  }

}
// DeviceType getDeviceType(MediaQuery mediaQuery){
//   var orientation=med
//
// }