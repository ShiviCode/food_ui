import 'package:flutter/material.dart';

//import 'package:smooth_star_rating/smooth_star_rating.dart';

class FoodTabs extends StatefulWidget {
  const FoodTabs({ Key? key }) : super(key: key);

  @override
  State<FoodTabs> createState() => _FoodTabsState();
}

class _FoodTabsState extends State<FoodTabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildListItem(foodName:'Delicious hot dog', price: '6', imgPath: 'assets/images/hotdog.png'),
        ],
      ),
    );
  }
    
    // ListItem method
   _buildListItem({
     required String foodName,
     //required double? rating, rating:4.0,
     required String price,
     required String imgPath,
   })
   {
     return Padding(
       padding: EdgeInsets.all(15),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Container(
             //alignment: Alignment.centerLeft,
             width: 210,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   height: 75,
                   width: 75,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(7),
                     color: Colors.pink.withOpacity(0.5),
                   ),
                   child: Center(
                     child: Image.asset(imgPath,height: 50, width: 50,),
                   ),
                 ),
                 SizedBox(width: 20,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       foodName,
                       style:TextStyle(
                          fontSize: 14,
                           fontWeight: FontWeight.bold,
                        ),
                      ),

                      // SmoothStarRating( // 
                      //   allowHalfRating: false,
                      //   onRated: (v){},
                      //   rating: rating!,
                      //   starCount: rating.toInt(),
                      //   color: Colors.yellow,
                      //   size: 15,
                      // ),

                      Row(
                        children: [
                          Text(
                          '\$ ' +price,
                          style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                      // fontWeight: FontWeight.bold
                         ),
                      ),

                      SizedBox(width: 3,),

                      Text(
                       '\$ ' + '18',
                       style: TextStyle(
                       fontSize: 12,
                       decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                      ),
                    ),
                        ],
                      ),

                   ],
                 ),
               ],
             ),
           ),
           FloatingActionButton(onPressed: (){},
           heroTag: foodName,
            mini: true,
            child: Center(
              child:Icon(Icons.add),
            ),
            backgroundColor: Colors.red.withOpacity(0.7),
           )
         ],
       ),
       );
   }

}