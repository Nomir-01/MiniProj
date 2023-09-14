import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miniproj/CustomWidgets/CustomProductTopWidget.dart';
import 'package:miniproj/CustomWidgets/CustomTopWidget.dart';

class ProductWidget extends StatefulWidget {
  final List ProductList;
  final String SubHeading;
  final int Index;
  const ProductWidget({
    super.key,
    required this.ProductList,
    required this.Index,
    required this.SubHeading,
  });

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomProductTopWidget(
      Title1: widget.ProductList[widget.Index]["Name"],
      Title2: widget.SubHeading,
    );
  }
}
