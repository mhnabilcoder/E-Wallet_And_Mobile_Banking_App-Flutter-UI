import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ইনবক্স"),
          centerTitle: true,
        ),
        body: DefaultTabController(
            length: 2,
            initialIndex: 1,
            child: Column(children: [
              Container(
                child: TabBar(
                    labelColor: Colors.redAccent,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: "নোটিফিকেশান",
                      ),
                      Tab(
                        text: "লেনদেনসমূহ",
                      ),
                    ]),
              ),
              Container(
                color: Colors.greenAccent,
                height: 400, //height of TabBarView
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      child: Text('Display Tab 1', style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      child: Text('Display Tab 2', style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ])));
  }
}
