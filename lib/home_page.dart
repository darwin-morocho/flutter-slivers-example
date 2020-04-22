import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black12,
        child: CustomScrollView(
          slivers: <Widget>[
            // GridView.count(
            //   crossAxisCount: 3,
            //   children: <Widget>[
            //     Container(
            //       color: Colors.blue,
            //     )
            //   ],
            // ),

            SliverSafeArea(
              bottom: false,
              sliver: SliverGrid.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.red,
                  )
                ],
              ),
            ),

            // ListView(
            //   children: <Widget>[
            //     Text("data"),
            //     Text("data"),
            //     Text("data"),
            //     Text("data"),
            //   ],
            // )
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    height: 100,
                    color: Colors.red,
                    margin: EdgeInsets.only(top: 10),
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),

            // GridView.builder(gridDelegate: null, itemBuilder: (_,index){

            // }, itemCount: 40,),

            SliverGrid(
              delegate: SliverChildBuilderDelegate((_, index) {
                return Container(
                  color: Colors.purple,
                );
              }, childCount: 50),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 50,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 16/9
              ),
            ),

            SliverToBoxAdapter(
              child: Container(
                height: 200,
                margin: EdgeInsets.all(10),
                color: Colors.redAccent,
                child: Row(
                  children: <Widget>[
                    CupertinoButton(
                      child: Text("Button 1"),
                      onPressed: () {},
                    ),
                    CupertinoButton(
                      child: Text("Button 2"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),

            // ListView.builder(
            //   itemBuilder: (_,index){
            //     return Container(
            //       child: Text("item $index"),
            //     );
            //   },
            //   itemCount: 100,
            // )
            SliverSafeArea(
              top: false,
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, index) {
                    return Container(
                      color: Colors.black38,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(15),
                      child: Text("sliverList 2: $index"),
                    );
                  },
                  childCount: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
