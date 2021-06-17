import 'package:flutter/material.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=653&q=80'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Delivery Service Order Now',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Nearby Restaurants \n location',
                style: TextStyle(
                  color: Colors.white,
                  height: 1.4,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Colors.amber,
                    Colors.orange,
                  ]),
                ),
                child: MaterialButton(
                  onPressed: () {
                    print('button pressed');
                  },
                  minWidth: double.infinity,
                  child: Text(
                    'Start',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Align(
                child: Text(
                  'Deliver to your door 24/7',
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
