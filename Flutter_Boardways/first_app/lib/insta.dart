import 'package:flutter/material.dart';

class InstaPage extends StatefulWidget {
  @override
  State<InstaPage> createState() => _InstaPageState();
}

class _InstaPageState extends State<InstaPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(
                      "https://undsgn.com/wp-content/uploads/2018/06/hulgjayakfo.jpg"),
                ),
                shape: BoxShape.circle,
              ),
              height: 150,
              width: 150,
            ),
            Container(
              child: Text(""" Smiley
              \nHey what's up:)
              \nFrom Nepal."""),
              height: 150,
              width: 150,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              color: Colors.white,
            ),
            // Container(
            //     child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     Container(
            //       margin: EdgeInsets.all(10),
            //       decoration: BoxDecoration(color: Colors.pink),
            //       height: 150,
            //       width: 150,
            //     )
            //   ],
            // )),
            // Container(
            //   color: Colors.blue,
            //   height: 150,
            //   width: 150,
            // ),
            TabBar(
              controller: tabController,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.black.withOpacity(0.3),
              labelColor: Colors.yellow,
              tabs: [
                Icon(
                  Icons.home,
                  size: 35,
                ),
                Icon(
                  Icons.list,
                  size: 35,
                ),
                Icon(
                  Icons.post_add,
                  size: 35,
                ),
                Icon(
                  Icons.search,
                  size: 35,
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
