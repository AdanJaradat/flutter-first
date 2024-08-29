import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.elasticOut);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fouthn page'),
      ),
      body: Center(
        child: Hero(
          tag: 'tag4',
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.rotate(
                angle: _animation.value,
                child: Container(
                  width: 300,
                  height: 300,
                  child: Image.network(
                    'https://www.nerdwallet.com/assets/blog/wp-content/uploads/2018/08/GettyImages-638932749-350x350.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
