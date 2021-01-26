import 'package:flutter/material.dart';

class BookSession extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   //title: new Text('Developer Mode'),
      // ),
      body: new BookSession1(),
    );
  }
}

class BookSession1 extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BookSessionState();
  }

}

class BookSessionState extends State{

  void initState() {
    new Future<Null>.delayed(Duration.zero, () {
      Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("You are in book session page")),
      );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Scaffold(
        //backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text("Book Session"),
        ),
        body: ListView(
          children: <Widget>[

            Image.network("https://www.healthline.com/hlcmsresource/images/400x400_10_Yoga_Poses_That_Can_Improve_the_Health_of_your_Thyroid_Boat_Pose.gif"),
            Image.network("https://mk0tintlivebdds4josr.kinstacdn.com/wp-content/uploads/2020/07/tint_magazine_Barbra-Noh_sequencing.jpg"),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQHi4pVf1yrJSJxj2IHmLU2gsklyxinHbyIQ&usqp=CAU"),
            Image.network("https://www.verywellfit.com/thmb/VuU7c_mCD8wBE5MuH5Dz4QOS98Q=/2500x1667/filters:no_upscale():max_bytes(150000):strip_icc()/Verywell-11-3567193-StaffPose-685-598b67c7d963ac001117f2f5.jpg")
          ],
        ),

      );
  }

}