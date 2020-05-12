import 'package:flutter/material.dart';
import '../homePage.dart';


class RandomWords extends StatefulWidget {
  final String _emailAddress;
  RandomWords(this._emailAddress);


  @override
  RandomWordsState createState() => RandomWordsState();
}


class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommendations'),
        actions: <Widget>[
          // Add 3 lines from here...
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
          IconButton(icon: Icon(Icons.home),onPressed: () =>  Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => MyHomePage(widget._emailAddress)))
          ),
        ],
      ),

      body: _buildSuggestions(),

    );
  }
  final _myWords = <String>["Tea Powder", "Sugar", "Milk", "Milk Powder","Mineral Water", "Tea Bags", "Good Day", "Marie", "Cookies", "Cup-cakes"];

  final _suggestions = <String>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final Set<String> _saved = Set<String>();

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(_myWords); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(String pair) {
    final bool alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair,
        style: _biggerFont,
      ),
      trailing: Icon(
        // Add the lines from here...
        alreadySaved ? Icons.check_box : Icons.check_box_outline_blank,
        color: alreadySaved ? null : null,
      ),
      onTap: () {
        // Add 9 lines from here...
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(   // Add 20 lines from here...
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = _saved.map(
                (String pair) {
              return ListTile(
                title: Text(
                  pair,
                  style: _biggerFont,
                ),
              );
            },
          );
          final List<Widget> divided = ListTile
              .divideTiles(
            context: context,
            tiles: tiles,
          )
              .toList();
          return Scaffold(         // Add 6 lines from here...
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ),                       // ... to here.
    );
  }
}

