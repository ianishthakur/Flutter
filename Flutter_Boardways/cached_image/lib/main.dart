import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String imageUrl =
      'https://image.shutterstock.com/image-photo/houses-suburb-summer-north-america-600w-1514333600.jpg';
  final String imageUrl2 =
      'https://image.shutterstock.com/image-photo/clean-home-healthy-front-yard-600w-1088635316.jpg';

  final CacheManager cacheManager = CacheManager(
    Config(
      'imageKey',
      maxNrOfCacheObjects: 20,
      stalePeriod: const Duration(days: 2),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Caching Images'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CachedNetworkImage(
              cacheKey: 'first_image',
              cacheManager: cacheManager,
              key: UniqueKey(),
              imageUrl: imageUrl,
              width: MediaQuery.of(context).size.width,
              height: 250,
              placeholder: (context, url) => const ColoredBox(
                color: Colors.black12,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.amber,
                  ),
                ),
              ),
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => const ColoredBox(
                color: Colors.black12,
                child: Icon(Icons.error, size: 50, color: Colors.red),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              key: UniqueKey(),
              radius: 100,
              backgroundColor: Colors.black12,
              backgroundImage: CachedNetworkImageProvider(imageUrl2,
              cacheManager: cacheManager,
              cacheKey: 'second_image',),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: clearCache, child: const Text('Clear Cache')),
            ElevatedButton(
                onPressed: () {}, child: const Text('Clear First Image ')),
            ElevatedButton(
                onPressed: () {}, child: const Text('Clear Second Image')),
          ],
        ),
      ),
    );
  }

  void clearCache() {
    imageCache.clear();
    imageCache.clearLiveImages();
    cacheManager.emptyCache();
    
    setState(() {});
  }
}
