import 'package:flutter/material.dart';
import 'package:drop_cap_text/drop_cap_text.dart';

class DetailsPage extends StatelessWidget {
  final String sectionName;
  final String  storyText = 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. \n\n eaking want True Collected leave peculiar fulfilled position packages an genius now within set hope had agreement it on it such dwelling said has mean agreed giving Subjects Projecting melancholy post so happening Chicken up this simplicity myself means formerly wont like pretty by We too mrs little down asked via produce since excited am like do wish until ecstatic simplicity uneasy for explained had be material suitable like has Unpleasant tended her announcing ask wish sent society reasonably mean Home disposed he less how Off my you Could exercise directly estimating speedily relation understood here Sir said unsatiable mutual next lady suitable are back prudent so why doubt are could ye existence dull new wrong curiosity ye appearance entreaties do warmly you ';

  DetailsPage(this.sectionName);

  @override
  Widget build(BuildContext context) {
    
        return ListView(
                 children: <Widget>[
                // Text(
                //   sectionName,
                //   style: Theme.of(context).textTheme.display1,
                // ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Image.asset('assets/images/book_cover1.jpg'),
                      height: 200,
                      padding: EdgeInsets.only(right: 20),
                    ),
                    Container(
                        child: Image.asset('assets/images/book_cover2.jpg'),
                        height: 120),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Nothung Ventures',
                        style: Theme.of(context).textTheme.title),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Color(0xFFFFCC52),
                          ),
                          Text('4.7')
                        ],
                      ),
                    ),
                  ],
                ),
                Text('Jeffrey Archer', style: Theme.of(context).textTheme.subtitle),
                Row(
                  children: <Widget>[
                    Container(child: Image.asset('assets/images/circle_stuff.jpg'),
                    width:70),
                    Column(
                      children: <Widget>[
                        Text('7K'),
                        Text('Writers')
                      ],
                    )
                  ],
                ),
                DropCapText(storyText)
          ],
      
    
        );
  }
}
