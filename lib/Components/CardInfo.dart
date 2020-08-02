import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:roncv/Styles/fontsStyling.dart';

class CardInfo extends StatelessWidget {
  final String imageBannerLocation;
  final String mainTitle;
  final String positionTitle;
  final String dates;
  final String location;
  final List<Widget> listOfWidgetsToShowWhenExpand;

  CardInfo(
      {this.imageBannerLocation,
      this.mainTitle,
      this.positionTitle,
      this.dates,
      this.location,
      this.listOfWidgetsToShowWhenExpand});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ExpandableNotifier(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                clipBehavior: Clip.antiAlias,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        child: Image.asset(
                          this.imageBannerLocation,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      ScrollOnExpand(
                        scrollOnExpand: true,
                        scrollOnCollapse: false,
                        child: ExpandablePanel(
                          theme: const ExpandableThemeData(
                            iconSize: 35.0,
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            tapBodyToCollapse: true,
                            tapHeaderToExpand: true,
                            tapBodyToExpand: true,
                          ),
                          header: Column(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(this.mainTitle, style: cvHeaderTitle),
                              Text(this.positionTitle, style: cvHeaderSubTitle),
                              Text(this.dates, style: cvHeaderSub2Title),
                              Text(this.location, style: cvHeaderSub2Title),
                            ],
                          ),
                          collapsed: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Click to find out more...",
                                style: cvHeaderSub2Title,
                                textAlign: TextAlign.center,
                                softWrap: true,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          expanded: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: this.listOfWidgetsToShowWhenExpand,
                          ),
                          builder: (_, collapsed, expanded) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Expandable(
                                collapsed: collapsed,
                                expanded: expanded,
                                theme: const ExpandableThemeData(
                                    crossFadePoint: 0),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
