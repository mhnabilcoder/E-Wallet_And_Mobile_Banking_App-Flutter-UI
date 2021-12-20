import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Menu Bar
            SafeArea(child : Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffe02469),
              child: Row(
                children: [

                ],
              ),
            )),
            ///Main Options
            Container(
              height: 210,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 40,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(image: AssetImage("assets/images/icons/send_money.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Text("সেন্ড মানি"),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 45,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  image: DecorationImage(image: AssetImage("assets/images/icons/mobile_recharge.png"),
                                  fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Text("মোবাইল রিচার্জ"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 40,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(image: AssetImage("assets/images/icons/cash_out.png"),
                                      fit: BoxFit.fill,
                                    ),

                                  ),
                                ),
                              ),
                              Text("ক্যাশ আউট"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 40,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(image: AssetImage("assets/images/icons/payment.png"),
                                    ),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                              ),
                              Text("পেমেন্ট"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 40,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(image: AssetImage("assets/images/icons/add_money.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Text("অ্যাড মানি"),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 45,
                                width: 32,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  image: DecorationImage(image: AssetImage("assets/images/icons/pay_bill.png"),
                                  fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Text("পে বিল"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 45,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(image: AssetImage("assets/images/icons/savings.png"),
                                      fit: BoxFit.fill,
                                    ),

                                  ),
                                ),
                              ),
                              Text("সেভিংস"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(image: AssetImage("assets/images/icons/more.png"),
                                    ),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                              ),
                              Text("আরো"),
                            ],
                          ),
                        ),
                      ],
                    ),
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
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey.shade100,
                    ),
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
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,

            ),
            ///Suggestion
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 112,
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
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey.shade100,
                    ),
                    Row(
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
                                  color: Colors.amber,
                                  image: DecorationImage(image: AssetImage("assets/images/btcl.jpeg",),
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
                                  color: Colors.amber,
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
                                  color: Colors.amber,
                                  image: DecorationImage(image: AssetImage("assets/images/ajker_deal.png",),
                                    fit: BoxFit.fill,
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
                                  color: Colors.amber,
                                  image: DecorationImage(image: AssetImage("assets/images/ajker_deal.png",),
                                    fit: BoxFit.fill,
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
                                  color: Colors.amber,
                                  image: DecorationImage(image: AssetImage("assets/images/ajker_deal.png",),
                                    fit: BoxFit.fill,
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
                  ],
                ),

              ),
            ),
            ///Offer
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 220,
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
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey.shade100,
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
