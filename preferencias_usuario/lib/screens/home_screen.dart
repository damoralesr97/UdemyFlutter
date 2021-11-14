import 'package:flutter/material.dart';
import 'package:preferencias_usuario/share_prefs/preferencias_usuario.dart';
import 'package:preferencias_usuario/widgets/menu_widget.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomeScreen.routeName;
    return Scaffold(
      appBar: AppBar(
          title: Text('Preferencias de Usuario'),
          backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue),
      drawer: Menu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario: ${prefs.colorSecundario}'),
          Divider(),
          Text('Género: ${prefs.genero}'),
          Divider(),
          Text('Nombre usuario: ${prefs.nombre}'),
          Divider()
        ],
      ),
    );
  }
}
