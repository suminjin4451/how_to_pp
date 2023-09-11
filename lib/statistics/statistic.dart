import 'package:flutter/material.dart';

import './playinfo.dart';
import './songinfodetail.dart';
import './songinfosummary.dart';

class Statistic extends StatefulWidget {
  final itemList;

  const Statistic({super.key, required this.itemList});

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 25, 25, 25),
        constraints: BoxConstraints(maxWidth: 800),
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        transformAlignment: Alignment.center,
        child: DefaultTextStyle(
            style: Theme.of(context).textTheme.bodyMedium ??
                TextStyle(color: Colors.deepPurpleAccent),
            child: ListView.builder(
                itemCount: widget.itemList.length + 1,
                itemBuilder: (c, i) {
                  if (i == 0) {
                    return PlayInfo();
                  } else
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.inverseSurface,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      child: ExpansionTile(
                        title: SongInfoSummary(
                          imageUrl: "",
                          songName: widget.itemList[i - 1]["songName"],
                          songPP: widget.itemList[i - 1]["songPP"],
                          ppDiff: widget.itemList[i - 1]["ppDiff"],
                          songDifficulty: widget.itemList[i - 1]
                              ["songDifficulty"],
                        ),
                        children: [
                          SongInfoDetail(
                              rivalData: widget.itemList[i - 1]["rivalData"])
                        ],
                      ),
                    );
                })),
      ),
    );
  }
}
