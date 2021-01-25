import 'package:flutter/material.dart';
import 'package:healthcare_app/bokksession.dart';

class BMICalculation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BMICalculationstate();
  }

}

class BMICalculationstate extends State<BMICalculation>{
  final heightController = TextEditingController();
  final weightController1 = TextEditingController();
  final resultController=TextEditingController();

  double result=0;
  var status="";

  void getData(){
    double height=double.parse(heightController.text)/100;
    double weight=double.parse(weightController1.text);
    double square=height*height;
    result=weight/square;



    print(result);
    showSnackBar(BuildContext buildContext){

    }
    {

    }
    setState(() {
      if(result<18.5) {
        status="underweight";
        // print( "UnderWeight");
      }
      else if(result<=25){
        status="Helthy weight";
        print("");
      }
      else if(result<=30){
        status="OverWeight";

      }
      else if(result>35){
        status="OverWeight";
      }
      return result;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(

      //backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
          title: Text("BMI Calculator"),
          backgroundColor: Colors.blue
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
        child:

    Column(

          children: <Widget>[

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Container(

                    // alignment: Alignment.center,
                    // margin: const EdgeInsets.all(7.0),
                   child: ClipPath(
                      clipper:WaveClipper(), //set our custom wave clipper
                      child: Image.asset("assets/images/logo.png",width: MediaQuery.of(context).size.width,),
                    ),
                   // child: Text("BMI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 80.0),),
                  ),

                ]),


              new TextField(
                    cursorColor: Colors.pinkAccent,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        border: InputBorder.none,
                    hintText:"Enter Your Weight in Kg"),
                controller: weightController1,
                style: TextStyle(color: Colors.black),
              ),

             new TextField(

                controller: heightController,
               keyboardType: TextInputType.number,

                style: TextStyle(color: Colors.black),
                decoration: new InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  hintText: 'Enter Your Height in Cm',
                  border: InputBorder.none,

                ),
              ),

            MaterialButton(
              minWidth: 350,
              onPressed: getData,
              textColor: Colors.white,
              child:
              Text('Calculate BMI', style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.pinkAccent)
              ),
              color: Colors.pinkAccent,

            ),

        MaterialButton(
          minWidth: 350,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BookSession()));
          },
          textColor: Colors.white,
          child:
          Text('Book Session', style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Colors.pinkAccent)
          ),
          color: Colors.pinkAccent,



            ),

            Text(result.toString(),style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
            Text("Your BMI is"+" "+status.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
          ]),
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