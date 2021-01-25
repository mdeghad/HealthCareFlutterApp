import 'package:flutter/material.dart';
import 'package:healthcare_app/homepage.dart';
import 'package:healthcare_app/loginpage.dart';

class CreateAccount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return CreateAccountSate();
  }

}
class CreateAccountSate extends State {
  final fnameController=TextEditingController();
  final lnameController=TextEditingController();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  String fname,lname,email,password;




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
                Image.asset("assets/images/tick.jpg"),
                //Text('This is a demo alert dialog.'),
                Text('Account Created Successfully'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Scaffold(

  appBar: AppBar(
    backgroundColor: Colors.black,
    title: Text("Create Account",textAlign: TextAlign.center,),

  ),
  body:ListView(
      children:<Widget> [
        ClipPath(
          clipper: WaveClipper(),
          child: Image.network("https://png.pngtree.com/thumb_back/fw800/background/20190926/pngtree-pink-color-flower-background-image_317655.jpg"),
        ),

        TextField(
        cursorColor: Colors.pinkAccent,
        controller: fnameController,
          style: TextStyle(color: Colors.black),
          keyboardType: TextInputType.emailAddress,
          decoration: new InputDecoration(
          hintText: "FirstName",
          contentPadding: EdgeInsets.all(5),
          border: InputBorder.none

        )

        ),

            TextField(
            cursorColor: Colors.pinkAccent,
            controller: lnameController,
            style: TextStyle(color: Colors.black),
            keyboardType: TextInputType.emailAddress,
            decoration: new InputDecoration(
            hintText: "LastName",
            contentPadding: EdgeInsets.all(5),
            border: InputBorder.none

            )
            ),


            TextField(
            cursorColor: Colors.pinkAccent,
            controller: emailController,
            style: TextStyle(color: Colors.black),
            keyboardType: TextInputType.emailAddress,
            decoration: new InputDecoration(
            hintText: "Email",
            contentPadding: EdgeInsets.all(5),
            border: InputBorder.none

            )
            ),


        TextField(
            cursorColor: Colors.pinkAccent,
            obscureText: true,
            controller: passwordController,
            style: TextStyle(color: Colors.black),
            keyboardType: TextInputType.emailAddress,
            decoration: new InputDecoration(
                hintText: "Password",
                contentPadding: EdgeInsets.all(5),
                border: InputBorder.none

            )
        ),

        MaterialButton(
          minWidth: 350,
          onPressed: () {},
          textColor: Colors.white,
          child:

          Text('Register', style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Colors.pinkAccent)
          ),
          color: Colors.pinkAccent,

        ),
])
       
);
  }

  void showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(''),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
               // Image.asset("assets/images/tick.jpg"),
                //Text('This is a demo alert dialog.'),
                Text('Enter all details'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path = new Path();
    path.lineTo(0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}