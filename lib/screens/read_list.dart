import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:store_app/screens/books.dart';

class ReadList extends StatefulWidget {
  static const String routeName = '/read_list';

  @override
  _ReadListState createState() => _ReadListState();
}

class _ReadListState extends State<ReadList> {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
        panel: Scaffold(
          appBar: AppBar(
            title: Row(
              children: <Widget>[
                Icon(Icons.remove_red_eye),
                Text('View All', style: Theme.of(context).textTheme.caption)
              ],
            ),
            actions: <Widget>[
              GestureDetector(
                child: Icon(Icons.more_horiz),
                onTap: () {},
              )
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            backgroundColor: Colors.white,
          ),



          body: Container(
            child: ListView(
              children: <Widget>[
                GestureDetector(
                  child: Card(
                    elevation: 10,
                    child: Row(
                      children: <Widget>[
                        Container(
                            child: Image.asset('assets/images/book_cover3.jpg'),
                            height: 120),
                        Column(
                          children: <Widget>[
                            Text('Populous',
                                style: Theme.of(context).textTheme.title),
                            Text('Night Sahari',
                                style: Theme.of(context).textTheme.body1),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFFCC52),
                                ),
                                Text('4.7')
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: LinearProgressIndicator(value: 0.7,
                                  backgroundColor: Colors.lightBlue[10],),
                                  width: 200
                                ),
                                Text('70', )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BookScreen()));
                  },
                )
              ],
            ),
          decoration: BoxDecoration(color: Colors.white),
          ),
        backgroundColor: Colors.transparent
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/person_reading.jpeg'),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.blue.withOpacity(0.5),BlendMode.darken),)),
        ),
        minHeight: 210,
        color: Colors.transparent,
        boxShadow: [
        BoxShadow(
          blurRadius: 0.0,
          color: Colors.transparent,
        ),
      ],
        );
  }
}
