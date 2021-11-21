import 'package:flutter/material.dart';
import 'package:newsapp/screens/screens.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/theme/tema.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: miTema,
        title: 'Material App',
        initialRoute: 'tabs',
        routes: {
          'tabs': (_) => TabsScreen(),
        },
      ),
    );
  }
}
