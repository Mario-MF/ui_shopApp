import 'package:flutter/material.dart';
import 'package:shop/models/home_screen.dart';
import 'package:shop/modules/register/Register_acreen.dart';
import 'package:shop/shared/components/components.dart';
import 'package:shop/shared/styles/colors.dart';
import 'package:shop/shared/styles/styles.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Welcome Back!',style: TextStyle(color: defaultColor,fontSize: 25),),
                     Center(
                       child: Container(
                         width: 250,
                         height: 300,
                         child: Image(image: NetworkImage('https://thumbs.dreamstime.com/b/grocery-delivery-home-hand-hold-smartphone-app-shopping-goods-cart-buyer-fresh-vegetables-food-beverage-internet-183264764.jpg')),
                       ),
                     ),

                     defaultForm(hintText: 'Enter Email', icon: Icons.person_outline),
                     SizedBox(height: 10,),
                     defaultForm(hintText: '*******', icon: Icons.vpn_key_outlined),
                     drfaultButtom(function: (){
                       navigateTo(context,LoginScreen());
                     },
                         text: 'Login',btncolor: defaultColor),

                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text('Don\'t have an account?'),
                     SizedBox(width: 8,),
                     InkWell(
                         onTap: (){
                           navigateTo(context, RegisterScreen());
                         },
                         child: Text('Sign Up',style: TextStyle(color:Color(0xff00b7eb) ),)),

                   ],
                 ),
                 InkWell(
                     onTap: (){
                       navigateTo(context, HomeScreen());
                     },
                     child: Text('SkipNow',style: TextStyle(color:Color(0xff00b7eb) ),)),


               ],
            ),
          ),
        ),
      ),

    );
  }
}
