import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,

      body: ListView(
        children: <Widget>[

          Container(
            padding: EdgeInsets.only(top: 10.0,right: 15.0,bottom: 10.0,left: 15.0),
            width: MediaQuery.of(context).size.width,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                new Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90.0),
                    image: DecorationImage(
                        image: AssetImage("assets/a.jpg"),
                      fit: BoxFit.cover
                    )
                  ),
                ),//container end

                IconButton(
                  icon: new Icon(Icons.menu),
                  onPressed: ()=>debugPrint("menu"),
                  iconSize: 27.0,
                  color: Colors.black,
                )

              ],
            ),
          ),//first container

          new Padding(
              padding: EdgeInsets.only(top: 15.0),
            child: TabBar(
                controller: tabController,
              indicatorColor: Colors.redAccent,
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.black.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[
                new Tab(
                  child: new Text(
                    "Fruits",
                    style: TextStyle(
                      fontSize: 33.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                new Tab(
                  child: new Text(
                    "Apple",
                    style: TextStyle(
                        fontSize: 33.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                new Tab(
                  child: new Text(
                    "Lichi",
                    style: TextStyle(
                        fontSize: 33.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                new Tab(
                  child: new Text(
                    "Banana",
                    style: TextStyle(
                        fontSize: 33.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),

              ],
            ),
          ),//pading end

          new Container(

            height: MediaQuery.of(context).size.height-200.0,
            child: new TabBarView(
              controller: tabController,
              children: <Widget>[

              ],
            ),
          ),//container for tabbar view end
        ],
      ),//list view end

      bottomNavigationBar: new Material(
        child: new Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
          height: 40.0,
          width: MediaQuery.of(context).size.width,
        ),
      ),

    );
  }
}
