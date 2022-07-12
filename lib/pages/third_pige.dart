import 'package:flutter/material.dart';
import 'package:mobile_api/shared/theme.dart';
import 'package:mobile_api/widgets/StatusBar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class third extends StatefulWidget {
  third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  final String apiUrl = "https://reqres.in/api/users?per_page=15";
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage(snapshot.data[index]['avatar']),
                      ),
                      title: Text(snapshot.data[index]['first_name'] +
                          " " +
                          snapshot.data[index]['last_name']),
                      subtitle: Text(snapshot.data[index]['email']),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
