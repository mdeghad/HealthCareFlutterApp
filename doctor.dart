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

    // decoration: BoxDecoration(
    //     gradient: LinearGradient(
    //        begin: Alignment.topRight,
    //        end: Alignment.bottomLeft,
    //         stops: [0.5, 0.5, 0.3, 1],
    //         colors: [Colors.pinkAccent, Colors.white,Colors.indigo,Colors.pinkAccent
    //         ])
    // ),
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

// class BezierClipper extends CustomClipper<Path>{
//
//   final int state;
//   BezierClipper(this.state);
//
//   Path _getInitialClip(Size size) {
//     Path path = Path();
//     final double _xScaling = size.width / 414;
//     final double _yScaling = size.height / 363.15;
//     path.lineTo(-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling);
//     path.cubicTo(-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling,23.461000000000002 * _xScaling,363.15099999999995 * _yScaling,71.553 * _xScaling,363.15099999999995 * _yScaling,);
//     path.cubicTo(119.645 * _xScaling,363.15099999999995 * _yScaling,142.21699999999998 * _xScaling,300.186 * _yScaling,203.29500000000002 * _xScaling,307.21 * _yScaling,);
//     path.cubicTo(264.373 * _xScaling,314.234 * _yScaling,282.666 * _xScaling,333.47299999999996 * _yScaling,338.408 * _xScaling,333.47299999999996 * _yScaling,);
//     path.cubicTo(394.15000000000003 * _xScaling,333.47299999999996 * _yScaling,413.99600000000004 * _xScaling,254.199 * _yScaling,413.99600000000004 * _xScaling,254.199 * _yScaling,);
//     path.cubicTo(413.99600000000004 * _xScaling,254.199 * _yScaling,413.99600000000004 * _xScaling,0 * _yScaling,413.99600000000004 * _xScaling,0 * _yScaling,);
//     path.cubicTo(413.99600000000004 * _xScaling,0 * _yScaling,-0.003999999999976467 * _xScaling,0 * _yScaling,-0.003999999999976467 * _xScaling,0 * _yScaling,);
//     path.cubicTo(-0.003999999999976467 * _xScaling,0 * _yScaling,-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling,-0.003999999999997783 * _xScaling,341.78499999999997 * _yScaling,);
//     return path;
//   }
//
//   Path _getFinalClip(Size size) {
//     Path path = Path();
//     final double _xScaling = size.width / 414;
//     final double _yScaling = size.height / 301.69;
//     path.lineTo(-0.003999999999997783 * _xScaling,217.841 * _yScaling);
//     path.cubicTo(-0.003999999999997783 * _xScaling,217.841 * _yScaling,19.14 * _xScaling,265.91999999999996 * _yScaling,67.233 * _xScaling,265.91999999999996 * _yScaling,);
//     path.cubicTo(115.326 * _xScaling,265.91999999999996 * _yScaling,112.752 * _xScaling,234.611 * _yScaling,173.83299999999997 * _xScaling,241.635 * _yScaling,);
//     path.cubicTo(234.914 * _xScaling,248.659 * _yScaling,272.866 * _xScaling,301.691 * _yScaling,328.608 * _xScaling,301.691 * _yScaling,);
//     path.cubicTo(384.34999999999997 * _xScaling,301.691 * _yScaling,413.99600000000004 * _xScaling,201.977 * _yScaling,413.99600000000004 * _xScaling,201.977 * _yScaling,);
//     path.cubicTo(413.99600000000004 * _xScaling,201.977 * _yScaling,413.99600000000004 * _xScaling,0 * _yScaling,413.99600000000004 * _xScaling,0 * _yScaling,);
//     path.cubicTo(413.99600000000004 * _xScaling,0 * _yScaling,-0.003999999999976467 * _xScaling,0 * _yScaling,-0.003999999999976467 * _xScaling,0 * _yScaling,);
//     path.cubicTo(-0.003999999999976467 * _xScaling,0 * _yScaling,-0.003999999999997783 * _xScaling,217.841 * _yScaling,-0.003999999999997783 * _xScaling,217.841 * _yScaling,);
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => true;
//
//   @override
//   Path getClip(Size size) => state == 1 ? _getInitialClip(size) : _getFinalClip(size);
// }