
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
    )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text("LOCATIONS", style: TextStyle(color: Colors.black, fontSize: 25),),
        brightness: Brightness.light,
actions: <Widget>[
  Container(
    margin: EdgeInsets.only(right: 16, top: 8,),
    width: 50,
    child: CircleAvatar(
      backgroundImage: AssetImage('assets/profile.jpg'),
    ),
  ),
],

      ),

      body: SingleChildScrollView(

        child: Container(

          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[

                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child:  Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Featured", style: TextStyle(fontSize: 17),),
                        ),
                      )),

                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Center(
                          child: Text("Popular", style: TextStyle(fontSize: 17),),
                        ),
                      )),

                    AspectRatio(
                      aspectRatio: 2.2/1,
                      child:  Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text("Trending", style: TextStyle(fontSize: 17),),
                        ),
                      )),

                  ],
                ),
              ),
              Container(
                height: 5.0,
                width: 500.0,
                color: Colors.grey,
              ),
               Container(
                 height: 50.0,
                 width: 10.0,
               ),

               makeItem(image: 'assets/seychalls.jpg', tag: 'white'),

                          makeItem(image: 'assets/singapore.jpg', tag: 'white'),
              makeItem(image: 'assets/bali.jpg', tag: 'white'),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag}) {
    return Hero(
      tag: tag,
      child: GestureDetector(

        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 10,
                    offset: Offset(0, 10)
                )
              ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                    ),
                    child: Center(
                      child: Icon(Icons.favorite_border, size: 20,),
                    ),
                  )
                ],
              ),

            ],

          ),



        ),
      ),


    );
  }
}