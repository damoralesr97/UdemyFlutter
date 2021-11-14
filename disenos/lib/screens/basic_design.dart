import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/landscape.jpeg'),
          ),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Consectetur officia consectetur aliquip in consectetur tempor cillum commodo anim dolor enim qui amet. Incididunt Lorem ipsum fugiat et id aliqua pariatur eu reprehenderit. Lorem magna laboris ea qui sit cupidatat reprehenderit esse pariatur. Velit cillum eu enim amet ullamco reprehenderit id eu. Id deserunt nulla exercitation do.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icono(
            icono: Icons.call,
            descripcion: 'Call',
          ),
          Icono(
            icono: Icons.map,
            descripcion: 'Route',
          ),
          Icono(
            icono: Icons.share,
            descripcion: 'Share',
          )
        ],
      ),
    );
  }
}

class Icono extends StatelessWidget {
  final IconData icono;
  final String descripcion;
  const Icono({
    Key? key,
    required this.icono,
    required this.descripcion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icono,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          descripcion,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
