import 'dart:ui';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.apps,
              text: 'General',
              color: Colors.blue,
            ),
            _SingleCard(
              icon: Icons.directions_bus,
              text: 'Transport',
              color: Colors.deepPurple,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.shopping_bag,
              text: 'Shopping',
              color: Colors.pink,
            ),
            _SingleCard(
              icon: Icons.article,
              text: 'Bills',
              color: Colors.orange,
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              icon: Icons.movie,
              text: 'Entertainment',
              color: Colors.blue.shade600,
            ),
            _SingleCard(
              icon: Icons.food_bank,
              text: 'Grocery',
              color: Colors.green,
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(150),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [
          -0.6,
          0.8,
        ],
        colors: [
          Color.fromRGBO(255, 255, 255, 1),
          color,
        ],
      ),
    );

    return Container(
      margin: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: _CardContent(
              boxDecoration: boxDecoration,
              icon: icon,
              text: text,
              color: color),
        ),
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({
    Key? key,
    required this.boxDecoration,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  final BoxDecoration boxDecoration;
  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _CardBackground(boxDecoration: boxDecoration, icon: icon),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({
    Key? key,
    required this.boxDecoration,
    required this.icon,
  }) : super(key: key);

  final BoxDecoration boxDecoration;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: boxDecoration,
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 30,
        child: Icon(
          icon,
          size: 35,
          color: Colors.white70,
        ),
      ),
    );
  }
}
