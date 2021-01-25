import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
 class AboutUs extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AboutUsState();
  }

 }

 class AboutUsState extends State{



   void launchCall() async{
     String phoneNumber="tel://9876543212";
     if(await canLaunch(phoneNumber)){
       await launch(phoneNumber);
     }
else{
  throw "cound not call $phoneNumber";
     }
   }

   void launchEmail() async{
     final Uri params = Uri(
       scheme: 'mailto',
       path: 'abc@example.com',
       query: 'subject=App Feedback&body=test',
     );
     var url = params.toString();
     if (await canLaunch(url)) {
       await launch(url);
     } else {
       throw 'Could not launch $url';
     }
   }

   void launchSms() async{
     String phoneNumer="sms://9876543212,";
     // +"sms://1232434,"+"sms://5675676";
     if(await canLaunch(phoneNumer)) {
       await launch(phoneNumer);
     }
else{
   throw "Could not lanuch $phoneNumer";

}
   }

   void readMore () async
   {
     String cmnyurl="http://www.skycliffit.com/";
     if(await canLaunch(cmnyurl)){
       await launch(cmnyurl);
     }
     else{
       throw "Could not launch $cmnyurl";
     }

   }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Scaffold(
 appBar: AppBar(
  title: Text("About Us"),
 ),
body: Container(
  decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.7, 0.7, 0.7, 1],
          colors: [Colors.lightBlueAccent, Colors.pinkAccent,
            Colors.lightBlueAccent, Colors.pinkAccent])
  ),
 child: Column(
  children: [
   Container(


    margin: const EdgeInsets.all(20),
    child: Image.asset("assets/images/logo.png",width: MediaQuery.of(context).size.width/2,height: MediaQuery.of(context).size.height/6,),

   ),
   Container(
    margin: const EdgeInsets.all(20),
    child: Text("About Us",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

   ),
   Container(
    margin: const EdgeInsets.all(20),
    child: Text(
     "Overweight and obesity is a major global public health challenge, and understanding the implications for "
         "healthcare systems is essential for policy planning. Past studies have typically found positive associations "
         "between obesity and healthcare utilization, but these studies have not taken into consideration "
         "that obesity is also associated with early mortality. "
         "We examined associations between body mass index (BMI, reported as kg/m2) and healthcare"
         " utilization with and without taking BMI-specific survival into consideration.",style: TextStyle(fontSize: 15),
   textAlign: TextAlign.justify ),
   ),
   Row(children: [
    Container(
     margin: const EdgeInsets.all(5),
     child:
     MaterialButton(
       onPressed: launchCall,
       textColor: Colors.white,
       shape: CircleBorder(
           side: BorderSide(color: Colors.blue)
       ),
       color: Colors.pink,
    child: Icon(Icons.call),

   ),
    ),

   Container(child:
   MaterialButton(
   onPressed: launchEmail,
   textColor: Colors.white,
   shape: CircleBorder(
   side: BorderSide(color: Colors.blue)
   ),
   color: Colors.pink,

    child: Icon(Icons.mail,),

   ),
    margin: const EdgeInsets.all(5),
   ),

   Container(
    margin: const EdgeInsets.all(5),
    child:
    MaterialButton(
    onPressed: launchSms ,
    textColor: Colors.white,
    shape: CircleBorder(
    side: BorderSide(color: Colors.blue)
    ),
    color: Colors.pink,
    child: Icon(Icons.message),

   ),
   ),

     Container(
       margin: const EdgeInsets.all(5),
       child:
       MaterialButton(
         onPressed: readMore ,
         textColor: Colors.white,
         shape: CircleBorder(
             side: BorderSide(color: Colors.blue)
         ),
         color: Colors.pink,
         child: Icon(Icons.read_more),

       ),
     )
  ],
 ),
]),

),
);

  }

 }