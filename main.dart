import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:healthcare_app/createaccount.dart';
import 'package:healthcare_app/homepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // title: 'Flutter Demo',

      home: MyHomePage(title:""),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FocusNode myFocusNode = new FocusNode();
  final emailController= TextEditingController();
  final passwordController=TextEditingController();
    var emailId;
    var password;
  var status="";
  bool _validate = false;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
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
                Image.asset("assets/images/wrongmark.png",height: 60,),
                Text('Credentials are wrong!',style: TextStyle(color: Colors.red),textAlign: TextAlign.left,),

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

    return Scaffold(

      bottomSheet: Text("Terms & Conditions",style: TextStyle(fontSize: 20),),
      appBar: AppBar(
        backgroundColor: Colors.black,

      ),
      body: Container(



          decoration: BoxDecoration(
          gradient: LinearGradient(
         begin: Alignment.topRight,
          end: Alignment.bottomLeft,
              stops: [0.7, 0.7, 0.7, 1],
          colors: [Colors.black, Colors.grey,
            Colors.grey, Colors.white])
    ),

        child: ListView(

          children: <Widget>[
          // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIY0Q6PRlfmEebCtCfwY6-MAfM7ra5Qeb-7w&usqp=CAU"),

Image.asset("assets/images/drp.png",height: 50),


 Container(
 padding: const EdgeInsets.all(10.0),
  child: Text("LOGIN",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.left),

),

            Container(
             // padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              child: Text("Email",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.left),

            ),
        ListTile(

              title: TextField(
              cursorColor: Colors.white,
                controller: emailController,
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                    fillColor: Colors.white,
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white,),

                    ),
                  //  hintText:( "Enter your Email Id"),
                   // errorText: _validate? 'Enter Correct email':null,
                  )
              ),

          ),
            // focusColor: Colors.white,


            Container(
              // padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              child: Text("Password",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.left),

            ),
            Container(
              margin: const EdgeInsets.all(10.0),
             // padding: const EdgeInsets.all(10),
           child: ListTile(
              //leading: const Icon(Icons.visibility_sharp),

            // tileColor: Colors.white,
              title: TextField(

                  controller: passwordController,

                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(color: Colors.white),
                  decoration: new InputDecoration(
                  suffixIcon: Icon(Icons.visibility),
                    fillColor: Colors.white,
                    focusedBorder:OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white,),
                      // borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                autofocus: false,
                obscureText: true,
              ),
            ),
            ),

            Container(
              child: Text("Forgot Password?",textAlign: TextAlign.right,style: TextStyle(color: Colors.white),),
            ),

         Column( children:<Widget> [

           RaisedButton(

             padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
             shape: RoundedRectangleBorder(side: BorderSide(
                 color: Colors.white,
                 width: 1,
                 style: BorderStyle.solid
             ), ),
color: Colors.black,
              onPressed: () {
                setState(() {
                  if(emailController.text=="megha@gmail.com" && passwordController.text=="megha@123") {
                    print("success");
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()),
    );
                  }
                    else{
                      _showMyDialog();
                      print("flase");
                  }
                  });

                },

              child:  Text("Login",style: TextStyle(color: Colors.white),),

            ),
          // ),

]),

          ],



        ),

      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>CreateAccount()));

        },
        child: Icon(Icons.add),

      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
