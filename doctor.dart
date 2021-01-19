import 'package:flutter/material.dart';

class SeeDoctor extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
 return SeeDoctorState();
  }

}

class SeeDoctorState extends State{

  int state = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final double height = MediaQuery.of(context).size.height * 0.5;
return Scaffold(
  appBar: AppBar(
    title: Text("Doctors List"),
  ),
  body: Container(
    child: Column(

      children: [
Container(
  child: Stack(children: <Widget>[ //stack overlaps widgets
    Opacity( //semi red clippath with more height and with 0.5 opacity
    opacity: 0.5,
    child: ClipPath(
      clipper:WaveClipper(), //set our custom wave clipper
      child:Container(
        color:Colors.blue,
        height:200,
      ),
    ),
  ),
]),
),

    Container(

      padding: const EdgeInsets.all(30),
    child: Text('Choose The Doctor You Want',
      style: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  Container(
    child: Text('Lorem ipsum dolor amet,consecteture adipiscing inet deli',
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  ),



          RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child:
                const Text('Get Started', style: TextStyle(fontSize: 20)),
              ),
          )
]


),
),
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

