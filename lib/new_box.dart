import 'package:flutter/material.dart';

class NewBox extends StatelessWidget {
  final child;
  const NewBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Center(child: child),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(
              //dark shadow
              color: Color.fromARGB(255, 138, 133, 133),

              blurRadius: 15,
              offset: Offset(5, 5),
            )
          ]),
    );
  }
}
