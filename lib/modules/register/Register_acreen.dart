import 'package:flutter/material.dart';
import 'package:shop/modules/login/login_screen.dart';
import 'package:shop/shared/components/components.dart';
import 'package:shop/shared/styles/colors.dart';
import 'package:shop/shared/styles/styles.dart';

class RegisterScreen extends  StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Text('SignUp',style: TextStyle(color: defaultColor,fontSize: 25)),
                    Text('Create your account',style: black14regular()),
                    SizedBox(height: 50,),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          defaultForm(hintText: 'name', icon: Icons.drive_file_rename_outline),
                          SizedBox(height: 15,),

                          defaultForm(hintText: 'Email', icon: Icons.person_outline),
                          SizedBox(height: 15,),

                          defaultForm(hintText: 'phone', icon: Icons.phone),

                          SizedBox(height: 15,),
                          defaultForm(hintText: '*******', icon: Icons.vpn_key_outlined),
                          SizedBox(height: 20,),

                          drfaultButtom(function: (){
                            navigateTo(context,LoginScreen());
                          },
                              text: 'Sign Up',btncolor: defaultColor),
                        ],
                      ),
                    ),

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
                          navigateTo(context, LoginScreen());
                        },
                        child: Text('Login In',style: TextStyle(color:Color(0xff00b7eb) ),)),
                  ],
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
