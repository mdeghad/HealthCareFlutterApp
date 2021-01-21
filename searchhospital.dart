import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:healthcare_app/doctorinformation.dart';
class SearchDoctor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return SerchDoctorState();
  }
}


class SerchDoctorState extends State{
 final searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
appBar: AppBar(),
      body: Column(
        children:[
          Text('Find your desired Doctor',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black)
            ),
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),

                hintText:"search"),
              ),
            ),

          ),

          Text("Categories",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
         child: Row(
            children: [
              Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:<Widget>[
                    Container(
                      child: Card(
                          elevation: 3,
                          color: Colors.white,
                          child: Column(
                            children: [
                              FractionalTranslation(
                                translation: Offset(0.5, -0.3),
                                child: Align(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset("assets/images/teeth.jpg"),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: const EdgeInsets.only(left: 0),
                                  ),

                                ),
                              ),

                              Container(
                                child: Text("Dental \nSurgeon",style: TextStyle(color: Colors.red),),
                                padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                                margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                              ),
                            ],
                          )
                      ),
                      padding: const EdgeInsets.only(left: 10),
                    ),
// margin: const EdgeInsets.all(20),
                    Container(
                      child: Card(
                          elevation: 3,
                          color: Colors.white,
                          child: Column(
                            children: [
                              FractionalTranslation(
                                translation: Offset(0.5, -0.3),
                                child: Align(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.network("https://media.istockphoto.com/vectors/anatomical-heart-isolated-muscular-organ-in-human-vector-id625147262"),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: const EdgeInsets.only(left: 0),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text("Heart Sugeon",style: TextStyle(color: Colors.red),),
                                padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                                margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                              ),
                            ],
                          )
                      ),
                      padding: const EdgeInsets.only(left: 10),
                    ),

                    Container(
                      child: Card(
                        elevation: 3,
                        color: Colors.white,
                        child: Column(
                          children: [
                            FractionalTranslation(
                              translation: Offset(0.5, -0.3),
                              child: Align(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.network("https://visioneyeinstitute.com.au/wp-content/uploads/laser-eye-safety.jpg"),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: const EdgeInsets.only(left: 0),
                                ),

                              ),
                            ),

                            Container(
                              child: Text("Eye Speciality",style: TextStyle(color: Colors.red),),
                              padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                              margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
// color: Colors.black54,
// height: 100,
// width: 70,
// margin: const EdgeInsets.all(20),
                            ),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.only(left: 10),
                    ),

                    Container(
                      child: Card(
                        elevation: 3,
                        color: Colors.white,
                        child: Column(
                          children: [
                            FractionalTranslation(
                              translation: Offset(0.5, -0.3),
                              child: Align(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.network("https://cdn5.vectorstock.com/i/thumb-large/53/29/heart-cardiology-symbol-logo-icon-vector-3145329.jpg"),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: const EdgeInsets.only(left: 0),
                                ),
                              ),
                            ),
                            Container(
                              child: Text("Cardiology Sugeon",style: TextStyle(color: Colors.red),),
                              padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                              margin: const EdgeInsets.only(top: 0, right: 0, left: 0),

                            ),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.only(left: 10),
                    ),
                  ],
                ),
                width: 350,
                height: 90,
              )
//Text("Top Doctors",textAlign: TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30))
            ],
          ),
          ),
Container(
  margin:const EdgeInsets.only(top: 10),
    child:
          Text("Top Doctors",textAlign:TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
),

      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorInformation()));
        },
        child:
          Container(
            margin: const EdgeInsets.all(10),
            child: ListTile(
            tileColor: Colors.blue,
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/doctor.jpg"), // no matter how big it is, it won't overflow
            ),
            title: Text("Dr.Stella Kane"),
            subtitle: Text("Heart Surgeon-Flower Hospitals"),
          ),
          ),
      ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorInformation()));
            },
            child:
          Container(margin:const EdgeInsets.all(10),
          child:
          ListTile(
            tileColor: Colors.orange,
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/doctor.jpg"), // no matter how big it is, it won't overflow
            ),
            title: Text("Dr.Jhon"),
            subtitle: Text("Dental Surgeon- Flower Hospitals"),
          ),
          ),
          ),

      GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorInformation()));
        },
        child:
          Container(
            margin: const EdgeInsets.all(10),
            child:
          ListTile(

            tileColor: Colors.indigoAccent,
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/doctor.jpg"), // no matter how big it is, it won't overflow
            ),
            title: Text("Dr.Smith"),
            subtitle: Text("Eye Specialist-Flower Hospitals"),
          ),
          ),
      ),


        ],
      ),
    );
  }
}




