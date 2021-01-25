import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget {
  @override
  Widget build(BuildContext context) {

  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StackDemoState();
  }
}
  class StackDemoState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              color: Colors.blue,
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
        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter
        new Center(child:
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery
                  .of(context)
                  .size
                  .height / 4,
              right: 20.0,
              left: 20.0),
          child: new Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            child: new Card(
              color: Colors.white,
              elevation: 4.0,
              child:ListView(children:[Container(child:
              ListTile(
                leading: Image.asset("assets/images/doctor.jpg",height: MediaQuery.of(context).size.height*0.2,width:MediaQuery.of(context).size.width*0.2 ,),
                trailing: Icon(Icons.call),
                title: Text("Dr. Stella Kane",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                subtitle: Text("Heart Surgeon-Flower Hospital"),

              ),
    ),
                ListTile(
                  trailing: Icon(Icons.mail),
                ),
                ListTile(
                    leading:Text("About Doctor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                ),

                ListTile(

                  //leading: Image.asset("assets/images/doctor.jpg",height: MediaQuery.of(context).size.height*0.2,width:MediaQuery.of(context).size.height*0.2 ,),

                  subtitle: Text("The Cardiothoracic Surgeon (CTS) is the official journal of the Egyptian Society of Cardiothoracic Surgery. "
                      "It is a peer-reviewed, open access journal which publishes high-quality original scientific research documenting progress in cardiac and thoracic surgery.",
                    style: TextStyle(color: Colors.black,letterSpacing: 0.5),),

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
])
              ),
            ),
          ),
        )

      ],
    );
  }

  }

