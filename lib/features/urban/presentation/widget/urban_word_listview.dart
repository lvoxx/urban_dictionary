import 'package:flutter/material.dart';

class UrbanWordListView extends StatelessWidget {
  const UrbanWordListView({
    required this.itemToBuild,
    required this.itemToSeperate,
    required this.itemCount,
    super.key,
    this.scrollController,
    this.scrollPhysics,
  });
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final Widget Function(BuildContext, int) itemToBuild;
  final Widget Function(BuildContext, int) itemToSeperate;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: scrollPhysics,
      controller: scrollController,
      itemBuilder: itemToBuild,
      separatorBuilder: itemToSeperate,
      itemCount: itemCount,
    );
  }
}
