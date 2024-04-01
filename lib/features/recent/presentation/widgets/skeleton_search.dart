import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonSearch extends StatelessWidget {
  const SkeletonSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Skeletonizer(
      containersColor: Colors.white,
      justifyMultiLineText: false,
      textBoneBorderRadius: TextBoneBorderRadius.fromHeightFactor(0.5),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          child: Wrap(
            runSpacing: 12,
            children: <Widget>[
              Bone.text(
                fontSize: 45,
                width: 140,
              ),
              Bone.multiText(
                lines: 7,
                width: 350,
              ),
              Wrap(
                spacing: 8,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Icon(Icons.thumb_up),
                  Bone.text(
                    width: 50,
                  ),
                  Icon(Icons.thumb_down),
                  Bone.text(
                    width: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
