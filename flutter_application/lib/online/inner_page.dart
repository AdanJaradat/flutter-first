import 'package:flutter/material.dart';

class InnerPage extends StatelessWidget {
  InnerPage({required this.title, super.key});
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(
                      side: BorderSide(color: Colors.black, width: 1)),
                  backgroundColor: Colors.black.withOpacity(.3),
                  minimumSize: Size(60, 60)),
              onPressed: () {},
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
              ))
        ],
        leadingWidth: 70,
        leading: Builder(builder: (context) {
          return ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(
                      side: BorderSide(color: Colors.black, width: 1)),
                  backgroundColor: Colors.black.withOpacity(.3),
                  minimumSize: Size(60, 60)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ));
        }),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/galaxy.jpg'),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: Stack(clipBehavior: Clip.none, children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 3.1),
              padding: EdgeInsets.all(23),
              height: (MediaQuery.of(context).size.height / 2) + 70,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 50,
                        spreadRadius: 20,
                        offset: Offset(50, 50))
                  ],
                  borderRadius: BorderRadius.vertical(top: Radius.circular(60)),
                  color: Colors.black.withOpacity(0.5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.nine_k_outlined,
                                color: Colors.white,
                                size: 50,
                              ),
                              Text(
                                'Mass',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '(10^24 kg)',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '5.97',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                            ]),
                        SizedBox(width: 30),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.nine_k_rounded,
                                color: Colors.white,
                                size: 50,
                              ),
                              Text(
                                'Gravity',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '(m/s2)',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '5.97',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                            ]),
                        SizedBox(width: 30),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.wb_sunny_outlined,
                                color: Colors.white,
                                size: 50,
                              ),
                              Text(
                                'Day',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '(hour)',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '24',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.rocket_launch_outlined,
                                color: Colors.white,
                                size: 50,
                              ),
                              Text(
                                'Mass',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '(10^24 kg)',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '5.97',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                            ]),
                        SizedBox(width: 30),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.thermostat_sharp,
                                color: Colors.white,
                                size: 50,
                              ),
                              Text(
                                'Gravity',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '(m/s2)',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '5.97',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                            ]),
                        SizedBox(width: 30),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.wb_sunny_outlined,
                                color: Colors.white,
                                size: 50,
                              ),
                              Text(
                                'Day',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '(hour)',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '24',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                            ]),
                      ],
                    ),
                  ),
                  Container(
                      height: 30,
                      width: 140,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.purple,
                            Colors.blue.shade100,
                          ]),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                        'Vist',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))),
                ],
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 2 -
                  50, // Center horizontally
              // top: MediaQuery.of(context).size.height / 2 -
              //     50, // Center vertically

              top: MediaQuery.of(context).size.height / 2 - 252,
              child: CircleAvatar(
                radius: 63,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 62,
                  backgroundImage: NetworkImage(
                    'https://img.freepik.com/premium-psd/mercury-planet-concept-isolated-transparent-background_879541-678.jpg',
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
