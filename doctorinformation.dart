import 'package:flutter/material.dart';
class DoctorInformation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return DoctorInformationState();
  }

}

class DoctorInformationState extends State{
  @override
  Widget build(BuildContext context) {

    return new Stack(


        children: <Widget>[
        // The containers in the background
        new Column(
        children: <Widget>[
        new Container(
        height: MediaQuery
            .of(context)
        .size
        .height / 2,
    child: Image.asset("assets/images/doctor.jpg",height: MediaQuery.of(context).size.height*4,),
    //color: Colors.blue,
    ),
    new Container(
    height: MediaQuery
        .of(context)
        .size
        .height / 2,
    color: Colors.white,
    )
    ],
    ),

    new Center(child:
    new Container(

    alignment: Alignment.topCenter,
    padding: new EdgeInsets.only(
    top: MediaQuery
        .of(context)
        .size
        .height / 4,
    right: 10.0,
    left: 10.0),
    child: new Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery
        .of(context)
        .size
        .width,
    child: new Card(
        shape: RoundedRectangleBorder(
          //color: Color(0XFFBBDEFB),
          borderRadius: BorderRadius.circular(30.0),
        ),
    color: Colors.white,
   // elevation: 4.0,

    child:ListView(

  children: [
     Column(children:[


Container(

  // decoration: BoxDecoration(
  //
  //     borderRadius: BorderRadius.circular(30)
  // ),
    child: Column(
    children: [

Container(child:
      ListTile(
        leading: Image.asset("assets/images/doctor.jpg",height: MediaQuery.of(context).size.height*0.2,width:MediaQuery.of(context).size.width*0.2 ,),
        //trailing: Icon(Icons.call),
        title: Text("Dr. Stella Kane",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        subtitle: Text("Heart Surgeon-Flower Hospital"),

      ),
),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
    Container(
   // margin: const EdgeInsets.all(5),
    child:
    MaterialButton(
    onPressed: (){},
    //textColor: Colors.white,
    shape: CircleBorder(
    side: BorderSide(color: Colors.white)
    ),
    //color: Colors.pink,
    child: Icon(Icons.call,color: Colors.blue,),

    ),
    ),

    Container(child:
    MaterialButton(
    onPressed: (){},
    //textColor: Colors.white,
    shape: CircleBorder(
    side: BorderSide(color: Colors.white)
    ),
    //color: Colors.pink,

    child: Icon(Icons.mail,color: Colors.deepOrangeAccent,),

    ),
   // margin: const EdgeInsets.all(5),
    ),

    Container(
   // margin: const EdgeInsets.all(5),
    child:
    MaterialButton(
    onPressed:() {},
    //textColor: Colors.white,
    shape: CircleBorder(
    side: BorderSide(color: Colors.white)
    ),
    //color: Colors.pink,
    child: Icon(Icons.video_call,color: Colors.redAccent,),

    ),
    ),
    ]

),
      // ListTile(
      //   trailing: Icon(Icons.mail),
      // ),
      ListTile(
          leading:Text("About Doctor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
      ),
      ListTile(

        //leading: Image.asset("assets/images/doctor.jpg",height: MediaQuery.of(context).size.height*0.2,width:MediaQuery.of(context).size.height*0.2 ,),

        subtitle: Text("The Cardiothoracic Surgeon (CTS) is the official journal of the Egyptian Society of Cardiothoracic Surgery. "
            "It is a peer-reviewed, open access journal which publishes high-quality original scientific research documenting progress in cardiac and thoracic surgery.",
          style: TextStyle(color: Colors.black,letterSpacing: 0.5,),textAlign: TextAlign.justify,),

      ),







     ListTile(
        leading:Text("UpComing Schedules",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
       )
       ),
Container(
  child: Card(
    elevation: 20,
    child:Container(child:
    ListTile(
      leading: Image.network("https://img.favpng.com/18/11/3/dyersburg-calendar-v7e-6l5-icon-png-favpng-fvgYGKfcSZcx3buZDnzer3uhw.jpg"),
      title: Text("Consultation",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      subtitle: Text("Monday 9am - 12pm"),
    ),
      height: MediaQuery.of(context).size.height*0.1,
      width:MediaQuery.of(context).size.width,

    decoration: BoxDecoration(
        color: Color(0XFFFFEBE3),
        borderRadius: BorderRadius.circular(15)
    ),
  ),
)
        ),
       Container(
           child: Card(child:
           Container(child:
           ListTile(
             leading: Image.network("https://img.favpng.com/18/11/3/dyersburg-calendar-v7e-6l5-icon-png-favpng-fvgYGKfcSZcx3buZDnzer3uhw.jpg"),
             title: Text("Consultation",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             subtitle: Text("Tuesday 9am - 12pm"),
           ),
             height: MediaQuery.of(context).size.height*0.1,
             width:MediaQuery.of(context).size.width,

             decoration: BoxDecoration(
                 color: Color(0XFFFCE4EC),
                 borderRadius: BorderRadius.circular(15)
             ),
           ),
           )
       ),
       Container(

           child: Card(child:
           Container(child:
          ListTile(
            leading: Image.network("https://img.favpng.com/18/11/3/dyersburg-calendar-v7e-6l5-icon-png-favpng-fvgYGKfcSZcx3buZDnzer3uhw.jpg"),
            title: Text("Consultation",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Wednsday 9am - 12pm"),
          ),
             height: MediaQuery.of(context).size.height*0.1,
             width:MediaQuery.of(context).size.width,

             decoration: BoxDecoration(

                 borderRadius: BorderRadius.circular(15),
               color: Color(0XFFFFEBE3),
             ),

           ),
           )
       ),
]),
),


     ]),

]
    )

    )
    )
    )
    )
    ]);
  }

}

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path = new Path();
    path.lineTo(0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 10, size.height - 10.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 2.24), size.height - 95);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 6);
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