import 'package:flutter/material.dart';
import 'package:preferencias_usuario/screens/screens.dart';
import 'package:preferencias_usuario/share_prefs/preferencias_usuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final prefs = new PreferenciasUsuario();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomeScreen.routeName: (BuildContext context) => HomeScreen(),
        SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
      },
    );
  }
}
