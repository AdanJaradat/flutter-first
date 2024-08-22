import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ImgSlider(),
    );
  }
}

class ImgSlider extends StatefulWidget {
  const ImgSlider({super.key});

  @override
  State<ImgSlider> createState() => _ImgSliderState();
}

// carousel_slider package
class _ImgSliderState extends State<ImgSlider> {
  List<String> imgUrl = [
    'https://media.istockphoto.com/id/1202754535/vector/hand-drawn-cartoon-kids-jumping-together-outdoor.jpg?s=612x612&w=0&k=20&c=qIEl1U6zDZWG6vwRIdnfM5OQzuAVxuur3GVPJIJ-YMQ=',
    'https://media.istockphoto.com/id/1275089443/video/children-playing-with-funny-animals.jpg?s=640x640&k=20&c=o1zD8-WEbHt4XdpWHMPEpTa089MenK-wk6U7qV3JKNQ=',
    'https://media.istockphoto.com/id/638516524/vector/active-kids.jpg?s=612x612&w=0&k=20&c=xCMTd0QpvV1DR9Akx7qRXIfzv00jM4VYkA6liMSSG4A=',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Slider'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (currentIndex == 0) {
                        currentIndex = currentIndex;
                      } else {
                        currentIndex -= 1;
                      }
                    });
                  },
                  icon: Icon(Icons.arrow_back)),
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.28,
                child: Image.network(imgUrl[currentIndex]),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (currentIndex == imgUrl.length - 1) {
                        currentIndex = currentIndex;
                      } else {
                        currentIndex += 1;
                      }
                    });
                  },
                  icon: Icon(Icons.arrow_forward)),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.width * 0.1,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                itemCount: imgUrl.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.width * 0.1,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        icon: Icon(Icons.circle),
                        color:
                            currentIndex == index ? Colors.blue : Colors.grey,
                        iconSize: 24,
                        //iconSize: imgUrl.length * 0.999,
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
