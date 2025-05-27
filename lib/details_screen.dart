import 'package:flutter/material.dart';
import 'package:rich_readmore/rich_readmore.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFav = false;
  bool isS = true;
  bool isM = false;
  bool isL = false;
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
              IconButton(
                  onPressed: (){
                    isFav = !isFav;

                    setState(() {

                    });

              }, icon: Icon(isFav == true ? Icons.favorite : Icons.favorite_border))


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
                SizedBox(
                  height: 32,
                ),
                Text("Description",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
                ),
                ),
                RichReadMoreText.fromString(
                  text: 'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                  textStyle: TextStyle(color: Colors.grey),
                  settings: LengthModeSettings(
                    trimLength: 70,
                    trimCollapsedText: 'Read More',
                    trimExpandedText: ' Read less ',
                    onPressReadMore: () {
                      /// specific method to be called on press to show more
                    },
                    onPressReadLess: () {
                      /// specific method to be called on press to show less
                    },
                    lessStyle: TextStyle(color: Color.fromRGBO(198, 124, 78, 1),fontWeight: FontWeight.bold),
                    moreStyle: TextStyle(color: Color.fromRGBO(198, 124, 78, 1),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Size",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(

                      child: Container(
                        height: 43,
                        width: 96,
                        decoration: BoxDecoration(
                          color:isS == true ? Color.fromRGBO(255, 245, 238, 1) : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color:isS == true ? Color.fromRGBO(198, 124, 78, 1)  : Colors.grey,
                            width: 1
                          )
                        ),
                        child: Center(child: Text(
                            "S",
                        style: TextStyle(
                          fontSize: 14,
                          color: isS == true ? Color.fromRGBO(198, 124, 78, 1) : Colors.black
                        ),
                        )),
                      ),
                      onTap: (){
                        isS = true;
                        isM = false;
                        isL = false;
                        setState(() {

                        });
                      },
                    ),
                    InkWell(
                      onTap: (){
                        isM = true;
                        isS = false;
                        isL = false;
                        setState(() {

                        });
                      },
                      child: Container(
                        height: 43,
                        width: 96,
                        decoration: BoxDecoration(
                            color:isM == true ? Color.fromRGBO(255, 245, 238, 1) : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color:isM == true ? Color.fromRGBO(198, 124, 78, 1)  : Colors.grey,
                                width: 1
                            )
                        ),
                        child: Center(child: Text(
                          "M",
                          style: TextStyle(
                              fontSize: 14,
                              color: isM == true ? Color.fromRGBO(198, 124, 78, 1) : Colors.black
                          ),
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        isL = true;
                        isS = false;
                        isM = false;
                        setState(() {

                        });
                      },
                      child: Container(
                        height: 43,
                        width: 96,
                        decoration: BoxDecoration(
                            color:isL == true ? Color.fromRGBO(255, 245, 238, 1) : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color:isL == true ? Color.fromRGBO(198, 124, 78, 1)  : Colors.grey,
                                width: 1
                            )
                        ),
                        child: Center(child: Text(
                          "L",
                          style: TextStyle(
                              fontSize: 14,
                              color: isL == true ? Color.fromRGBO(198, 124, 78, 1) : Colors.black
                          ),
                        )),
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween
                  ,
                  children: [
                    Column(
                      children: [
                        Text("Price",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        ),
                        Text("8.5\$",
                          style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(198, 124, 78, 1),
                            fontWeight: FontWeight.w600,

                        ),),
                      ],
                    ),

                    Container(
                      width: 217,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromRGBO(198, 124, 78, 1),
                      ),
                      child: Center(child: Text("Buy Now",

                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                      )),
                    )
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
