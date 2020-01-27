import 'package:flutter/material.dart';
import 'package:rodo/model/post.dart';
import 'package:rodo/network_requests.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Future<Post> post;

  @override
  void initState(){
    super.initState();
    post = fetchPostObject();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('HomeScreen'),
      ),
      body: Center(
         child: FutureBuilder<Post>(
            future: post,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.title);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          )
      ),
    );
  }
}