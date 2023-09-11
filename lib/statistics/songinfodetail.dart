import 'package:flutter/material.dart';

import './rivalinfo.dart';

class SongInfoDetail extends StatefulWidget {
  final rivalData;

  SongInfoDetail({super.key, required this.rivalData});

  @override
  State<SongInfoDetail> createState() => _SongInfoDetailState();
}

class _SongInfoDetailState extends State<SongInfoDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        children: [
          Flexible(
            flex: 50,
            child: Column(
              children: [
                Flexible(
                  flex: 50,
                  fit: FlexFit.tight,
                  child: RivalInfo(
                      userName: widget.rivalData[0]["userName"],
                      songPP: widget.rivalData[0]["songPP"]),
                ),
                Flexible(
                  flex: 50,
                  fit: FlexFit.tight,
                  child: RivalInfo(
                      userName: widget.rivalData[1]["userName"],
                      songPP: widget.rivalData[1]["songPP"]),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 50,
            child: Column(
              children: [
                Flexible(
                  flex: 50,
                  fit: FlexFit.tight,
                  child: RivalInfo(
                    userName: widget.rivalData[2]["userName"],
                    songPP: widget.rivalData[2]["songPP"],
                  ),
                ),
                Flexible(
                  flex: 50,
                  fit: FlexFit.tight,
                  child: RivalInfo(
                    userName: widget.rivalData[3]["userName"],
                    songPP: widget.rivalData[3]["songPP"],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
