import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/galaxy.jpg'),
        fit: BoxFit.cover,
      )),
      child: SafeArea(
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
          child: Container(
            // margin: EdgeInsets.only(
            //     top: MediaQuery.of(context).size.height * 0.3),

            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
            ),
            child: Stack(children: [
              Positioned(
                right: MediaQuery.of(context).size.width / 2,
                top: 0,
                child: Center(
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 44,
                      backgroundImage: NetworkImage(
                        'https://img.freepik.com/premium-psd/mercury-planet-concept-isolated-transparent-background_879541-678.jpg',
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'title',
                    style: TextStyle(color: Colors.white),
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
                            Icons.badge_outlined,
                            color: Colors.white,
                            size: 29,
                          ),
                          Text(
                            '''Mass
                            (10 kg)''',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            '5.97',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.badge_outlined,
                            color: Colors.white,
                            size: 29,
                          ),
                          Text(
                            '''Mass
                            (10 kg)''',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            '5.97',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.badge_outlined,
                            color: Colors.white,
                            size: 29,
                          ),
                          Text(
                            '''Mass
                            (10 kg)''',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Text(
                            '5.97',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          )
                        ],
                      )
                    ],
                  )),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.badge_outlined,
                                color: Colors.white,
                                size: 29,
                              ),
                              Text(
                                '''Mass
                            (10 kg)''',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '5.97',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.badge_outlined,
                                color: Colors.white,
                                size: 29,
                              ),
                              Text(
                                '''Mass
                            (10 kg)''',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '5.97',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.badge_outlined,
                                color: Colors.white,
                                size: 29,
                              ),
                              Text(
                                '''Mass
                            (10 kg)''',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                '5.97',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              )
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
