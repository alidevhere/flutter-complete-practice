import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_presentation_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import 'categories.dart';

class cacheImage extends StatefulWidget {
  cacheImage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<cacheImage> {
  static final customCacheManager = CacheManager(
    Config(
      'CustomCacheKey',
      stalePeriod: Duration(days: 15),
      maxNrOfCacheObjects: 100,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cache Image',
        home: Scaffold(
          drawer: MyDrawer(context),
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Cache Image'),
            actions: [
              TextButton(
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: clear_cache,
                  child: Text('Clear Cache'))
            ],
          ),
          body: SafeArea(
            child: GridView.extent(
                maxCrossAxisExtent: 120.0,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: listImage.map((e) => buildImage(e)).toList()),
          ),
        ));
  }

  Widget buildImage(ImageNetwork image) {
    return Container(
      child: CachedNetworkImage(
        key: UniqueKey(),
        // cacheManager: customCacheManager,
        imageUrl: image.url,
        fit: BoxFit.cover,
        maxHeightDiskCache: 75,
        maxWidthDiskCache: 75,
        errorWidget: (context, url, error) => Icon(Icons.error),
        placeholder: (context, url) =>
            Center(child: CircularProgressIndicator()),
      ),
    );
  }

  void clear_cache() {
    DefaultCacheManager().emptyCache();
    print('called');
    imageCache.clear();
    imageCache.clearLiveImages();
    setState(() {});
  }
}
