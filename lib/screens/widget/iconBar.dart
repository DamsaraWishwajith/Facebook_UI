import 'package:flutter/material.dart';

class IconBar extends StatelessWidget {
  const IconBar({super.key, required this.pp});

  final String pp;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TabIcon(icon: Icons.home),
        TabIcon(icon: Icons.people),
        TabIcon(icon: Icons.ondemand_video_outlined),
        TabIcon(icon: Icons.notifications),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Stack(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(pp)),
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade700,
                    radius: 6,
                    child: Icon(Icons.menu, color: Colors.white, size: 8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TabIcon extends StatelessWidget {
  const TabIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(icon, color: Colors.white, size: 30);
  }
}
