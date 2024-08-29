//import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
      home: NeuomrphicApp(),
      themeMode: ThemeMode.light,
      theme: NeumorphicThemeData(
        baseColor: Color.fromARGB(255, 212, 195, 195),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color.fromARGB(255, 70, 66, 66),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
    );
  }
}

class NeuomrphicApp extends StatefulWidget {
  const NeuomrphicApp({super.key});

  @override
  State<NeuomrphicApp> createState() => _NeuomrphicAppState();
}

class _NeuomrphicAppState extends State<NeuomrphicApp> {
  int radio1 = 1;
  int radio2 = 2;
  int? radioGroupVal = 1;
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Neumorphic App'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //neumorphic container
              Neumorphic(
                child: Text('Neumorphic container'),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                style: NeumorphicStyle(
                    depth: 8,
                    color: Colors.black54,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(12))),
              ),
              SizedBox(
                height: 7,
              ),
              NeumorphicButton(
                child: Text('click'),
                onPressed: () {},
                style: NeumorphicStyle(color: Colors.black),
              ),
              SizedBox(height: 7),
              NeumorphicRadio<int>(
                value: 1,
                groupValue: radioGroupVal,
                onChanged: (value) {
                  setState(() {
                    radioGroupVal = value!;
                  });
                },
                style: NeumorphicRadioStyle(selectedDepth: 5),
                child: Text('Radio 1'),
              ),
              SizedBox(height: 7),
              NeumorphicRadio<int>(
                value: 2,
                groupValue: radioGroupVal,
                onChanged: (value) {
                  setState(() {
                    radioGroupVal = value!;
                  });
                },
                style: NeumorphicRadioStyle(selectedDepth: 5),
                child: Text('Radio 2'),
              ),
              SizedBox(height: 7),
              NeumorphicCheckbox(
                  value: check,
                  onChanged: (value) {
                    setState(() {
                      check = value!;
                    });
                  }),
              SizedBox(height: 7),
              NeumorphicButton(
                onPressed: () {
                  print("onClick");
                },
                style: NeumorphicStyle(
                  shape: NeumorphicShape.flat,
                  boxShape: NeumorphicBoxShape.circle(),
                ),
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.favorite_border,
                  //color: _iconsColor(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
