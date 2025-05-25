import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios)),
              Text("Detail",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))


            ],
          ),
          SizedBox(
            height: 12,
          ),
          Center(child: Image.asset("assets/images/product.png")),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Cappucino",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
                ),
                Text("with Chocolate",

                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey
                ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Icon(Icons.star,color: Color.fromRGBO(251, 190, 33, 1),),
                    SizedBox(width: 3,),
                    Text("4.8",

                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(width: 3,),
                    Text("(230)",

                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 240, 240, 1),
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: Image.asset("assets/images/bean.png"),
                    ),
                    SizedBox(width: 10,),

                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 240, 240, 1),
                          borderRadius: BorderRadius.circular(14)
                      ),
                      child: Image.asset("assets/images/milk.png"),
                    ),
                  ],
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
