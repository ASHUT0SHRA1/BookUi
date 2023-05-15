import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),

              ),
                boxShadow: [
                  new BoxShadow(
                      color: Color(0x363f93).withOpacity(0.3),
                      offset: new Offset(-10.0,0.0),
                      blurRadius: 20.0,
                      spreadRadius: 4.0
                  ),
                ],

              color:  Color(0xFF363f93)
            ),
            child: Stack(
              children: [
                Positioned(top:80,left: 0, child: Container(
                  height: 100,
                  width: 290,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)
                    ),

                  ),
                ) ),
                Positioned(
                    top: 110,
                    left: 20,
                    child: Text('Your Books', style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF363f93)
                ),)),


              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            height: 230,
            child: Stack(
              children: [
                Positioned(top: 30,
                    left: 20,
                    child: Material(
                    child: Container(
                      height: 180,
                      width: 350,
                      decoration: BoxDecoration(color:
                      Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                          boxShadow: [
                            new BoxShadow(
                                color: Color(0x363f93).withOpacity(0.3),

                                blurRadius: 20.0,
                                spreadRadius: 8.0
                            ),
                          ]
                      ),
                    ),
                )),
                Positioned(
                    top: 0,
                    left: 30,
                    child: Card(
                      elevation: 10.0,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder
                        (
                        borderRadius: BorderRadius.circular(15.0),
                      ),

                      child: Container(
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage
                            (
                            fit: BoxFit.fill,
                            image: AssetImage("assets/mars.png")
                          ),

                        ),
                      ),

                ),),
                Positioned(
                    top: 60,
                    left: 210,
                    child: Container(
                      height: 150,
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mars', style: TextStyle(fontSize: 30, color: Color(0xff363f93) , fontWeight: FontWeight.bold),),
                      Text('Ashutosh Rai', style: TextStyle(fontSize: 16, color: Colors.grey ),),
                      Divider(color: Colors.black,),
                      Text('Will there be Life on Mars', style: TextStyle(fontSize: 15, color: Color(0xff363f93) ),)


                    ],
                  ),
                ))
              ],
            ),
          ),
          Expanded(
            child : MediaQuery.removePadding(context: context,
            removeTop: true,
            child:
                ListView(
                children: [
                Container(
                margin: const EdgeInsets.only(
                bottom: 10,top: 25),
            height: 200,
            padding: const EdgeInsets.only(left: 20 , right: 20 , bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff363f93),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(80.0),
                  ),
                  boxShadow: [
                    new BoxShadow(
                        color: Color(0x363f93).withOpacity(0.3),
                        offset: new Offset(-10.0,0.0),
                        blurRadius: 20.0,
                        spreadRadius: 4.0
                    ),
                  ]
              ),
              padding: const EdgeInsets.only(
                  left: 32,
                  top: 50.0,
                  bottom: 50
              ),
              child: Column(
                children: [
                  Text('The best' , style: TextStyle(fontSize: 15
                      ,color: Colors.white),
                  ),
                  SizedBox(height: 10,),
                  Text('Your life starts here' , style: TextStyle(
                      fontSize: 22,color: Colors.white
                  ),)
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                bottom: 10,top: 25),
            height: 200,
            padding: const EdgeInsets.only(left: 20 , right: 20 , bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff363f93),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(80.0),
                  ),
                  boxShadow: [
                    new BoxShadow(
                        color: Color(0x363f93).withOpacity(0.3),
                        offset: new Offset(-10.0,0.0),
                        blurRadius: 20.0,
                        spreadRadius: 4.0
                    ),
                  ]
              ),
              padding: const EdgeInsets.only(
                  left: 32,
                  top: 50.0,
                  bottom: 50
              ),
              child: Column(
                children: [
                  Text('The best' , style: TextStyle(fontSize: 15
                      ,color: Colors.white),
                  ),
                  SizedBox(height: 10,),
                  Text('Your life starts here' , style: TextStyle(
                      fontSize: 22,color: Colors.white
                  ),)
                ],
              ),
            ),
          )
        ],
      ))

      )
          ],
      ),
    );
  }
}
