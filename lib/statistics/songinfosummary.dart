import 'package:flutter/material.dart';

class SongInfoSummary extends StatefulWidget {
  String imageUrl;
  String songName;
  int songPP;
  int ppDiff;
  String songDifficulty;

  SongInfoSummary(
      {super.key,
      required this.imageUrl,
      required this.songName,
      required this.songPP,
      required this.songDifficulty,
      required this.ppDiff});

  @override
  State<SongInfoSummary> createState() => _SongInfoSummaryState();
}

class _SongInfoSummaryState extends State<SongInfoSummary> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          child: Image.asset("assets/images/trashcollapse.jpg",
              width: 50, height: 50, fit: BoxFit.cover),
        ),
        Flexible(
          flex: 80,
          fit: FlexFit.tight,
          child: Container(
            margin: EdgeInsets.all(3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  "${widget.songName}",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  overflow: TextOverflow.ellipsis,
                  "${widget.songDifficulty}",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 25,
          fit: FlexFit.loose,
          child: Container(
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Text(
                  "${widget.songPP}PP",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                Text("${widget.ppDiff}", style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
        )
      ],
    );
  }
}
