import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
            title: Text("ইনবক্স"),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(image: AssetImage('assets/images/icons/fly.png')),
              ),
            ],
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              tabs: [
                Tab(
                  text: "নোটিফিকেশান",
                ),
                Tab(
                  text: "লেনদেনসমূহ",
                ),
              ]),
          ),
        body: TabBarView(
            children: <Widget>[
              NotificationsPage(),
              TransactionsPage(),
],

    ),
    ));
  }
}

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          NotificationCard(),
          NotificationCard(),
          NotificationCard(),
        ],
      ),
    );
  }
}

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 2.0,bottom: 2.0),
          child: ListTile(
            tileColor: Colors.grey.shade100,
            leading: CircleAvatar(

              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.person,color: Colors.white,size: 44,),
              radius: 30.0,
            ),
            title: Text("ক্যাশ ইন ",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black87),),
            subtitle: Text("015098765432   \nTrans ID: 8LJ6v298",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
             isThreeLine: true,
            trailing: Text("30/1/2021"),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0,bottom: 2.0),
          child: ListTile(
            tileColor: Colors.grey.shade100,
            leading: CircleAvatar(

              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.person,color: Colors.white,size: 44,),
              radius: 30.0,
            ),
            title: Text("ক্যাশ আউট ",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black87),),
            subtitle: Text("0138765432658   \nTrans ID: 90Ck8v298",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            isThreeLine: true,
            trailing: Text("26/1/2021"),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0,bottom: 2.0),
          child: ListTile(
            tileColor: Colors.grey.shade100,
            leading: CircleAvatar(

              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.person,color: Colors.white,size: 44,),
              radius: 30.0,
            ),
            title: Text("মোবাইল রিচার্জ ",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black87),),
            subtitle: Text("012298765432   \nTrans ID: 296JK6v9D",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            isThreeLine: true,
            trailing: Text("20/1/2021"),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2.0,bottom: 2.0),
          child: ListTile(
            tileColor: Colors.grey.shade100,
            leading: CircleAvatar(

              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.person,color: Colors.white,size: 44,),
              radius: 30.0,
            ),
            title: Text("সেন্ড মানি  ",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black87),),
            subtitle: Text("Shakib  \nTrans ID: Zh786v298",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
            isThreeLine: true,
            trailing: Text("16/1/2021"),

          ),
        ),
      ],

    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 280,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/offer_bil.png",),
                  fit: BoxFit.fill,
              ),
            ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 60,
                    width: 60,

                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/icons/bkash_icon.png",),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 90,
                    width: 310,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text('বিল বিকাশ করুন চার্জ ছাড়াই ',style: TextStyle(fontSize: 16),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text("20/12/2021"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 50,
                                    child: Text("এখন থেকে বিকাশ এ পে বিল সম্পূর্ণ ফ্রি এবং পে বিল করলেই পাবেন বিকাশ পয়েন্টস ")),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 1,), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}



