import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  const ToolBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          Text(
            'facebook',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(flex: 1),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey.shade800,
            child: Icon(Icons.search, size: 20, color: Colors.white),
          ),
          SizedBox(width: 5),
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey.shade800,
            child: Icon(Icons.message, size: 17, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
