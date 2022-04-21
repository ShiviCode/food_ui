import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key,
   required this.imgPath, 
   required this.foodName,
   required this.pricePerItem,
   required this.heroTag,
    }) : super(key: key);

  final String imgPath;
  final String foodName;
  final String pricePerItem;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, color: Colors.black,),
                Stack(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Color(0xFFFE7D6A).withOpacity(0.3),
                          blurRadius: 6.0,
                          spreadRadius: 4.0,
                          offset: Offset(0.0,4.0),
                        ),],
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_cart,color: Colors.white,),
                      ),
                      ),
                    Positioned(
                      top: 1,
                      right: 4,
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child:Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 7,
                              color: Colors.red
                             ),
                          ),
                        ) ,
                      ),
                    ),  
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height:15),
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Text('Super',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
               ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Text(foodName,style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
               ),
            ),
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(
                tag: heroTag,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ),

                SizedBox(width: 15,),
                Column(
                  children: [
                    Stack(
                      children: [
                       Container(
                         height: 45,
                         width: 45,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.withOpacity(0.2),
                               blurRadius: 6,
                               spreadRadius: 6,
                               offset: Offset(5.0,11.0),
                             ),
                           ]
                         ),
                       ),
                       Container(
                         height: 50,
                         width: 50,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15),
                           color: Colors.white,
                         ),
                         child: Center(
                           child: Icon(Icons.favorite_border,color: Color(0xFFFE7D6A),size: 25,),
                         ),
                       ),
                      ],
                    ),

                    SizedBox(height: 40,),

                    Stack(
                      children: [
                       Container(
                         height: 45,
                         width: 45,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15),
                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.withOpacity(0.2),
                               blurRadius: 6,
                               spreadRadius: 6,
                               offset: Offset(5.0,11.0),
                             ),
                           ]
                         ),
                       ),
                       Container(
                         height: 50,
                         width: 50,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15),
                           color: Colors.white,
                         ),
                         child: Center(
                           child: Icon(Icons.restore, color: Color(0xFFFE7D6A),size: 25,),
                         ),
                       ),
                      ],
                    ),
                  ],
                ),
             ],
          ),
          
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
               height: 70,
               width: 125,
               color:Colors.white,
               child: Center(
                 child: Text('\$' + '${(int.parse(pricePerItem))}',
                 style: TextStyle(
                    fontSize: 40,
                    color: Color(0xFF5E6166),
                    fontWeight: FontWeight.bold
                  ),
                 ),
               ),
              ),
              Container(
                height: 60,
                width: 225,
                decoration: BoxDecoration(
                  color: Color(0xFFFE7D6A),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.remove,),iconSize: 17,
                          ),
                         
                          Text('1',style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                           ),
                          ),

                           IconButton(onPressed: (){}, icon: Icon(Icons.remove,),iconSize: 17,
                           ),
                        ],
                      ),
                    ),

                    Text('Add to cart',style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                           ),
                          ),
                  ],
                ),
              ),
            ],
          ),

         ],
      ),
    );
  }
}