// ignore_for_file: prefer_const_constructors, sort_child_properties_last, duplicate_ignore

import 'package:flutter/material.dart';
import 'sub_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // ignore: duplicate_ignore
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
            debugShowCheckedModeBanner: false,
    
      color: Color.fromARGB(255, 255, 255, 255),
    
      home: const ImageButton(title: 'Student Information'),
    );
  }
}

class ImageButton extends StatefulWidget {
  const ImageButton({super.key, required this.title});

  final String title;

  @override
  State<ImageButton> createState() => _ImageButtonState();
}

class _ImageButtonState extends State<ImageButton> {
  bool showText = false;
bool showimage =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    
      backgroundColor: Color.fromARGB(255, 245, 234, 234),
      appBar: AppBar(
       
        centerTitle: true,
      
        backgroundColor: Color.fromARGB(255, 156, 24, 145),
        title: Text(
          widget.title,
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w700,
              fontSize: 27),
        ),
      ),
      body: Center(
        child: Column(
         
         // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Padding(padding: const EdgeInsets.symmetric(vertical: 40),),
          
            TextButton(
              onPressed: () {
                setState(() {
                  showText = !showText;
                }
                
                );
             
             
             }, 
              
              child:CircleAvatar(radius: 100,backgroundImage:AssetImage('assets/images/cv.jpg') ,)
              
            ),
             Container(
              
              margin: EdgeInsets.fromLTRB(70, 30, 00, 0),
                child: 
                Text(
              "Press For Information ",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                 
                 color: Color.fromARGB(255, 133, 55, 197)
           ),
            ),
            width: 450,
            ),
            
            const SizedBox(height: 15.0),
            if (showText)
               Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Card(
                    
                   // margin: EdgeInsets.symmetric(vertical: 70 ,horizontal: 70),
                   margin: EdgeInsets.fromLTRB(5, 20,5, 0),
                   shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(150),
            
              side: BorderSide(width: 1000.0),
              ),
              child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color.fromARGB(255, 105, 23, 112), Color.fromARGB(255, 247, 82, 164)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    child: 
                    Column(
                      children: [
                        
                        Text(
                          'Jehad Almgadmi',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                          
                        ),
                      
                       Text(
                    '5181128',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                      
                      ],
                    ),
                  ),
                  ),
                  
                ],
              ),
          ],
        ),
      ),
    );
  }
}
