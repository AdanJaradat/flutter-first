import 'package:flutter/material.dart';

class Fifth extends StatefulWidget {
  Fifth({super.key});

  @override
  State<Fifth> createState() => _FifthState();
}

class _FifthState extends State<Fifth> with SingleTickerProviderStateMixin {
  // with SingleTickerProviderStateMixin
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInExpo);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fifth Page'),
      ),
      body: Center(
        child: Hero(
          tag: 'tag5',
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Opacity(
                opacity: _animation.value,
                child: Container(
                  width: 300,
                  height: 300,
                  // color: Colors.red,
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
