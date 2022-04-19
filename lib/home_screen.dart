import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(''),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                Container(
                  height: 50,
                  width: 50,
                 // color: Colors.orange,
                 decoration: BoxDecoration(
                   color: Colors.blue.withOpacity(0.3),
                   shape: BoxShape.circle,
                   image:DecorationImage(
                     image: AssetImage('assets/images/tuxedo.png'),
                     fit: BoxFit.contain,
                   ), 
                 ),
                ),

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Text('SEARCH FOR',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
               ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Text('RECIPES',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
               ),),
          ),
          SizedBox(height: 25,),

           Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Container(
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Seach',
                    border: InputBorder.none,
                    fillColor: Colors.grey.withOpacity(0.5),
                    prefixIcon
                    : Icon(Icons.search,color: Colors.grey,)
                  ),
                ),
              ),
            ),
          

        ],
      ),
    );
  }
}