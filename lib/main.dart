import 'package:flutter/material.dart';

import 'blocPattern.dart';
import 'cache_image.dart';
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
      },
      // home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Final Presentation')),
      body: Center(child: Text('WELCOME')),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(child: Text('Header Area')),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text('Cached Network Images'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/cacheImages');
              },
            ),
            ListTile(
              title: Text('Flutter Web View Plugin'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/webView');
              },
            ),
            ListTile(
              title: Text('Flutter bloc pattern'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/blocPattern');
              },
            ),
          ],
        ),
      ),
    );
  }
}
