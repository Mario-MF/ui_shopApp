import 'package:flutter/material.dart';

Widget CategList({String title, Color color, image}) => Column(
  children: [
    Container(
      height: 85,
      width: 85,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image(
          image: NetworkImage(image),
        ),
      ),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(10)),
    ),
    Text(title)
  ],
);

Widget buildCateg() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      CategList(
          title: 'Bakery ',
          color: Color(0xfffbe6ac),
          image:
          'https://www.smurfitkappa.com/-/m/images/smurfit-kappa-digital-marketing-platform/shared/page-hero-610-x-350/bakery.png?rev=c3c25690aa4c402489c342b096cc7a2a'),
      SizedBox(
        width: 8,
      ),
      CategList(
          title: 'Vegetable',
          color: Color(0xffdfecc4),
          image:
          'https://freepngimg.com/thumb/vegetable/24646-6-vegetable-photos.png'),
      SizedBox(
        width: 8,
      ),
      CategList(
          title: 'Milk',
          color: Color(0xffffddc5),
          image: 'https://i.dlpng.com/static/png/6940043_preview.png'),
      SizedBox(
        width: 8,
      ),
      CategList(
          title: 'Drinks',
          color: Colors.yellow.shade200,
          image: 'https://www.vippng.com/png/full/541-5413615_coca-cola.png'),
      SizedBox(
        width: 8,
      ),
      CategList(
          title: 'Meat',
          color: Color(0xffffdec6),
          image: 'https://pngimg.com/uploads/beef/beef_PNG85.png'),
      SizedBox(
        width: 8,
      ),
      CategList(
          title: 'fruit',
          color: Color(0xffecd6eb),
          image:
          'https://i.pinimg.com/originals/7f/cc/d4/7fccd4143a51812cfbcff26451e2a113.png'),
      SizedBox(
        width: 8,
      ),
      CategList(
          title: 'Chocolate',
          color: Color(0xffd8afaf),
          image:
          'https://i.pinimg.com/originals/57/5e/98/575e98c912fb7c01fe1a2625a47cf7ed.png'),
      SizedBox(
        width: 8,
      ),
    ],
  );
}

Widget hotOffersList(
    {String title, String oldPrice, String newPrice, String photo}) {
  return Container(
    height: 200,
    width: 150,
    color: Color(0xffdeecfa),
    child: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(width: 120, height: 100, child: Image.network(photo)),
            Text(title),
            Text(newPrice),
            Text(
              oldPrice,
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                decorationThickness: 2.85,
              ),
            ),
          ],
        ),
        Positioned(
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.white
              ),
              child: Column(
                children: [
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
                  SizedBox(
                    height: 5,
                  ),
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
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget hotOffers() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: [
      hotOffersList(
          title: 'Pepsi',
          newPrice: '4.50\LE',
          oldPrice: '5.0\LE',
          photo: 'https://pngimg.com/uploads/pepsi/pepsi_PNG8956.png'),
      SizedBox(
        width: 8,
      ),
      hotOffersList(
          title: 'Pepsi',
          newPrice: '4.50\LE',
          oldPrice: '5.0\LE',
          photo:
          'https://www.freepnglogos.com/uploads/cake-png/cake-png-transparent-cake-images-pluspng-21.png'),
      SizedBox(
        width: 8,
      ),
      hotOffersList(
          title: 'Pepsi',
          newPrice: '4.50\LE',
          oldPrice: '5.0\LE',
          photo:
          'https://www.pngkey.com/png/full/125-1254749_candy-bar-png-pic-kit-kat-king-size.png'),
      SizedBox(
        width: 8,
      ),
      hotOffersList(
          title: 'Pepsi',
          newPrice: '4.50\LE',
          oldPrice: '5.0\LE',
          photo:
          'https://www.nestle-family.com/sites/site.prod1.nestle-family.com/files/styles/tile_image/public/2019-05/Nesquik%20Chocolate%20powder%20tin.png?itok=6MOMhW7G'),        SizedBox(
        width: 8,
      ),
      hotOffersList(
          title: 'Pepsi',
          newPrice: '4.50\LE',
          oldPrice: '5.0\LE',
          photo:
          'https://www.nescafe.com/sites/default/files/styles/product_recommendation_large/public/2020-04/NESCAF%C3%89%20Classic_0.png?itok=xEQ6xzPZ'),
    ],
  );
}
Widget drfaultButtom(
    {@required String text,
      @required function,
      double fontSize,
      Color color = Colors.white,
      Color btncolor ,
      Color borderColor=Colors.white ,

      icon}) =>
    Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor)
        ),
        child: ElevatedButton(
          onPressed: function,
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize, color: color),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(btncolor)),
        ));

void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

void navigateAndFinish({context, widget}) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
        (Route<dynamic> route) => false);
Widget defaultForm(
    {@required String hintText, @required icon, controller, validator}) =>
    TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        isDense: true, // important line
        contentPadding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(



        ),
        hintText: hintText,
      ),
    );

