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
                child: FlutterLogo(),
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
          padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
          child: ListTile(
            tileColor: Colors.greenAccent,
            leading: CircleAvatar(

              backgroundColor: Colors.grey.shade100,
              radius: 30.0,
            ),
            title: Text("Name"),
            subtitle: Text("0xxxx  \nTrans ID:"),
             isThreeLine: true,
            trailing: Text("20/12/2021"),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
          child: ListTile(
            tileColor: Colors.greenAccent,
            title: Text("Name"),
            leading: FlutterLogo(),
            subtitle: Text("Trans ID: xxxx"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
          child: ListTile(
            isThreeLine: true,
            tileColor: Colors.greenAccent,
            title: Text("Name"),
            leading: FlutterLogo(),
            subtitle: Text("Trans ID: xxxx"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0,bottom: 4.0),
          child: ListTile(
            tileColor: Colors.greenAccent,
            title: Text("Name"),
            leading: FlutterLogo(),
            subtitle: Text("Trans ID: xxxx"),
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
                    height: 90,
                    width: 60,
                    color: Colors.redAccent,
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
                              child: Text('Offer Name',style: TextStyle(fontSize: 16),),
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
                                    child: Text("datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata")),
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



