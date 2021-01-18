import 'package:flutter/material.dart';
import 'package:healthcare_app/homepage.dart';

class CreateAccount extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return CreateAccountSate();
  }

}
class CreateAccountSate extends State {
  final fnameController=TextEditingController();
  final lnameController=TextEditingController();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  String fname,lname,email,password;




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
                Image.asset("assets/images/tick.jpg"),
                //Text('This is a demo alert dialog.'),
                Text('Account Created Successfully'),
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
    title: Text("Create Account",textAlign: TextAlign.center,),

  ),
  body: Container(

    decoration: BoxDecoration(
        gradient: LinearGradient(
            // begin: Alignment.topRight,
            // end: Alignment.bottomLeft,
          //  stops: [0.7, 0.7, 0.7, 1],
            colors: [Colors.pinkAccent, Colors.blue,
             ])
    ),
    child: ListView(

      children:<Widget> [

        Image.asset("assets/images/drp.png",height: 50),
        Container(
          margin: const EdgeInsets.fromLTRB(40,10,40,10),

          //margin: const EdgeInsets.fromLTRB(50,10,10,30),
         // color: Colors.red,
          child: Text("Register",style: TextStyle(fontSize: 40,color: Colors.black,fontWeight:FontWeight.bold),textAlign:TextAlign.left,),

       width: 40, ),
        Container(
          // padding: const EdgeInsets.all(10.0),
          //margin: const EdgeInsets.all(10.0),
          child: Text("FirstName",style: TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.left),

        ),
        Container(
         // color: Colors.indigo,
          margin: const EdgeInsets.fromLTRB(10,10,10,10),
          child:ListTile(

          //leading: const Icon(Icons.account_circle),
          title: TextField(
              controller: fnameController,

            //  textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
              decoration: new InputDecoration(

                //hintText: 'Enter Your FirstName',
              )
          ),

        ),
        ),

        Container(
          // padding: const EdgeInsets.all(10.0),
          //margin: const EdgeInsets.all(10.0),
          child: Text("LastName",style: TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.left),

        ),
Container(
  //color:Colors.indigo,
  margin: const EdgeInsets.fromLTRB(10,10,10,10),
  child:
        ListTile(

          //leading: const Icon(Icons.assignment_ind_rounded),
          title: TextField(
              controller:lnameController,
            //  textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
              decoration: new InputDecoration(
                //hintText: 'Enter your Lastname',
              )
          ),

        ),
),
        Container(
          // padding: const EdgeInsets.all(10.0),
          //margin: const EdgeInsets.all(10.0),
          child: Text("Email",style: TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.left),

        ),
        Container(
         // color:Colors.indigo,
          margin: const EdgeInsets.fromLTRB(10,10,10,10),
          child:
        ListTile(

         //leading: const Icon(Icons.mail),
          title: TextField(
              controller: emailController,
              //textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              decoration: new InputDecoration(
               // hintText: 'Enter your email',
              )
          ),

        ),
        ),

        Container(
          // padding: const EdgeInsets.all(10.0),
          //margin: const EdgeInsets.all(10.0),
          child: Text("Password",style: TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.left),

        ),
        Container(
         // color:Colors.indigo,
          margin: const EdgeInsets.fromLTRB(10,10,10,10),
            child:

        ListTile(

         // leading: const Icon(Icons.visibility),
          title: TextField(

              controller: passwordController,
              autofocus: false,
              obscureText: true,
              cursorColor: Colors.white,
              //textAlign: TextAlign.center,
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(color: Colors.black),
              decoration: new InputDecoration(
              suffixIcon: Icon(Icons.visibility),

              )
          ),

        ),
        ),



Column(children:<Widget>
    [

       RaisedButton(
       //  color: Colors.black,
         shape: RoundedRectangleBorder(side: BorderSide(
             color: Colors.black,
             width: 1,
             style: BorderStyle.solid
         ), ),
          onPressed:(){
            setState(() {
    fname = fnameController.text ;
    lname= lnameController.text ;
    email = emailController.text ;
    password=passwordController.text;


    // if(fnameController != '' || lnameController != '' || emailController != '' || passwordController!='') {
    //   _showMyDialog();
    //
    // }
   if(fnameController == '' && lnameController =='' &&  emailController == '' && passwordController=='')
    {
    showMyDialog();


    print('Text Field is empty, Please Fill All Data');

    }
   else{
     _showMyDialog();
     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
   }
    });
          },

          child:  Text("Create Account",style: TextStyle(color: Colors.black)),


      )
  ],
),

      ],
    ),

  ),
);
  }

  void showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(''),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
               // Image.asset("assets/images/tick.jpg"),
                //Text('This is a demo alert dialog.'),
                Text('Enter all details'),
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
}