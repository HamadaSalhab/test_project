import 'package:flutter/material.dart';
import '../models/workspace.dart';

class WorkspaceCard extends StatelessWidget {
  final Workspace workspace;

  const WorkspaceCard({super.key, required this.workspace});

  @override
  Widget build(BuildContext context) {
    const kTextColor = Colors.white;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: workspace.colors,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                workspace.name,
                style: const TextStyle(
                  color: kTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 8,
            right: 8,
            child: Icon(Icons.more_horiz, color: kTextColor),
          ),
        ],
      ),
    );
  }
}
