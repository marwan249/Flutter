
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masrif/signupScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'componnents.dart';
import 'home/homeScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final userPassword =TextEditingController();
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(AppLocalizations.of(context).login_text,
                style: TextStyle(
                  color: secondaryColor,
                ),),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                },
                child:const Text('Register Now',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      ),
      backgroundColor: primaryColor,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: OutlinedButton(
                            child: const Text('العربية'),
                            onPressed: (){},

                          ),

                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 50),
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
                              child: const Text('Sign In',style: TextStyle(
                                  fontSize: 20,color: primaryColor
                              ),),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  margin: const EdgeInsets.only(right: 20,left: 20,top: 70),
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
                        return 'Please enter your password';
                      }
                      if (value.characters.length < 8) {
                        return 'your password most be more than 7 ';
                      }
                      return null;
                    },
                    obscureText: invisible,
                    cursorColor: primaryColor,
                    controller: userPassword,
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
                  margin: EdgeInsets.only(top: 20,right: 20),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Text('Forget Password ?',
                    style: GoogleFonts.ibarraRealNova(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),),
                    onTap: (){},
                  ),
                ),
                Container(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    margin: const EdgeInsets.only(right: 20,left: 20,top: 70),
                    decoration:const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),

                        color: Colors.white
                    ),
                    child: FlatButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
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
/*icon: Icon(
  invisible ? Icons.visibility : Icons.visibility_off,
  ),
  onPressed: inContact,
  void inContact() {
    setState(() {
      invisible = !invisible;
    });
  }*/