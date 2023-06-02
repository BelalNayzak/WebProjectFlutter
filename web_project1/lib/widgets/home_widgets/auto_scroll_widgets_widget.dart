import 'package:flutter/material.dart';

class AutoScrollWidgetsWidget extends StatefulWidget {
  final double height;
  final List<Widget> items;

  const AutoScrollWidgetsWidget(
      {super.key, this.height = 100.0, required this.items});

  @override
  State<StatefulWidget> createState() => _AutoScrollWidgetsWidgetState();
}

class _AutoScrollWidgetsWidgetState extends State<AutoScrollWidgetsWidget>
    with SingleTickerProviderStateMixin {
  ScrollController scrollCtrl = ScrollController();
  late AnimationController animateCtrl;

  @override
  void dispose() {
    animateCtrl.dispose();
    super.dispose();
  }

  @override
  initState() {
    double offset = 0.0;
    super.initState();
    animateCtrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..addListener(() {
            if (animateCtrl.isCompleted) animateCtrl.repeat();
            offset += 1.0;
            if (offset - 1 > scrollCtrl.offset) {
              offset = 0.0;
            }
            setState(() {
              scrollCtrl.jumpTo(offset);
            });
          });
    animateCtrl.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1920,
      color: const Color.fromRGBO(25, 26, 35, 0.37),
      height: widget.height,
      //padding: const EdgeInsets.all(4.0),
      child: Center(
        child: ListView(
          controller: scrollCtrl,
          scrollDirection: Axis.horizontal,
          children: widget.items,
        ),
      ),
    );
  }
}
