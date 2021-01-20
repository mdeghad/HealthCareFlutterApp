import 'package:flutter/material.dart';
import 'package:healthcare_app/homepage.dart';

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

      body: ListView(
        children: [

                      ClipPath(
                        clipper:WaveClipper(), //set our custom wave clipper
                          child: Image.network("https://png.pngtree.com/thumb_back/fw800/background/20190926/pngtree-pink-color-flower-background-image_317655.jpg"),
                        ),



                Text("Let's Get Started",style: TextStyle(color: Colors.pinkAccent,fontSize: 25,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),


                        TextField(

                            cursorColor: Colors.pinkAccent,
                            controller: emailController,
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.emailAddress,
                            decoration: new InputDecoration(
                              hintText: "Email",
                              contentPadding: EdgeInsets.all(5),

                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent),
                              ),
                            )
                        ),


                         TextField(
                             cursorColor: Colors.pinkAccent,
                           obscureText: true,
                             controller: passwordController,
                          decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(5),
                          border: InputBorder.none,
                          hintText: "Password",
                             fillColor: Colors.white,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent),

                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.pinkAccent),
                              ),
                            ),
                         ),


                                        MaterialButton(

                                          minWidth: 350,
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

                    textColor: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
    side: BorderSide(color: Colors.pinkAccent)
    ),
    color: Colors.pinkAccent,

    child:Text('Login', style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                  ),

          SizedBox(
            height: 5,
          ),

               FlatButton(
                    
               child: Text("Forgot Password?",style: TextStyle(fontSize: 15,color: Colors.pinkAccent),textAlign: TextAlign.center,),
                ),

          SizedBox(
            height: 5,
          ),

                MaterialButton(
                  minWidth: 350,
                  onPressed: () {},
                  textColor: Colors.white,
                  child:

        Text('New User?', style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
    side: BorderSide(color: Colors.pinkAccent)
    ),
    color: Colors.pinkAccent,

    ),


                Text('Or?', style: TextStyle(fontSize: 15,color: Colors.pinkAccent),textAlign: TextAlign.center,),
          SizedBox(
            height: 20,
          ),


                MaterialButton(
                  onPressed: () {},
                  textColor: Colors.white,

                  child:
                  ListTile(
                    title:Text('f', style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,),
                  ),
                  shape: CircleBorder(
                      side: BorderSide(color: Colors.blue)
                  ),
                  color: Colors.blue,),
                 ],
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