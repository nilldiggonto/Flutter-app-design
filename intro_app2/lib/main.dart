import 'package:flutter/material.dart';
import 'package:intro_app2/ui/customInput.dart';

void main() {
  runApp(MaterialApp(
    title: 'Login UI',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.teal,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              widthFactor: 0.6,
              heightFactor: 0.6,
              child: Material(
                borderRadius: BorderRadius.all(
                  Radius.circular(200),
                ),
                color: Color.fromRGBO(255, 255, 255, 0.4),
                child: Container(
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 400,
                height: 400,
                // color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          'https://i.pinimg.com/originals/d3/cd/15/d3cd15c387c8c4ab27874bd66018d230.png',
                          width: 80,
                          height: 80,
                        ),
                      ),
                    ),
                    CustomInput(
                        Icon(Icons.person, color: Colors.white), 'username'),
                    // SizedBox(
                    //   height: 10.0,
                    // ),
                    CustomInput(
                        Icon(Icons.lock, color: Colors.white), 'password'),

                    Container(
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
