import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Clock',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  // Animation? animation;

  _currentTime() {
    return '${DateTime.now().hour} : ${DateTime.now().minute}';
  }

  String? img =
      'https://img.pngio.com/match-stick-png-transparent-image-png-transparent-best-stock-photos-stick-png-1024_768.png';

  @override
  void initState() {
    super.initState();
    var animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    animationController.addListener(() {
      setState(() {});
    });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    var animationController;
    var animation = CurvedAnimation(
        parent: animationController, curve: Curves.elasticInOut);
    var newanimation = Tween(begin: -0.5, end: 0.5).animate(animation);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Clock')),
        backgroundColor: Colors.teal,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.teal,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: [
              Material(
                borderRadius: BorderRadius.all(
                  Radius.circular(320.0),
                ),
                elevation: 10.0,
                color: Colors.teal.shade900,
                child: Container(
                  width: 320,
                  height: 320,
                  child: Center(
                    child: Text(
                      _currentTime(),
                      style: TextStyle(
                        fontSize: 70.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Transform(
                alignment: FractionalOffset(0.5, 0.0),
                transform: Matrix4.rotationZ(newanimation.value),
                child: Container(
                  child: Image.network(img!),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
