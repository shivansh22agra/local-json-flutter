import 'package:flutter/material.dart';
import 'package:flutter_json/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      
    );
  }
}
// import 'dart:convert';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(new MaterialApp(
//     home: new MyApp(),
//   ));
// }

// class MyApp extends StatefulWidget {
//   @override
//   MyAppState createState() => new MyAppState();
// }

// class MyAppState extends State<MyApp> {
//  // List data;

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         appBar: new AppBar(
//           title: new Text("Load local JSON file"),
//         ),
//         body: new Container(
//           child: new Center(
//             // Use future builder and DefaultAssetBundle to load the local JSON file
//             child: new FutureBuilder(
//                 future: DefaultAssetBundle
//                     .of(context)
//                     .loadString('load_json/person.json'),
//                 builder: (context, snapshot) {
//                   // Decode the JSON
//                   var new_data = json.decode(snapshot.data.toString());

//                   return new ListView.builder(
//                     // Build the ListView
//                     itemBuilder: (BuildContext context, int index) {
//                       return new Card(
//                         child: new Column(
//                           crossAxisAlignment: CrossAxisAlignment.stretch,
//                           children: <Widget>[
//                             new Text("Name: " + new_data[index]['name']),
//                             new Text("Height: " + new_data[index]['height']),
//                             new Text("Mass: " + new_data[index]['mass']),
//                             new Text(
//                                 "Hair Color: " + new_data[index]['hair_color']),
//                             new Text(
//                                 "Skin Color: " + new_data[index]['skin_color']),
//                             new Text(
//                                 "Eye Color: " + new_data[index]['eye_color']),
//                             new Text(
//                                 "Birth Year: " + new_data[index]['birth_year']),
//                             new Text("Gender: " + new_data[index]['gender'])
//                           ],
//                         ),
//                       );
//                     },
//                     itemCount: new_data == null ? 0 : new_data.length,
//                   );
//                 }),
//           ),
//         ));
//   }
// }
