import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
         child: Container(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
            const CircleAvatar(
            backgroundColor: Colors.red,
            radius: 70.0,
            backgroundImage: AssetImage('assets/images/Avatar.jpg'),
          ),
           const Text(
            'Damilare Adeyemi',
             style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
            ),
           ),
           const Text(
            'Flutter Developer',
             style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
           ),
           Container(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            padding: const EdgeInsets.all(15.0),
            child: const Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Icon(Icons.phone, color: Colors.teal, size: 30.0,),
              Text('+234 816 2957 056')
           ]
          ),
         ),
         const SizedBox(
          height: 10.0,
         ),
         Container(
          color: Colors.white,
          margin:const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          padding:const EdgeInsets.all(15.0),
          child:const Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            Icon(
                Icons.email,
                color: Colors.teal,
            ),
            Text('dict@tau.edu.ng')
           ],
          ),
         )
        ],
       ),
      ),
     ),
    ),
   );
  }
 }
