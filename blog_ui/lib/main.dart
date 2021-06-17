import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'BigShoulder'),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var image_one =
      'https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Blog UI',
            style: TextStyle(
              fontFamily: 'BigShoulder',
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            color: Colors.black,
            iconSize: 25.0,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.black,
              iconSize: 25,
            ),
            // Icon
          ],
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          children: [
            Container(
              height: 125.0,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(10.0),
                children: [
                  Column(
                    children: [
                      Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          color: Colors.orange,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 7.0,
                      ),
                      Text(
                        'Add to',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  listItem(
                      'https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
                      'Nill',
                      true),
                  SizedBox(
                    width: 15.0,
                  ),
                  listItem(
                      'https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
                      'Nill',
                      false),
                  SizedBox(
                    width: 15.0,
                  ),
                  listItem(
                      'https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
                      'Nill',
                      false),
                  SizedBox(
                    width: 15.0,
                  ),
                  listItem(
                      'https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
                      'Nill',
                      false),
                  SizedBox(
                    width: 15.0,
                  ),
                  listItem(
                      'https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
                      'Nill',
                      true),
                  SizedBox(
                    width: 15.0,
                  ),
                  listItem(
                      'https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
                      'Nill',
                      true),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            firstRow(image_one, image_one, image_one),
          ],
        ));
  }

  Widget firstRow(String img1, String img2, String avatarimg) {
    return Container(
      height: 250.0,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Column(
              children: [
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(img1),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text('Something is here, that i am writing'),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: NetworkImage(avatarimg),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'First Text',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.orange),
                        ),
                        Text(
                          '10:51PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(img2),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // SizedBox(w)
        ],
      ),
    );
  }

  Widget listItem(String img, String name, bool available) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              // color: Colors.orange,
              image: DecorationImage(
                image: NetworkImage(img),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 7.0,
        ),
        Row(
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 4),
            available
                ? Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.green,
                    ),
                  )
                : Container(),
          ],
        ),
      ],
    );
  }
}
