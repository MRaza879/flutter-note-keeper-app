import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  String appBarTitle;
  NoteDetail(this.appBarTitle);
  @override
  State<StatefulWidget> createState() {
    return NoteDetailState(this.appBarTitle);
  }
}

class NoteDetailState extends State<NoteDetail> {
  var priorities = ["low", "high"];
  String appBarTitle;
  NoteDetailState(this.appBarTitle);
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  String currentItemSelected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15, left: 10, right: 10),
        child: ListView(
          children: <Widget>[
            ListTile(
                title: DropdownButton(
              items: priorities.map((String dropDownItem) {
                return DropdownMenuItem(
                    value: dropDownItem, child: Text(dropDownItem));
              }).toList(),

              onChanged: (String? newVal) {
                setState(() {
                  this.currentItemSelected = newVal!;
                });
              },
                  value: "low",
            )),
            Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15),
              child: TextField(
                controller: titleController,
                onChanged: null,
                decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: TextField(
                controller:descriptionController,
                onChanged: null,
                decoration: InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 15,bottom: 15),
            child: Row(
              children: [
                Expanded(child: RaisedButton(
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  child: Text(
                    'save',
                    textScaleFactor: 1.5,
                  ),
                  onPressed: (){
                    setState(() {

                    });
                  },
                )),
                Container(width: 5,),
                Expanded(child: RaisedButton(
                  color: Colors.deepPurple,
                  textColor: Colors.white,
                  child: Text(
                    'Delete',
                    textScaleFactor: 1.5,
                  ),
                  onPressed: (){
                    setState(() {

                    });
                  },
                ))
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
