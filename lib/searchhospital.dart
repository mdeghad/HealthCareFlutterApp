import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/rendering.dart';
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
appBar: AppBar(
  title: Text("Search Doctor",),
  backgroundColor: Colors.pinkAccent,
),
      body: ListView(
        children:[
          Container(
           // margin: const EdgeInsets.all(20),
            child:ListTile(
              leading: Icon(Icons.format_list_numbered,color: Colors.pinkAccent,),
              trailing: Icon(Icons.account_circle_outlined,color: Colors.pinkAccent,),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
          child:Text('Find Your Desired Doctor',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
          ),

          Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black)
            ),

            child: ListTile(
              title: TextField(
showCursor: false,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search,color: Colors.pinkAccent,),
                    border: InputBorder.none,


                hintText:"Search for doctors"),
              ),
            ),
            height: 40,
          ),
Container(child:

          Text("Categories",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ), margin: const EdgeInsets.all(15),
),
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
                                translation: Offset(0.5, 0),
                                child: Align(
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                   child: Image.network("https://i.pinimg.com/originals/16/37/c6/1637c6a53c961e70f1c6c83620f4e3d4.jpg",scale: 10.0,),
                                    decoration: BoxDecoration(
                                       color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: const EdgeInsets.only(left: 0),
                                  ),

                                ),
                              ),

                              Container(
                                child: Text("Dental \n Surgeon",style: TextStyle(color: Colors.pinkAccent),),
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
                                translation: Offset(0.5,0),
                                child: Align(
                                  child: Container(

                                    height: 50,
                                    width: 50,
                                    child: Image.network("https://thumbor.kenhub.com/nzadGE09BTcROtoXg73L-VCVrJQ=/fit-in/800x1600/filters:watermark(/images/logo_url.png,-10,-10,0):background_color(FFFFFF):format(jpeg)/images/library/11110/Heart_Thumbnail.png",scale: 10.0,),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    padding: const EdgeInsets.only(left: 0),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text("Heart \n Sugeon",style: TextStyle(color: Colors.pinkAccent),),
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
                              translation: Offset(0.5,0),
                              child: Align(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMmSpSDcjUh4OGykNpMLE4o1d665TkGfukgA&usqp=CAU",scale: 10.0,),
                                  decoration: BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: const EdgeInsets.only(left: 0),
                                ),

                              ),
                            ),

                            Container(
                              child: Text("Eye \n Speciality",style: TextStyle(color: Colors.pinkAccent),),
                              padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                              margin: const EdgeInsets.only(top: 0, right: 0, left: 0),

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
                              translation: Offset(0.5,0),
                              child: Align(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.network("https://cdn5.vectorstock.com/i/thumb-large/53/29/heart-cardiology-symbol-logo-icon-vector-3145329.jpg",scale: 10.0,height: 10,width: 5,),
                                  decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  padding: const EdgeInsets.only(left: 0),
                                ),
                              ),
                            ),
                            Container(
                              child: Text("Cardiology \n Sugeon",style: TextStyle(color: Colors.pinkAccent),),
                              padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                              margin: const EdgeInsets.only(top: 0, right: 0, left: 0),

                            ),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.only(left: 20),
                    ),
                  ],
                ),
                width: 392,
                height: 100,
              )

            ],
          ),
          ),
Container(
  margin:const EdgeInsets.only(top: 20),
    child:
          Text("Top Doctors",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign: TextAlign.center,),
),


          GestureDetector(
          onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorInformation()));
    },
        child:  Container(
          margin: const EdgeInsets.only(top: 10,right: 10,left: 10),
          child:Card(child:
          Container(
            child: ListTile(

            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/doctor.jpg"), // no matter how big it is, it won't overflow
            ),
            title: Text("Dr.Stella Kane"),
            subtitle: Text("Heart Surgeon-Flower Hospitals"),
          ),
            height: MediaQuery.of(context).size.height*0.1,
            width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(

              color: Colors.blue,
          ),
      ),
        )
          ),
          ),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorInformation()));
            },
            child:
          Container(
            margin: const EdgeInsets.only(top: 10,right: 10,left: 10),
          child:Card(child:Container(child:
          ListTile(

            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/doctor.jpg"), // no matter how big it is, it won't overflow
            ),

            title: Text("Dr.Jhon"),
            subtitle: Text("Dental Surgeon- Flower Hospitals"),
          ),
            height: MediaQuery.of(context).size.height*0.1,
            width:MediaQuery.of(context).size.width,
            decoration: BoxDecoration(

color: Colors.orange,
            ),
          ),
          ),
          )
              ),

    GestureDetector(

    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorInformation()));
    },
        child:  Container(
            margin: const EdgeInsets.only(top: 10,right: 10,left: 10),
            child: Card(child:
              Container(child:
              ListTile(

                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/doctor.jpg"), // no matter how big it is, it won't overflow
                ),
                title: Text("Dr.Smith"),
                subtitle: Text("Eye Specialist-Flower Hospitals"),
              ),
                height: MediaQuery.of(context).size.height*0.1,
                width:MediaQuery.of(context).size.width,

                decoration: BoxDecoration(


                  color: Colors.indigoAccent
                ),

              ),
              )
          ),
              ),
]),


    );
  }
}




