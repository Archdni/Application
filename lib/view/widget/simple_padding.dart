import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaddingSimple extends StatelessWidget {
  final Widget child;
  PaddingSimple({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: child,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    );
  }
}
