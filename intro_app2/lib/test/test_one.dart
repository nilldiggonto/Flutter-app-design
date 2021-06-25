import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My app',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row and Colum'),
      ),
      body: Container(
        color: Colors.green,
        width: 500,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment,
          children: [
            Text(
              'text one',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'text two',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
        // alignment: ,

        // ============== To center the body items =================
        // child: Center(
        //   child: Padding(
        //     padding: const EdgeInsets.all(10.0),
        //     child: Text(
        //       'body area',
        //       style: TextStyle(fontSize: 30),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}

// ======================= Creating simple scaffold ====================

// class HomePage extends StatelessWidget {
//   // const HomePage({ Key? key }) : super(key: key);
// //
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Testing App',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Container(
//         child: Center(
//           child: Text(
//             'This is body',
//             style: TextStyle(fontSize: 25),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

//==================== print a simple ugly text ============================
// class HomePage extends StatelessWidget {
//   // const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(
//         'this is text',
//         style: TextStyle(fontSize: 20, decoration: TextDecoration.none),
//       ),
//     );
//   }
// }
