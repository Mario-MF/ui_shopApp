import 'package:flutter/material.dart';
import 'package:shop/modules/login/login_screen.dart';
import 'package:shop/shared/components/components.dart';
import 'package:shop/shared/styles/colors.dart';
import 'package:shop/shared/styles/styles.dart';
class WelcomeScreen extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 250,
                      height: 300,
                      child: Image(image: NetworkImage('https://i.pinimg.com/736x/13/87/97/1387973b364c4b2f12cec05047bc699a.jpg')),
                    ),
                  ),
                  Text('Welcome',style: TextStyle(color: Color(0xff6f3683),fontSize: 25)),
                  SizedBox(height: 20,),
                  Text('Login Or SignUp to continue',style: black16regular(),),
                  Text('using your app',style: black16regular(),),
                ],
              ),
            ),
            Column(
              children: [
                drfaultButtom(function: (){
                  navigateTo(context,LoginScreen());
                },
                    text: 'Login',btncolor: defaultColor),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: defaultColor)
                    ),
                    child: Center(child: Text('SignUp'))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 1,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text('OR'),
                    ),
                    Container(
                      width: 10,
                      height: 1,

                      color: Colors.grey,
                    )


                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      child: Image(image: NetworkImage('https://cdn3.iconfinder.com/data/icons/capsocial-round/500/facebook-512.png'),),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: 30,
                      height: 30,
                      child: Image(image: NetworkImage('https://icons-for-free.com/iconfiles/png/512/google+mail+icon-1320192249286867468.png'),),
                    ),
                  ],
                ),
                SizedBox(height: 50,)
              ],
            )


          ],
        ),
      ),
    );
  }
}
