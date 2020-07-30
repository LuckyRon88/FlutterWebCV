import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CardExpand extends StatelessWidget {
  final String shortText;
  final String longText;
  final String imageLocation;
  final Color cardColor;

  CardExpand(
      {this.shortText, this.longText, this.imageLocation, this.cardColor});
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
      child: Card(
        elevation: 0,
        color: this.cardColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(width: 2.0, color: Colors.black)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset(
                this.imageLocation,
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  iconColor: Colors.black,
                  iconSize: 30.0,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: RawMaterialButton(
                  mouseCursor: MaterialStateMouseCursor.clickable,
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Read More",
                      )),
                ),
                collapsed: Text(
                  shortText,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          longText,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        )),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
