import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masrif/cards_mud.dart';
import 'package:masrif/requestCRT.dart';
import '../componnents.dart';
import 'homeScreen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 100),
    value: 1-.0,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*floatingActionButton: Floati
      ngActionButton(
        onPressed: () {},
        child: IconButton(
          onPressed: () {
            controller.fling(velocity: isPanelVisible ? -1.0 : 1.0);
          },
          icon:const Icon(Icons.question_mark),
        ),
      ),*/ //floating action button
      body: TwoPanels(
        controller: controller,
      ),
    );
  }
}

class TwoPanels extends StatefulWidget {
  final AnimationController controller;

  const TwoPanels({Key? key, required this.controller}) : super(key: key);

  @override
  _TwoPanelsState createState() => _TwoPanelsState();
}

class _TwoPanelsState extends State<TwoPanels> with TickerProviderStateMixin {
  //static const _headerHeight = 32.0;
  //late TabController tabController = TabController(length: 3, vsync: this);

  /*Animation<RelativeRect> getPanelAnimation(BoxConstraints constraints) {
    final _height = constraints.biggest.height;
    final _backPanelHeight = _height - _headerHeight;
    const _frontPanelHeight = -_headerHeight;

    return RelativeRectTween(
      begin: RelativeRect.fromLTRB(
        0.0,
        _backPanelHeight,
        0.0,
        _frontPanelHeight,
      ),
      end: const RelativeRect.fromLTRB(0.0, 100, 0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: widget.controller, curve: Curves.linear),
    );
  }*/

  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    final ThemeData theme = Theme.of(context);
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: const Text("NADC Sudan"),
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                z.toggle!();
              },
            ),
           /* bottom: TabBar(
              controller: tabController,
              tabs: const [
                Tab(
                  //icon: Icon(Icons.home_filled),
                  text: 'lll',
                ),
                Tab(
                  icon: Icon(Icons.home_filled),
                  //text: 'lll',
                ),
                Tab(
                  icon: Icon(Icons.home_filled),
                  text: 'lll',
                )
              ],
            ),*/ //TabBar
          ),
          body: Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: ListView(
              physics: const ClampingScrollPhysics(),
              children: [
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,bottom: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Good Morning',style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color :myGreyColor,
                          ),),
                          Text('Marwan Ismail',style: GoogleFonts.inter(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color :secondaryColor,
                          ),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(child: Image.asset('images/user.png'),backgroundColor: secondaryColor,),
                      )
                      
                    ],
                  ),

                ),
                Container(
                  height: 199,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 16.0,right: 16.0),
                      itemCount: cards.length,itemBuilder: (context, index) {
                   return Container(
                     margin: EdgeInsets.only(left: 8),
                     height: 190,
                     width: 300,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(25),
                       color: cards[index].color,
                     ),
                     child: Stack(
                       children: [
                         Positioned(left:-29,top: -10,
                           child: cards[index].icon),
                         Positioned(right:-58,bottom: -44,
                             child: cards[index].Icon2),
                         Positioned(left: 20,top: 30,
                         child: Text(cards[index].title,style: GoogleFonts.inter(
                           fontSize: 14,
                           fontWeight: FontWeight.w700,
                           color: Colors.white
                         ),),),
                         Positioned(left: 29,top: 75,
                           child: Text(cards[index].subTitle),)
                       ],
                     ),
                   );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 8,left: 15),
                  child: Text('NADC Services',style: GoogleFonts.inter(
                    color: myGreyColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,bottom: 13.0,right: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: myCards(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestCertificate()));
                                },
                                url: 'images/Certificate.png',
                                text: 'Request Certificate '),
                          ),
                          SizedBox(width: 15,),
                          Expanded(
                            child: myCards(
                                onTap: (){},
                                url: 'images/qrCode.png',
                                text: 'Scan QR'),
                          ),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Expanded(
                            child: myCards(
                                onTap: (){},
                                url: 'images/key.png',
                                text: 'PKI'),
                          ),
                          SizedBox(width: 15,),
                          Expanded(
                            child: myCards(
                                onTap: (){},
                                url: 'images/Aboutt.png',
                                text: 'About NADC'),
                          ),

                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),

          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }
}

class myCards extends StatelessWidget {
  final String text;
  final String url;
  final Function onTap;
  myCards({Key? key, required this.text, required this.onTap, required this.url}) ;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: secondaryColor,
      onPressed: () {
        onTap();

      },
      child: Container(
        height: 120,
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text(text,style: GoogleFonts.inter(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),textAlign: TextAlign.center),
            const SizedBox(
              height: 16,
              child: Divider(thickness: 2,color: Colors.white,),
            ),
            Image.asset(url),

          ],
        ),

      ),
    );
  }
}


