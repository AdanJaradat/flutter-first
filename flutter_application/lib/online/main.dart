import 'package:flutter/material.dart';
import 'package:flutter_application/online/btn_tab_bar.dart';
import 'package:flutter_application/online/inner_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
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
            backgroundColor: Colors.black.withOpacity(0.5),
            elevation: 20,
            leadingWidth: 70,
            leading: Transform.translate(
              offset: Offset(20, 15),
              child: Builder(builder: (context) {
                return Container(
                  height: 70,
                  width: 70,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          backgroundColor: Colors.black.withOpacity(.3),
                          minimumSize: Size(70, 70),
                          shape: CircleBorder(
                              side: BorderSide(color: Colors.black, width: 1))),
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
                          side: BorderSide(color: Colors.black, width: 1)),
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
      ),
      drawer: Drawer(
        elevation: 5,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/galaxy.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.8,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          BtnTabBar(
                            title: 'Earth',
                            imgUrl:
                                'https://img.freepik.com/premium-psd/mercury-planet-concept-isolated-transparent-background_879541-678.jpg',
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InnerPage(
                                            title: 'Earth',
                                          )));
                            },
                          ),
                          BtnTabBar(
                            title: 'Mars',
                            imgUrl:
                                'https://img.freepik.com/premium-psd/mercury-planet-concept-isolated-transparent-background_879541-678.jpg',
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InnerPage(
                                            title: 'Mars',
                                          )));
                            },
                          ),
                          BtnTabBar(
                            title: 'Mercury',
                            imgUrl:
                                'https://img.freepik.com/premium-psd/mercury-planet-concept-isolated-transparent-background_879541-678.jpg',
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InnerPage(
                                            title: 'Mercury',
                                          )));
                            },
                          ),
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.3),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                              child: Text(
                                'Planet of the day ',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                          SizedBox(height: 35),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 48,
                                  backgroundImage: NetworkImage(
                                    'https://img.freepik.com/premium-psd/mercury-planet-concept-isolated-transparent-background_879541-678.jpg',
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mars',
                                    maxLines: 6,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '''
          
                It’s dry, rocky,
                and bitter cold.
                The fourth planet from the Sun,
                Mars,is one of Earth\'s two 
                closest planetary neighbors 
                (Venus is the other).''',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ))),
              SizedBox(height: 15),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.3),
                  ),
                  child: Center(
                    child: Text('''
                  Mars is one of the most 
                  explored bodies in our solar system,
                  and it\'s the only planet where 
                  we\'ve sent rovers to explore 
                  the alien landscape.
                      ''', style: TextStyle(color: Colors.white)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        // borderRadius: BorderRadius.vertical(
        //   top: Radius.circular(30.0), // Set the radius here
        // ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black.withOpacity(.3),
          elevation: 5,
          onTap: (value) {},
          selectedItemColor: Colors.white,
          selectedIconTheme:
              IconThemeData(color: const Color.fromARGB(255, 11, 250, 238)),
          selectedLabelStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          unselectedItemColor: const Color.fromARGB(255, 233, 200, 247),
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.language), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'Favourits'),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: 'More'),
          ],
        ),
      ),
    );
  }
}
