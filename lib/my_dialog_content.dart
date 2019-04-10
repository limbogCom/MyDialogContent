import 'package:flutter/material.dart';

class MyDialogContent extends StatefulWidget {
  MyDialogContent({
    Key key,
    this.countries,
  }): super(key: key);

  final List<String> countries;

  @override
  _MyDialogContentState createState() => new _MyDialogContentState();
}

class _MyDialogContentState extends State<MyDialogContent> {
  int _selectedIndex = 0;

  @override
  void initState(){
    super.initState();
  }

  _getContent(){
    if (widget.countries.length == 0){
      return new Container();
    }

    return new Column(
        children: new List<RadioListTile<int>>.generate(
            widget.countries.length,
                (int index){
              return new RadioListTile<int>(
                value: index,
                groupValue: _selectedIndex,
                title: new Text(widget.countries[index]),
                onChanged: (int value) {
                  setState((){
                    _selectedIndex = value;
                    //print(_selectedIndex);
                  });
                },
              );
            }
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return _getContent();
  }
}