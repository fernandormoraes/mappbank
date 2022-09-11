import 'package:flutter/material.dart';

class CarouselFunctionWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  const CarouselFunctionWidget(
      {required this.title, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all(const CircleBorder()),
            padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
            backgroundColor: MaterialStateProperty.all(
                Colors.grey.shade200), // <-- Button color
            overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.grey.shade200;
              } // <-- Splash color
            }),
          ),
          child: Icon(
            icon,
            color: Colors.black87,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
