import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop/models/detaiels/detaiels_screen.dart';
import 'package:shop/shared/components/components.dart';
import 'package:shop/shared/styles/styles.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.gripLines),
          onPressed: () {},
          color: Colors.blueGrey,
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.search),
            onPressed: () {},
            color: Colors.blueGrey,
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.shoppingBasket),
            onPressed: () {},
            color: Colors.blueGrey,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(icon: Icon(FontAwesomeIcons.home), onPressed: () {},),
            IconButton(icon: Icon(FontAwesomeIcons.shoppingBasket), onPressed: () {},),
            IconButton(icon: Icon(FontAwesomeIcons.heart), onPressed: () {},),
            IconButton(icon: Icon(FontAwesomeIcons.user), onPressed: () {},),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                  height: 150.0,
                  width: double.infinity,
                  child: Carousel(
                    images: [
                      NetworkImage(
                          'https://content.shopback.com/ph/wp-content/uploads/2019/06/21103620/64790131_1113480215502945_864383290969161728_n.png'),
                      NetworkImage(
                          'https://cdn.grabon.in/gograbon/images/web-images/uploads/1593767938443/groceries-offers.jpg'),
                      NetworkImage(
                          'https://www.chappellelementaryschool.org/ourpages/auto/2017/11/3/56575964/bakermillerbakesale.jpg'),
                      NetworkImage(
                          'https://image.shutterstock.com/image-vector/iced-coffee-pouring-down-into-260nw-1086585476.jpg'),
                    ],
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.white54,
                    indicatorBgPadding: 5.0,
                    dotBgColor: Colors.purple.withOpacity(0.1),
                    borderRadius: true,
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories', style: black15w500),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xffefebe2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'View All',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                  height: 120, width: double.infinity, child: buildCateg()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hot Offers', style: black15w500),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xffefebe2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'View All',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DetailsScreen()));
                },
                child: Container(
                    height: 180, width: double.infinity, child: hotOffers()),
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Best Seller', style: black15w500),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xffefebe2),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'View All',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      )),
                ],
              ),
              SizedBox(height: 12,),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DetailsScreen()));
                },
                child: Container(
                    height: 180, width: double.infinity, child: hotOffers()),
              ),


            ],
          ),
        ),
      ),
    );
  }


}
