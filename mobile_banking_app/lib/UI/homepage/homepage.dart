import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        child: AppBarWidget(),
        preferredSize: Size.fromHeight(82.0),
      ),
      // endDrawer: Drawer(
      //   // column holds all the widgets in the drawer
      //   child: Column(
      //     children: <Widget>[
      //       Expanded(
      //         child: ListView(
      //           children:[
      //             DrawerHeader(child: FlutterLogo()),
      //             ListTile(
      //               leading: Icon(Icons.call),
      //               title: const Text('Call Support'),
      //               onTap: () {
      //
      //               },
      //             ),
      //             ListTile(
      //               leading: Icon(Icons.wallet_giftcard),
      //               title: const Text('Offers'),
      //               onTap: () {
      //
      //               },
      //             ),
      //
      //             ListTile(
      //               leading: Icon(Icons.description_rounded),
      //               title: const Text('Terms & Conditions'),
      //               onTap: () {
      //               },
      //             ),
      //           ],
      //         ),
      //       ),
      //       // This container holds the align
      //       Container(
      //         // This align moves the children to the bottom
      //           child: Align(
      //               alignment: FractionalOffset.bottomCenter,
      //               child: Container(
      //                 child: Column(
      //                   children: <Widget>[
      //                     Divider(),
      //                     ListTile(
      //                         leading: Icon(Icons.help),
      //                         title: Text('About Us',style: TextStyle(fontSize: 18),)),
      //                   ],
      //                 ),
      //               )
      //           )
      //       )
      //     ],
      //   ),
      // ),

      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Main Options
            Container(
              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
              height: 216,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1,), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 4 - 6,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/icons/send_money.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text("সেন্ড মানি"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 4 - 6,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/icons/mobile_recharge.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text("মোবাইল রিচার্জ"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 4 - 6,
                            decoration: BoxDecoration(

                              image: DecorationImage(image: AssetImage("assets/images/icons/cash_out.png"),
                                fit: BoxFit.cover,
                              ),

                            ),
                          ),
                          Text("ক্যাশ আউট"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 4 - 6,
                            decoration: BoxDecoration(

                              image: DecorationImage(image: AssetImage("assets/images/icons/payment.png"),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Text("পেমেন্ট"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 4 - 6,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/icons/add_money.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text("অ্যাড মানি"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 4 - 6,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/icons/pay_bill.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text("পে বিল"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 4 - 6,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/icons/tickets.jpg"),
                                fit: BoxFit.cover,
                              ),

                            ),
                          ),
                          Text("টিকেট"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width / 4 - 6,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/icons/more.png"),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Text("আরো"),
                        ],
                      ),
                    ],
                  ),

                ],
              ),

            ),
            ///My Bkash
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 115,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(1.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1,), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("আমার বিকাশ",style: TextStyle(color: Colors.black54),),
                        ),
                        Icon(Icons.arrow_drop_up,size: 30,color: Colors.black54,),
                      ],
                    ),
                    Divider(height: 1,color: Colors.grey,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 38,
                                  width: 34,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(image: AssetImage("assets/images/icons/saved_bills.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Text("Saved Bills"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0,top: 4.0,right: 14.0,bottom: 4.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 38,
                                  width: 34,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(image: AssetImage("assets/images/icons/priyo_numbers.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Text("Priyo Numbers"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
            ),
            ///Slider
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/banner.jpg",),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ///Suggestion
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 114,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(1.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1,), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("সাজেশন",style: TextStyle(color: Colors.black54),),
                        ),
                        Icon(Icons.arrow_drop_up,size: 30,color: Colors.black54,),
                      ],
                    ),
                    Divider(height: 1,color: Colors.grey,),
                    Container(
                      height: 80,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 18.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/btcl.jpeg",),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Text("বিটিসিএল",),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 30.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/bdnews24.jpeg",),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Text("বিটিসিএল",style: TextStyle(color: Colors.black54),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 30.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/ajker_deal.png",),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Text("ফ্রি ডেলিভারি ",style: TextStyle(color: Colors.black54),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 30.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/ajker_deal.png",),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Text("ফ্রি ডেলিভারি ",style: TextStyle(color: Colors.black54),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 30.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/images/ajker_deal.png",),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Text("ফ্রি ডেলিভারি ",style: TextStyle(color: Colors.black54),),
                            ],
                          ),
                        ),

                      ],
                        ),
                    ),
                  ],
                ),

              ),
            ),
            ///Offer
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 215,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(1.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1,), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("অফার",style: TextStyle(color: Colors.black54),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("সব দেখুন ",style: TextStyle(color: Colors.black54),),
                        ),

                      ],
                    ),
                    Divider(height: 1,color: Colors.grey,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 4.0,top: 6.0),
                            child: Container(
                              height: 160,
                              width: 150,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(3.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 1,), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 105,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/recharge_dhamaka.png",),
                                              fit: BoxFit.fill,
                                            ),
                                          ),

                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Text("offer name",style: TextStyle(color:Colors.black87),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0,bottom: 4.0),
                                          child: Text("Brand",style: TextStyle(color:Colors.black45),),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0,top: 6.0),
                            child: Container(
                              height: 160,
                              width: 150,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(3.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 1,), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 105,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/hungry_naki.png",),
                                              fit: BoxFit.fill,
                                            ),
                                          ),

                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Text("offer name",style: TextStyle(color:Colors.black87),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0,bottom: 4.0),
                                          child: Text("Brand",style: TextStyle(color:Colors.black45),),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0,top: 6.0),
                            child: Container(
                              height: 160,
                              width: 150,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(3.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 1,), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 105,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/bdnews24.jpeg",),
                                              fit: BoxFit.fill,
                                            ),
                                          ),

                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Text("offer name",style: TextStyle(color:Colors.black87),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0,bottom: 4.0),
                                          child: Text("Brand",style: TextStyle(color:Colors.black45),),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0,top: 6.0),
                            child: Container(
                              height: 160,
                              width: 150,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(3.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 1,), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 105,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/btcl.jpeg",),
                                              fit: BoxFit.fill,
                                            ),
                                          ),

                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Text("offer name",style: TextStyle(color:Colors.black87),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0,bottom: 4.0),
                                          child: Text("Brand",style: TextStyle(color:Colors.black45),),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0,top: 6.0),
                            child: Container(
                              height: 160,
                              width: 150,
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(3.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 3,
                                          offset: Offset(0, 1,), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 105,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("assets/images/ajker_deal.png",),
                                              fit: BoxFit.fill,
                                            ),
                                          ),

                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Text("offer name",style: TextStyle(color:Colors.black87),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.0,bottom: 4.0),
                                          child: Text("Brand",style: TextStyle(color:Colors.black45),),
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),



                        ],
                      ),
                    ),

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

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        flexibleSpace: SafeArea(

        child: Row(
          children: [

           Padding(
             padding: const EdgeInsets.only(top: 12.0,left: 24.0),
             child: CircleAvatar(
              backgroundColor: Colors.white,
               child: Icon(Icons.person,size: 42,color: Colors.pink,),
               radius: 24,
        ),
           ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0,left: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text("Account Name",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
                  ),
                  SizedBox(height: 6,),
                  Container(
                    width: 200,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            width: 25,
                            height: 25,
                            padding: EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.pink,
                              backgroundImage: AssetImage('assets/images/icons/currency.png'),
                            ),
                          ),
                        ),
                        Text('ব্যালেন্স দেখুন ',
                            style: TextStyle(
                                color: Colors.pink.shade500,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600)),

                      ],
                    ),
                  )
                ],
              ),
            ),


          ],
        ),

        ),
        actions: [
    Padding(
    padding: const EdgeInsets.only(top: 12.0, right: 12.0),
    child: Container(
    width: 50, height: 50, child: Image.asset('assets/images/icons/fly.png')),
    )
    ]
    );
  }
}


