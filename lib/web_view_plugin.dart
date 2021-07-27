import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text(
          "Web View",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              TextButton(
                child: Text('GOOGLE'),
                onPressed: () {
                  Navigator.pushNamed(context, '/google');
                },
              ),
              TextButton(
                child: Text('Youtube'),
                onPressed: () {
                  Navigator.pushNamed(context, '/youtube');
                },
              ),
              TextButton(
                  child: Text('Github'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/github');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class GoogleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Google",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://google.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class GithubScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://github.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}

class YouTubeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "YouTube",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: "https://m.youtube.com",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
