import 'package:flutter/material.dart';
import 'package:food_ui/food_tabs.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget{  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
 with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length:4, vsync: this);
  }

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
               ),
            ),
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

             Padding(
            padding: const EdgeInsets.only(left:15.0,top: 15),
            child: Text('Recommended',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
               ),
            ),
          ),
          
          SizedBox(height: 15,),

          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildList(
                  foodName: 'Humburger', 
                  imgPath: 'assets/images/burger.png',
                  price: '21', 
                  bgColor: Colors.orange.withOpacity(0.4),
                  textColor: Colors.brown,
                  ),

                  _buildList(
                  foodName: 'Fries', 
                  imgPath: 'assets/images/fries.png',
                  price: '15', 
                  bgColor: Colors.blue.withOpacity(0.4),
                  textColor: Colors.deepPurple,
                  ),

                  _buildList(
                  foodName: 'Donuts', 
                  imgPath: 'assets/images/doughnut.png',
                  price: '15', 
                  bgColor: Colors.green.withOpacity(0.4),
                  textColor: Colors.green,
                  ),
              ],
            ),
          ),

          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.9),
              indicatorSize: TabBarIndicatorSize.label,

              labelStyle: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
               ), 

               unselectedLabelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
               ), 

              tabs: [
                  Tab(child: Text('FEATURED'),),
                  Tab(child: Text('COMBO'),),
                  Tab(child: Text('FAVORITES'),),
                  Tab(child: Text('RECOMMENED'),),

              ]),
            ),
            
           Container(
             //padding: EdgeInsets.all(15),
             //color: Colors.amber,
            width: 400,
             height: 400,
             child: TabBarView(
               controller: tabController,
               children:[
                 FoodTabs(),
                 FoodTabs(),
                 FoodTabs(),
                 FoodTabs(),
             ]),
           ),

        ],
      ),
    );
  }

   _buildList({
     required String foodName, 
     required String imgPath, 
     required String price, 
     required Color bgColor, 
     required Color textColor,
     }){
      return Padding(
        padding:EdgeInsets.only(left: 15),
        child: InkWell(
          onTap: (){},
          child: Container(
            height: 175,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: bgColor,
            ),
            child: Column(
              children: [
                SizedBox(height: 25,),
                Hero(
                  tag: foodName, 
                  child: Container(
                     height: 75,
                     width: 75,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       shape: BoxShape.circle,
                     ),
                     child: Center(
                       child: Image.asset(imgPath,height: 50,width: 50,),
                     ),
                  ),
                ),
                SizedBox(height: 25,),
                Text(
                  foodName,
                  style: TextStyle(
                    fontSize: 17,
                    color: textColor,
                    fontWeight: FontWeight.bold
                  ),
                  ),

                   Text(
                  '\$ ' +price,
                  style: TextStyle(
                    fontSize: 17,
                    color: textColor,
                   // fontWeight: FontWeight.bold
                  ),
                  ),
              ],
            ),
          ),
        ),
        );
   }
}