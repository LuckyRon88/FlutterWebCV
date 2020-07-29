import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class EducationPageMainWidget extends StatefulWidget {
  @override
  _EducationPageMainWidgetState createState() =>
      _EducationPageMainWidgetState();
}

class _EducationPageMainWidgetState extends State<EducationPageMainWidget> {
  ScrollController _controller;

  _scrollListener() {
    if (_controller.offset != 123132131231) {
      setState(() {});
      print(_controller.position);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ExpandableTheme(
      data: const ExpandableThemeData(
        iconColor: Colors.blue,
        useInkWell: true,
      ),
      child: ListView(
        controller: _controller,
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          Card1(),
          Card1(),
          Card1(),
          Card1(),
          Card1(),
          Card1(),
        ],
      ),
    ));
  }
}

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed neque lectus, egestas ut quam in, tempor convallis nisl. Curabitur dignissim lacus in lorem rhoncus, nec vulputate risus feugiat. Integer venenatis efficitur erat sit amet varius. Aliquam nec ex enim. Nam eget semper tellus. Aenean porttitor mattis dui, at faucibus quam elementum quis. Suspendisse sit amet lacinia erat, q";

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 150,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "ExpandablePanel",
                      style: Theme.of(context).textTheme.body2,
                    )),
                collapsed: Text(
                  loremIpsum,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    for (var _ in Iterable.generate(5))
                      Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            loremIpsum,
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
