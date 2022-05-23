import 'dart:convert';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter_json"),
      ),
      body: Container(
        child: Center(
            child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('load_json/person.json'),
          builder: (context, snapshot) {
           var mydata = json.decode(snapshot.data.toString());
                  //var mydata = JsonDecoder().convert(snapshot.data.toString());

            return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("name " + mydata[index]['name']),
                        Text("age " + mydata[index]['age']),
                        Text("gender " + mydata[index]['gender'])
                      ],
                    ),
                  );
                },
                itemCount: mydata == null ? 0 : mydata.length);
          },
        )),
      ),
    );
  }
}
