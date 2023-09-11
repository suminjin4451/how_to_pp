import 'package:flutter/material.dart';

class RivalInfo extends StatelessWidget {
  const RivalInfo({super.key, required this.userName, required this.songPP});

  final String userName;
  final int songPP;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            Icons.person,
            size: 50,
          ), // TODO: Replace it with real profile picture
          Expanded(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$userName"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rival PP"),
                      Text("${songPP}PP"),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
