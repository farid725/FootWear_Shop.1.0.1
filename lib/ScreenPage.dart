import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:zoom_pinch_overlay/zoom_pinch_overlay.dart';

class ScreenPage extends StatelessWidget {
final  String imageShoe;
final String name;
 const ScreenPage({Key? key,required this.imageShoe,required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final Size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leading:const BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title:const Text(
          'Detials',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: Size.width*1.0,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ZoomOverlay(
                modalBarrierColor: Colors.black12,
                minScale: 0.5,
                maxScale: 3.0,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration:const Duration(milliseconds: 300),
                twoTouchOnly: true,
                child: Image(image: AssetImage(imageShoe),
                  height: Size.height*0.3,
                  width: Size.width*1.0,
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 10),
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.red.shade200,
                      fontWeight: FontWeight.w600,
                      fontSize: 40),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: RatingBar.builder(
                      itemSize: 25,
                      initialRating: double.minPositive,
                      minRating: 2,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      '470 viewers',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                color: Colors.black45,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Detials',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.blueGrey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5, top: 20),
                child: Text(
                  'Nike Vernero untuk Pria dan Wonito Bontal Udara Sepotu Larl  Nyoman Tren Sepatu Kasuot 05853',
                  style: TextStyle(color: Colors.black45),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1,
                color: Colors.black45,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, top: 10),
                child: Text(
                  'COLOR OPTION',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ColoredBox(color: Colors.red,),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ColoredBox(color: Colors.amber),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ColoredBox(color: Colors.blueGrey),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ColoredBox(color: Colors.greenAccent),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      width: Size.width*1.0,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 10,
                            blurRadius: 9,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Icon(
                                Icons.euro,
                                size: 28,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 13),
                              child: Text(
                                '129.5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 25, top: 5),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 180,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.red.shade200,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 12,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Purchase',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.white70),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      )
    );
  }
}
