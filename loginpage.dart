import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }

}

class LoginPageState extends State{
  final emailController= TextEditingController();
  final passwordController=TextEditingController();


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

                Text('Credentials are wrong!',style: TextStyle(color: Colors.red),),
                Image.asset("assets/images/wrongmark.png"),
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
    // TODO: implement build
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black,
        //title: Text(widget.title),
      ),

      body: Container(

      
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [0.7, 0.7, 0.7, 1],
                colors: [Colors.black, Colors.black,
                  Colors.grey, Colors.white])
        ),

      
child: Row(children: <Widget>[
  Container(

    margin: const EdgeInsets.all(10.0),
    child: Text("Email",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.left),

  ),

  TextField(
      cursorColor: Colors.white,
      controller: emailController,
      style: TextStyle(color: Colors.white),
      keyboardType: TextInputType.emailAddress,
      // decoration: new InputDecoration(
      //   fillColor: Colors.white,
      //   focusedBorder:OutlineInputBorder(
      //     borderSide: const BorderSide(color: Colors.white,),
      //
      //   ),
      // )
  ),
],),
        
        
        
    )
    );
        }
}
