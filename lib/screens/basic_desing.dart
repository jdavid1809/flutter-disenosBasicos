import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  const BasicDesingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/fondo.jpg'),
              width: double.infinity,
            ),
            Title(),
            ButtonSection(),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              child: Text(
                  'Officia pariatur qui magna non elit ex aliqua id sint. In esse veniam esse aute. Commodo Lorem aliquip minim ullamco cupidatat deserunt enim officia ut excepteur ex eu ipsum eu. Sit exercitation in eu nisi.'),
            ),
          ],
        ),
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
      margin: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 10,
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Primer texto visible',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Segundo texto visible',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('47'),
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
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.phone, titulo: 'Call'),
          CustomButton(icon: Icons.room_outlined, titulo: 'Route'),
          CustomButton(icon: Icons.share, titulo: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String titulo;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(
          titulo,
          style: TextStyle(
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
