import 'package:flutter/material.dart';
import 'package:healthcare_app/bokksession.dart';

class BMICalculation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   //title: new Text('Developer Mode'),
      // ),
      body: new BMICalculation1(),
    );
  }
}

class BMICalculation1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BMICalculationstate();
  }

}

class BMICalculationstate extends State<BMICalculation1>{

  @override
  void initState() {
    new Future<Null>.delayed(Duration.zero, () {
      Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("You Are in BMI page")),
      );
    });
    super.initState();
  }

  final heightController = TextEditingController();
  final weightController1 = TextEditingController();
  final resultController=TextEditingController();

  double result=0;
  var status="";

  void getData() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController1.text);
    double square = height * height;
    result = weight / square;

    setState(() {
      if (result < 18.5) {
        status = "underweight";
        // print( "UnderWeight");
      }
      else if (result <= 25) {
        status = "Helthy weight";
        print("");
      }
      else if (result <= 30) {
        status = "OverWeight";
      }
      else if (result > 35) {
        status = "OverWeight";
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
          backgroundColor: Colors.pinkAccent
      ),

      body: Container(
        child:

    Column(

          children: <Widget>[

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Container(

                      child: Image.asset("assets/images/logo.png",width: MediaQuery.of(context).size.width,),

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

            Text(result.toString(),style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
            Text("Your BMI is"+" "+status.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
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