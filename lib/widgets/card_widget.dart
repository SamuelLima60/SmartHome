import 'dart:math';

import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final int index;
  final List smartDevices;

  const CardWidget({
    super.key,
    required this.smartDevices,
    required this.index,
  });

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.smartDevices[widget.index][2]
            ? Colors.grey[400]
            : Colors.black,
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Image.asset(
                widget.smartDevices[widget.index][1],
                height: 60,
                color: widget.smartDevices[widget.index][2]
                    ? Colors.black
                    : Colors.white,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    widget.smartDevices[widget.index][0],
                    style: TextStyle(
                      color: widget.smartDevices[widget.index][2]
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: pi / 2,
                  child: Switch(
                    activeColor: Colors.white,
                    inactiveTrackColor: widget.smartDevices[widget.index][2]
                        ? Colors.white
                        : Colors.black,
                    value: widget.smartDevices[widget.index][2],
                    onChanged: (value) {
                      setState(() {});
                      widget.smartDevices[widget.index][2] =
                          !widget.smartDevices[widget.index][2];
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
