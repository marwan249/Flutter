import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'componnents.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final FullName =TextEditingController();
  final UserName =TextEditingController();
  final password =TextEditingController();
  final confirmPassword =TextEditingController();
  final phoneNumber =TextEditingController();
  final myFormKey = GlobalKey<FormState>();
  bool invisible =true;
  void inContact() {
    setState(() {
      invisible = !invisible;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar:const BottomAppBar(
        color: Colors.white,
        child:  Text('www.Nadc.gov.sd \t version 1.0',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: secondaryColor,fontWeight: FontWeight.bold)),
      ),
      backgroundColor: primaryColor,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                      color: Colors.white,
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 90,
                          height: 90,
                          child: Image.asset('images/NADC_LOGO.png'),
                        ),
                        const Text('السلطة القومية للمصادقة الالكترونية ',
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 16,fontWeight: FontWeight.bold),),
                        const Text('National Authority of Digital Signature',
                            style: TextStyle(
                                color: secondaryColor,
                                fontSize: 16,fontWeight: FontWeight.bold)),
                        Container(
                          margin: const EdgeInsets.only(right: 20,top: 20),
                          alignment: Alignment.bottomRight,
                          child: const Text('Sign Up',style: TextStyle(
                              fontSize: 20,color: primaryColor
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  margin: const EdgeInsets.only(right: 20,left: 20,top: 20),
                  decoration:const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                      ),
                      color: Colors.white
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty || value.characters.length < 10) {
                        return 'Please enter Correct Phone Number';
                      }
                      return null;
                    },
                    cursorColor: primaryColor,
                    controller: phoneNumber,
                    decoration:const InputDecoration(
                      icon: Icon(
                          color: primaryColor,
                          Icons.phone_android
                      ),
                      hintText: 'Phone Number',
                      enabledBorder: InputBorder.none,
                      focusedBorder:  InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  margin: const EdgeInsets.only(right: 20,left: 20,top: 20),
                  decoration:const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                      ),
                      color: Colors.white
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your correct user name';
                      }
                      if (value.characters.length < 6) {
                        return 'your user name most be more than 5 ';
                      }
                      return null;
                    },
                    obscureText: invisible,
                    cursorColor: primaryColor,
                    controller: FullName,
                    decoration: InputDecoration(
                      icon: Icon(
                        color: primaryColor,
                        Icons.supervised_user_circle_sharp,
                      ),
                      hintText: 'User Name',
                      enabledBorder: InputBorder.none,
                      focusedBorder:  InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  margin: const EdgeInsets.only(right: 20,left: 20,top: 20),
                  decoration:const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                      ),
                      color: Colors.white
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your correct user full name';
                      }
                      if (value.characters.length < 8) {
                        return 'your name most be more than 7 ';
                      }
                      return null;
                    },
                    obscureText: invisible,
                    cursorColor: primaryColor,
                    controller: FullName,
                    decoration: InputDecoration(
                      icon: Icon(
                        color: primaryColor,
                        Icons.person,
                      ),
                      hintText: 'Full Name',
                      enabledBorder: InputBorder.none,
                      focusedBorder:  InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  margin: const EdgeInsets.only(right: 20,left: 20,top: 20),
                  decoration:const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                      ),
                      color: Colors.white
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.characters.length < 8) {
                        return 'your password most be more than 7 ';
                      }
                      return null;
                    },
                    obscureText: invisible,
                    cursorColor: primaryColor,
                    controller: password,
                    decoration: InputDecoration(
                      icon: Icon(
                        color: primaryColor,
                        Icons.lock,
                      ),
                      suffixIcon:GestureDetector(
                        onTap: ()=>inContact(),
                        child: Icon(
                          invisible ? Icons.visibility : Icons.visibility_off,
                          color: primaryColor,
                        ),
                      ),
                      hintText: 'User Password',
                      enabledBorder: InputBorder.none,
                      focusedBorder:  InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  margin: const EdgeInsets.only(right: 20,left: 20,top: 20),
                  decoration:const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                      ),
                      color: Colors.white
                  ),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Confirm your password';
                      }
                      return null;
                    },
                    obscureText: invisible,
                    cursorColor: primaryColor,
                    controller: confirmPassword,
                    decoration: InputDecoration(
                      icon: Icon(
                        color: primaryColor,
                        Icons.lock,
                      ),
                      hintText: 'Conferm Password',
                      enabledBorder: InputBorder.none,
                      focusedBorder:  InputBorder.none,
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    margin: const EdgeInsets.all(20),
                    decoration:const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),

                        color: Colors.white
                    ),
                    child: FlatButton(
                      onPressed: (){
                        if (myFormKey.currentState!.validate()) {

                        }

                      },
                      child: const Text('Sign In',style:  TextStyle(
                          fontSize: 20,color: primaryColor
                      ),),)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
