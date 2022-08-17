import 'package:flutter/material.dart';
import 'package:feed_dapp/services/feed_service.dart';
import 'package:feed_dapp/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FeedService(),
      child: MaterialApp(
        title: 'DApp Feed',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: const ColorScheme.dark(primary: Colors.cyanAccent)),
        home: const HomePage(),
      ),
    );
  }
}
