import 'package:flutter/material.dart';
import 'package:list_app/screen/add_screen.dart';
import 'package:list_app/screen/add_screen.dart';

class MovielistScreen extends StatefulWidget {
  @override
  _MovielistScreenState createState() => _MovielistScreenState();
}

class _MovielistScreenState extends State<MovielistScreen> {
  Widget _buildTask(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          ListTile(
            title: Text('Movie Name'),
            subtitle: Text('Director Name'),
            trailing: Checkbox(
              onChanged: (value) {
                print('value');
              },
              activeColor: Theme.of(context).primaryColor,
              value: true,
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(Icons.add),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddScreen())),
        ),
        body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 80.0),
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'My Movies',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        '1 of 10',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ]),
              );
            }
            ;
            return _buildTask(index);
          },
        ));
  }
}