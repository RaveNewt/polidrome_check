import 'package:flutter/material.dart';
import 'package:mobile_api/shared/theme.dart';
import 'package:mobile_api/widgets/StatusBar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Third_Page extends StatefulWidget {
  Third_Page({Key? key}) : super(key: key);

  @override
  State<Third_Page> createState() => _Third_PageState();
}

class _Third_PageState extends State<Third_Page> {
  final String apiUrl = "https://reqres.in/api/users?per_page=15";
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    Widget Header() {
      return Container(
        margin: EdgeInsets.only(top: 23),
        padding: EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              icon: Image.asset(
                'assets/Stroke_1.png',
                width: 18,
                height: 18,
              ),
            ),
            SizedBox(width: 84),
            Center(
              child: Text(
                'Third Screen',
                style: textBlack.copyWith(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
          ),
          children: [
            StatusBar(),
            Header(),
            SizedBox(height: 222),
            Container(
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
            )
          ],
        ),
      ),
    );
  }
}
