import 'package:flutter/material.dart';
import 'package:healthcare_app/createaccount.dart';
import 'package:healthcare_app/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print(" 1st createState()");
    return LoginPageState();
  }

}

class LoginPageState extends State{
  final emailController= TextEditingController();
  final passwordController=TextEditingController();
  bool newuser;
  SharedPreferences logindata;
  bool checkValue = false;
  String user ="megha@gmail.com";
  String pass="megha@123";

  @override
  void initState() {
    print("2nd state");
    super.initState();
    check_if_already_login();
  }

  void didChangeDependencies(){
    print("3rd state");
    super.didChangeDependencies();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);

    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => HomePage()));
    }
    else{

    }
  }
  bool checkingdata() {
    if (user.length !=0 && pass.length != 0) {
      return true;
    } else {
      return false;
    }
  }

  bool rememberMe = false;

  void _onRememberMeChanged(bool newValue) => setState(() {
    rememberMe = newValue;

    if (rememberMe) {
      logindata.setString('email', "megha@gmail.com");
      logindata.setString('password', "megha@123");
    } else {
      // TODO: Forget the user
    }
  });

  @override
  void didUpdateWidget(LoginPage loginPage) {
    print("5th state");
    // Clean up the controller when the widget is disposed.
    super.didUpdateWidget(loginPage);
  }
  @override
  void diactivate() {
    print("7thth state");
    super.deactivate();
  }
  @override
  void dispose() {
    print("8th state");
    // Clean up the controller when the widget is disposed.
   emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  Fluttertoast flutterToast;

  void showInSnackBar(String value) {
    Scaffold.of(context).showSnackBar(new SnackBar(
        content: new Text(value)
    ));
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

print("4th state");
    return Scaffold(

      body:Builder(
      builder:(context)=>
      ListView(
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
                              border: InputBorder.none

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


                            ),
                         ),


                                        MaterialButton(

                                          minWidth: 350,
                                          onPressed: ()  {
                                                          setState(()  {
                                                            print("6th state");
                                                            if(emailController.text=="megha@gmail.com" && passwordController.text=="megha@123") {
                                                          print("success");
                                                          logindata.setBool('login', false);
                                                          logindata.setString('email', this.emailController.text);
                                                          logindata.setString('password', this.passwordController.text);
                                                          Fluttertoast.showToast(
                                                              msg: "Login Successful",
                                                              backgroundColor: Colors.black,
                                                              textColor: Colors.white);
                                                          Navigator.push(
                                                          context,
                                                          MaterialPageRoute(builder: (context) => HomePage()),
                                                          );
                                                          }
                                                          else{
                                                              final snackBar = SnackBar(
                                                                content: Text('Entered Details Are Wrong'),
                                                                action: SnackBarAction(
                                                                  label: 'Hide',
                                                                  onPressed: () {},
                                                                ),
                                                              );

                                                              Scaffold.of(context).showSnackBar(snackBar);
                                                          print("false");
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


    // new CheckboxListTile(
    // value: rememberMe,
    // title: new Text("Remember me"),
    // controlAffinity: ListTileControlAffinity.leading,
    // onChanged: _onRememberMeChanged
    // ),

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
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>CreateAccount()));
                  },
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
      )
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