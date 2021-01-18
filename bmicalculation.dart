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
          backgroundColor: Colors.indigo
      ),

      body: Column(

          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(7.0),
                    width: 200,
                    height:80,
                    child: Text("BMI",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 80.0),),
                  ),

                ]),

            new Container(
              margin: const EdgeInsets.all(10.0),

              decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                border: new Border.all(
                  color: Colors.indigo,
                  width: 10.0,

                ),

              ),
              child: new TextField(

                controller: weightController1,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
                decoration: new InputDecoration(
                  hintText: 'Enter a weight in kg',
                  border: InputBorder.none,

                ),
              ),
            ),
            new Container(
              margin: const EdgeInsets.all(10.0),

              decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                border: new Border.all(
                  color: Colors.indigo,
                  width: 10.0,

                ),

              ),
              child: new TextField(

                controller: heightController,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
                decoration: new InputDecoration(
                  hintText: 'Enter a height in cm',
                  border: InputBorder.none,

                ),
              ),
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.indigo)
              ),
              onPressed: getData,
              color: Colors.indigo,
              child:  Text("Calculate BMI"),

            ),

            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.indigo)
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookSession()),
                );
              },
              color: Colors.indigo,
              child:  Text("Book Session"),

            ),

            Text(result.toString(),style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            Text("Your BMI is"+" "+status.toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ]),
    );
  }

}