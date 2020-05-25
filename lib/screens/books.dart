import 'package:flutter/material.dart';
import 'package:store_app/screens/subscreens/book_tab.dart';
import 'package:store_app/widgets/drawer.dart';

class BookScreen extends StatefulWidget {
  static const String routeName = '/books';

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  TextStyle tabFontNorm = TextStyle(fontSize: 16, );
  TextStyle tabFontSlctd = TextStyle(fontSize: 20, 
  fontWeight: FontWeight.bold);

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }),
          backgroundColor: Colors.white,
        ),
        drawer: AppDrawer(),
        body: Column(
          children: <Widget>[
            Center(
                child: Text(
              'Popular',
              style: Theme.of(context).textTheme.title,
            )),
            new Container(
              decoration: new BoxDecoration(color: Colors.white),
              child: new TabBar(
                indicatorColor: Colors.transparent,
                indicatorWeight: 0.0001,
                unselectedLabelStyle: tabFontNorm,
                unselectedLabelColor:  Color(0xffc3ced5),
                labelPadding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                labelStyle: tabFontSlctd,
                labelColor: Color(0xff00203f),
                controller: _controller,
                tabs: [
                  new Tab(
                    text: 'History',
                  ),
                  new Tab(
                    text: 'Business',
                  ),
                  new Tab(
                    text: 'Romance',
                  ),
                  new Tab(
                    text: 'Design',
                  ),
                ],
                isScrollable: true,
              ),
            ),
            new Expanded(
              child: new TabBarView(
                controller: _controller,
                children: <Widget>[
                  new Card(
                    child: new ListTile(
                      leading: const Icon(Icons.home),
                      title: new TextField(
                        decoration: const InputDecoration(
                            hintText: 'Search for address...'),
                      ),
                    ),
                  ),
                  new Card(
                    child: new ListTile(
                      leading: const Icon(Icons.location_on),
                      title:
                          new Text('Latitude: 48.09342\nLongitude: 11.23403'),
                      trailing: new IconButton(
                          icon: const Icon(Icons.my_location),
                          onPressed: () {}),
                    ),
                  ),
                  DetailsPage('Romance'),
                  DetailsPage('Design')
                ],
              ),
            ),
          ],
        ));
  }
}
