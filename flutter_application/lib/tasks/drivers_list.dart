import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DriversList(),
    );
  }
}

class DriversList extends StatefulWidget {
  const DriversList({super.key});

  @override
  State<DriversList> createState() => _DriversListState();
}

class _DriversListState extends State<DriversList> {
  List data = [
    {
      'name': 'Ahmad Ali',
      'contry': 'Lahore , pakistan',
      'rate': '5.0(34)',
      'image': 'https://cdn-icons-png.flaticon.com/512/436/436299.png',
    },
    {
      'name': 'Amer Ali',
      'contry': 'Lahore , pakistan',
      'rate': '3.1(44)',
      'image': 'https://cdn-icons-png.flaticon.com/512/3048/3048127.png',
    },
    {
      'name': 'Hamza Ahmad',
      'contry': 'Lahore , pakistan',
      'rate': '4.1(46)',
      'image': 'https://cdn-icons-png.flaticon.com/512/436/436299.png',
    },
    {
      'name': 'Omar Khan',
      'contry': 'Lahore , pakistan',
      'rate': '4.5(18)',
      'image': 'https://cdn-icons-png.flaticon.com/512/3048/3048127.png',
    }
  ];
  Widget heartIcon = Icon(Icons.favorite_border);
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Drivers List',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 5,
        leadingWidth: MediaQuery.of(context).size.width * 0.2,
        leading: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_new),
                color: Colors.white),
            Text(
              'back',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.all<TextStyle>(
                TextStyle(color: Colors.white))),
        child: NavigationBar(
            backgroundColor: Colors.grey[800],
            elevation: 3,
            indicatorColor: Colors.black,
            selectedIndex: navIndex,
            onDestinationSelected: (value) {
              setState(() {
                navIndex = value;
              });
            },
            //overlayColor: WidgetStateProperty.all<Color>(Colors.black),
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  label: 'home'),
              NavigationDestination(
                  icon: Icon(
                    Icons.message_outlined,
                    color: Colors.white,
                  ),
                  label: 'message'),
              NavigationDestination(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  label: 'search'),
              NavigationDestination(
                  icon: Icon(
                    Icons.refresh,
                    color: Colors.white,
                  ),
                  label: 'refresh'),
              NavigationDestination(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  label: 'profile'),
            ]),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.black,
        child: ListView(
          children: [
            SizedBox(height: 15),
            Text(
              'Sort By',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: Text(
                    'Name',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: Text(
                    'Rating',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  child: Text(
                    'Jobs Done',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  physics: ScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.star),
                                    color: Colors.white,
                                  ),
                                  Text(
                                    data[index]['rate'],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                              Text(
                                data[index]['name'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          subtitle: Text(data[index]['contry'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                              data[index]['image'],
                            ),
                            radius: 50,
                          ),
                          trailing: IconButton(
                            onPressed: () {
                              setState(() {
                                heartIcon = Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                );
                              });
                            },
                            icon: heartIcon,
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          endIndent: 0,
                          indent: 0,
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
