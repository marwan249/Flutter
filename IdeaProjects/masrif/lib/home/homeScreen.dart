import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:masrif/componnents.dart';

import '../requestCRT.dart';
import 'Body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
final ZoomDrawerController z = ZoomDrawerController();
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage("images/NADC_LOGO.png"),
            fit: BoxFit.cover
        ),
      ),
      child: ZoomDrawer(
        controller: z,
        borderRadius: 30,
        style: DrawerStyle.defaultStyle,
        // showShadow: true,
        openCurve: Curves.fastOutSlowIn,
        slideWidth: MediaQuery.of(context).size.width * 0.75,
        duration: const Duration(milliseconds: 500),
         angle: 0.0,
        menuBackgroundColor: secondaryColor.withOpacity(0.7),
        mainScreen: const Body(),
        menuScreen: Theme(
          data: ThemeData.dark(),
          child:  Scaffold(
            bottomNavigationBar: BottomAppBar(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                child: GestureDetector(
                  onTap: (){

                  },
                  child:Row(
                    children:const [
                      Icon(Icons.power_settings_new),
                       Text('\t Logout',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,fontWeight: FontWeight.bold),),

                    ],
                  )
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: Padding(
              padding:const EdgeInsets.only(left: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     FlatButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestCertificate()));
                     },color: primaryColor , child: SizedBox(
                       height: 50,
                       child: Row(
                        children: [
                          Image.asset('images/Certificate.png',width: 30,height: 30,),
                          Text('\t Request Certificate'),
                        ],
                    ),
                     ), ),
                     SizedBox(height: 10,),
                     FlatButton(onPressed: (){},color: primaryColor, child: SizedBox(
                       height: 50,
                       child: Row(
                        children: [
                          Image.asset('images/qrCode.png',width: 30,height: 30,),
                           Text('\t Scan Document'),
                        ],
                    ),
                     ), ),
                    SizedBox(height: 10,),
                    FlatButton(onPressed: (){

                    },color: primaryColor, child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Image.asset('images/key.png',width: 30,height: 30,),
                          Text('\t NADC Services'),
                        ],
                      ),
                    ), ),
                    SizedBox(height: 10,),
                    FlatButton(onPressed: (){},color: primaryColor, child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Image.asset('images/Aboutt.png',width: 30,height: 30,),
                          Text('\t About Nadic'),
                        ],
                      ),
                    ), ),
                    SizedBox(height: 10,),
                    FlatButton(onPressed: (){},color: primaryColor, child: SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Image.asset('images/Settings.png',width: 30,height: 30,),
                          Text('\t Settings'),
                        ],
                      ),
                    ), ),


                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

