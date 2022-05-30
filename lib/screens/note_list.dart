import 'package:flutter/material.dart';
import 'package:login2/screens/note_detail.dart';
class NoteList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }
}
class NoteListState extends State<NoteList>{
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body:getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return NoteDetail('Add Note');
          }));
        },
        tooltip: 'add note',
        child: Icon(Icons.add),
      ),
    );
  }
  ListView getNoteListView(){
    //TextStyle titleStyle=Theme.of(context).textTheme.headline6;
    return ListView.builder(
      itemCount: count,
        itemBuilder:(BuildContext context,int position){
        return Card(
          color:Colors.white,
          elevation:2,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text("dummy text"),
            subtitle: Text('dummy sub title'),
            trailing: Icon(Icons.delete,color: Colors.grey,),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return NoteDetail('Edit Note');
              }));
            },
          ),
        );
        }
    );
}
}