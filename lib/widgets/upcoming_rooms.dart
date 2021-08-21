import 'package:flutter/material.dart';

import '../config/palette.dart';
import '../data.dart';

class UpcomingRooms extends StatelessWidget {
  final List<Room> upcomingRooms;

  const UpcomingRooms({Key? key, required this.upcomingRooms})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32.0, 4.0, 4.0, 4.0),
        child: Column(
          children: upcomingRooms
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(e.time),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (e.club.isNotEmpty)
                              Flexible(
                                child: Text(
                                  '${e.club}'.toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.0,
                                      ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            Flexible(
                                child: Text(
                              '${e.name}',
                              overflow: TextOverflow.ellipsis,
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
