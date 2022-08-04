import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class AppMapCartInfo extends StatelessWidget {
  const AppMapCartInfo({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      // panel with centered text
      panel: const Center(
        child: Text("This is the sliding Widget"),
      ),
      // collapsed with container
      collapsed: Container(
        color: Colors.blueGrey,
        child: const Center(
          child: Text(
            "This is the collapsed Widget",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      // main body
      body: const Center(
        child: Text(
            "This is the Widget behind the sliding panel"),
      ),
    );
  }
}
