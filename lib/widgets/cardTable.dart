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
              color: Colors.blue,
              icon: Icons.border_all,
              title: 'general',
            ),
            _SingleCard(
              color: Colors.pink,
              icon: Icons.car_rental,
              title: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              title: 'general',
            ),
            _SingleCard(
              color: Colors.pink,
              icon: Icons.car_rental,
              title: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              title: 'general',
            ),
            _SingleCard(
              color: Colors.pink,
              icon: Icons.car_rental,
              title: 'Transport',
            ),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.border_all,
              title: 'general',
            ),
            _SingleCard(
              color: Colors.pink,
              icon: Icons.car_rental,
              title: 'Transport',
            ),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
          radius: 30,
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(color: color, fontSize: 10),
        ),
      ],
    ));
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
