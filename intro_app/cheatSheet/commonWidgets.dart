import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String inputStr = '';
  final textCtrl = TextEditingController();
  bool enabled = false;
  bool expanded = false;
  bool checked = false;
  String radioValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Widget Section'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Write here'),
              onChanged: (textInput) {
                setState(() {
                  inputStr = textCtrl.text.length.toString();
                });
              },
              controller: textCtrl,
            ),
            Text(inputStr),
            Switch(
              activeColor: Colors.green,
              activeTrackColor: Colors.greenAccent,
              value: enabled,
              onChanged: (val) {
                setState(
                  () {
                    enabled = val;
                  },
                );
              },
            ),
            ExpansionPanelList(
              expansionCallback: (i, bool val) {
                setState(() {
                  // enabled
                  expanded = !val;
                });
              },
              children: [
                ExpansionPanel(
                  body: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text('yo'),
                  ),
                  headerBuilder: (context, bool val) {
                    return Center(
                      child: Text(
                        'Tap here',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    );
                  },
                  isExpanded: expanded,
                ),
              ],
            ),
            Checkbox(
              value: checked,
              onChanged: (val) {
                setState(() {
                  checked = val!;
                });
              },
              activeColor: Colors.red,
            ),
            Row(
              children: [
                Radio(
                  value: 'Male',
                  groupValue: radioValue,
                  onChanged: (val) {
                    setRadioValue(val);
                  },
                  activeColor: Colors.red,
                ),
                Radio(
                  value: 'FeMale',
                  groupValue: radioValue,
                  onChanged: (val) {
                    setRadioValue(val);
                  },
                  activeColor: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  setRadioValue(value) {
    setState(() {
      radioValue = value!;
    });
  }
}

// setRadioValue(value){
//   set
// }