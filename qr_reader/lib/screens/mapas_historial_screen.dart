import 'package:flutter/material.dart';
import 'package:qr_reader/widgets/widgets.dart';

class MapaHistorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScanTiles(tipo: 'geo');
  }
}
