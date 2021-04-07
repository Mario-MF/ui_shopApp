import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop/shared/components/components.dart';
import 'package:shop/shared/styles/colors.dart';
import 'package:shop/shared/styles/styles.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffecb9),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: Icon(FontAwesomeIcons.shoppingBasket),
              onPressed: () {},
              color: Colors.blueGrey,
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: Color(0xffffecb9),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 100,
                      width: 100,
                      child: Image(
                        image: NetworkImage(
                            'https://pngimg.com/uploads/water_bottle/water_bottle_PNG10158.png'),
                      )),
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Nestle Water',style: black15w600,),
                                Container(
                                  decoration: BoxDecoration(
                                    // color: Colors.white
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Color(0xff829ba8)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            ),
                                          )),

                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('5'),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Colors.green),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          )),



                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text('3.99\LE'),
                            SizedBox(height: 20,),
                            Text(
                                'A water bottle is a container that is used to hold water, liquids or other beverages for consumption. The use of a water bottle allows an individual to drink and transport a beverage from one place to another.',style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        child: RaisedButton(
                          child: Text('Add To Cart',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),
                           onPressed: (){},
                          color: defaultColor,
                          elevation: 0,

                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
