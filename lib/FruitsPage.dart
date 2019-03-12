import 'package:flutter/material.dart';

class FruitPage extends StatefulWidget {
  @override
  _FruitPageState createState() => new _FruitPageState();
}

class _FruitPageState extends State<FruitPage> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            new Column(
              children: <Widget>[
                getCard("assets/a.jpg", "Apple", "53.", true),
                getCard("assets/b.jpg", "Apple", "53.", true),
                getCard("assets/c.jpg", "Apple", "53.", true),
                getCard("assets/d.jpg", "Apple", "53.", true),
                getCard("assets/e.jpg", "Apple", "53.", true),
              ],
            ),
            new Column(
              children: <Widget>[
                SizedBox(height:45.0),
                getCard("assets/f.jpg", "Lichi", "63.0", false),
                getCard("assets/g.jpg", "Lichi", "63.0", false),
                getCard("assets/h.jpg", "Lichi", "63.0", false),
                getCard("assets/i.jpg", "Lichi", "63.0", false),
                getCard("assets/j.jpg", "Lichi", "63.0", false)
              ],
            )


          ],
        )

      ],
    );
  }

  Widget getCard(String imagePath,String name,String price,bool iffab){
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: new Container(
        height: 200.0,
        width: (MediaQuery.of(context).size.width/2)-20.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2.0
            )
          ]
        ),//box decoration
        child: new Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),topRight: Radius.circular(10.0)),
                    image: DecorationImage(
                        image: AssetImage(imagePath),
                      fit: BoxFit.cover
                    )
                  ),
                ),//end container
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: iffab ? Icon(Icons.favorite,color: Colors.yellow):Icon(Icons.favorite_border,color: Colors.red,),

                  ),
                ),//end padding
              ],
            ),//Stack end..
            SizedBox(height: 20.0,),
            new Text(
              name,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange
              ),
            ),
            new Text(
              '\$'+price+'each',
                style: TextStyle(
                fontSize: 14.0,
                color: Colors.black
            ),
            )
          ],
        ),
      ),//container
    );
  }

}
