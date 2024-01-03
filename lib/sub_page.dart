import 'package:flutter/material.dart';

class ShowInfo extends StatelessWidget {
  const ShowInfo
({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor: Color.fromARGB(255, 229, 242, 245),
appBar: AppBar(
  backgroundColor: Color.fromARGB(255, 116, 185, 185),
  title: Text("Id Card",style: TextStyle(fontSize: 27)  ,
   ),
  centerTitle: true,
  leading: IconButton(onPressed:(){},
  icon:Icon(Icons.menu,size: 30),
),
    ),



body:  Column(




                children: [
                  Container(
              margin: EdgeInsets.fromLTRB(75, 50, 50, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.asset(
                   "images/3.jpg",
                  fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                ),
              ),
            ),
         //..............name and id..............
          Container(
                        margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
width: 400,
height: 120,
              child: Column (
                    mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Card(
                    
                    child: Text("Name :Moataz Daafous",
                    textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                   fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  ),
                     Card(
                    child: Text("Id :5181121",
                    textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 25,
                   fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  ),
                ],
                  ),
                  ),

                ],
              ),
    );
  }

}