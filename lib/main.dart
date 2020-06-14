import 'package:flutter/material.dart';

void main() =>
  runApp(MaterialApp(
    home: PoojaID(),
  ));

class PoojaID extends StatefulWidget {
  @override
  _PoojaIDState createState() => _PoojaIDState();
}

class _PoojaIDState extends State<PoojaID> {

  int increment = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Pooja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.red[800],
        elevation : 0.0,
        ),

      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            increment+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      
      
      
       ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/pooja1.jpg'),
              radius: 40.0,
            ),
          ),
          Divider(
            height:60.0,
            color: Colors.grey[800],
            ),


          Text('Name',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing:2.0,
          ),
        ),
        SizedBox(height:10.0),
          Text('Pooja Panhalekar',
          style: TextStyle(
            color:Colors.amberAccent[200],
            letterSpacing:2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold
            ),
        ),
        SizedBox(height:30.0),
          Text('College Name',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing:2.0,
          ),
        ),
        SizedBox(height:10.0),
          Text('UMIT',
          style: TextStyle(
            color:Colors.amberAccent[200],
            letterSpacing:2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold
            ),
        ),
         SizedBox(height:30.0),
          Text('Level',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing:2.0,
          ),
        ),
        
        SizedBox(height:10.0),
          Text('$increment',
          style: TextStyle(
            color:Colors.amberAccent[200],
            letterSpacing:2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold
            ),
        ),
         SizedBox(height:30.0),
        Row(
          children: <Widget>[
            Icon(
              Icons.email,
              color: Colors.grey[400],
              ),
              
            SizedBox(width:10.0),
            Text('poojaxofficial@gmail.com',
              style: TextStyle(
                color:Colors.grey[400],
                fontSize: 18.0,
                letterSpacing: 1.0,

                ),
            ),


          ],
        ),
        







          ],
        ),
      ),
    );
  }
}
