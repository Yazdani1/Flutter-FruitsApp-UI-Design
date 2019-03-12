import 'package:flutter/material.dart';
import 'FruitsPage.dart';

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
    tabController=TabController(length: 4, vsync: this);
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
                new FruitPage(),
                new FruitPage(),
                new FruitPage(),
                new FruitPage()
              ],
            ),
          ),//container for tabbar view end
        ],
      ),//list view end

      bottomNavigationBar: new Material(
        child: new Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white
          ),
          height: 40.0,
          width: MediaQuery.of(context).size.width,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              new Container(
                padding:EdgeInsets.only(bottom:5.0),
                margin: EdgeInsets.only(left: 10.0),
                child: new Text(
                  "Filter",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 5.0,
                  ))
                ),
              ),//container end

              Icon(
                Icons.search,
                color: Colors.black,
                size: 25.0,
              ),
              Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 25.0,
              ),
              new Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.red,
                ),
                height: 45.0,
                width: 65.0,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Container(
                      padding:EdgeInsets.only(left: 2.0),
                      child: new Text(
                        "12",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white
                        ),
                      ),
                    ),
                    new Container(
                      child: new Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        size: 20.0,
                      ),
                    )

                  ],
                ),
              )

            ],
          ),
        ),
      ),

    );
  }
}
