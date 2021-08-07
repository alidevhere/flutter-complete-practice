import 'package:flutter/material.dart';

import 'blocPattern.dart';
import 'cache_image.dart';
import 'getIt.dart';
import 'web_view_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorials',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the Main widget.
        '/': (context) => Main(),
        '/cacheImages': (context) => cacheImage(),
        '/webView': (context) => MyWebView(),
        '/github': (context) => GithubScreen(),
        '/google': (context) => GoogleScreen(),
        '/youtube': (context) => YouTubeScreen(),
        '/blocPattern': (context) => MyBlocPattern(),
        '/getIt': (context) => MyGetIt(),
      },
      // home: Main(),
    );
  }
}

Widget MyDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        ListTile(
          title: Padding(
            padding: EdgeInsets.all(20),
          ),
        ),
        ListTile(
          title: Padding(
            padding: EdgeInsets.all(20),
            child: Text('Cached Network Images'),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/cacheImages');
          },
        ),
        ListTile(
          title: Padding(
            padding: EdgeInsets.all(20),
            child: Text('Flutter Web View Plugin'),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/webView');
          },
        ),
        ListTile(
          title: Padding(
            padding: EdgeInsets.all(20),
            child: Text('Flutter bloc pattern'),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/blocPattern');
          },
        ),
        ListTile(
          title: Padding(
            padding: EdgeInsets.all(20),
            child: Text('Flutter Get It'),
          ),
          onTap: () {
            Navigator.pop(context);
            getIt.registerSingleton<AppModel>(AppModelImplementation(),
                signalsReady: true);
            Navigator.pushNamed(context, '/getIt');
          },
        ),
      ],
    ),
  );
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black, title: Text('Final Presentation')),
        body: Center(
          child: Text(
            'Final Presentation\n\n2018-CS-92\n\nMohammad Ali Ashraf',
            style: new TextStyle(fontSize: 20.0),
          ),
        ),
        drawer: MyDrawer(context));
  }
}
