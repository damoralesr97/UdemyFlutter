import 'package:flutter/material.dart';
import 'package:qr_reader/widgets/widgets.dart';

class DireccionesHistorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScanTiles(tipo: 'http');
  }
}
