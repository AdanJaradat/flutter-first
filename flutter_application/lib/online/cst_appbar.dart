import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 150),
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(22)),
        child: AppBar(
          toolbarHeight: 150,
          title: Transform.translate(
            offset: Offset(0, 15),
            child: Column(
              children: [
                Text(
                  'Milky Way',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 221, 216, 216),
                      fontSize: 10),
                ),
                Text(
                  'Solar System',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 27),
                ),
              ],
            ),
          ),
          centerTitle: true,
          // backgroundColor:
          //     Colors.transparent,
          backgroundColor:
              Colors.black.withOpacity(0.5), //fromARGB(12, 0, 0, 0),
          elevation: 20,
          leadingWidth: 70,
          leading: Transform.translate(
            offset: Offset(20, 15),
            child: Builder(builder: (context) {
              return Container(
                height: 70, width: 70,
                //margin: EdgeInsets.all(4),
                //margin: EdgeInsets.fromLTRB(5, 5, 2, 2),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 6,
                        backgroundColor: Colors.black.withOpacity(.3),
                        minimumSize: Size(70, 70),
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.black, width: 4))),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    child: Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    )),
              );
            }),
          ),
          actions: [
            Transform.translate(
              offset: Offset(-18, 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 6,
                    shape: CircleBorder(
                        side: BorderSide(color: Colors.black, width: 4)),
                    minimumSize: Size(70, 70),
                    backgroundColor: Colors.black.withOpacity(.3)),
                onPressed: () {},
                child: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 33,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
