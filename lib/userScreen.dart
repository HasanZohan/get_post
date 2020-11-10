import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get_post/userDetail.dart';
import 'package:get_post/User.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  //var users = List<User>();

  Future<List<User>> _getUsers() async {
    var data = await http.get(
        "http://creativeitem.com/demo/test2/api/user/userdata?auth_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJtZXNzYWdlIjoiTG9nZ2VkaW4gc3VjY2Vzc2Z1bGx5IiwidXNlcl9pZCI6IjEiLCJuYW1lIjoiSm9obiBEb2UiLCJlbWFpbCI6ImFkbWluQGV4YW1wbGUuY29tIiwidXNlcl90eXBlIjoiYWRtaW4iLCJhZGRyZXNzIjpudWxsLCJwaG9uZSI6bnVsbCwiZ2VuZGVyIjpudWxsLCJzdGF0dXMiOiIxIiwidmFsaWRpdHkiOnRydWV9.fk5OWOPPuiU8O5bs082Q7vEAUbCO5-2JQPYW5pL-uJ4");
    var jsonData = json.decode(data.body);
    print(jsonData);
    List<User> users = [];

    for (var u in jsonData) {
      User user = User(
          u["message"],
          u["userId"],
          u["name"],
          u["email"],
          u["userType"],
          u["address"],
          u["phone"],
          u["gender"],
          u["status"],
          u["validity"]);
      users.add(user);
    }
    print(users.length);

    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'User',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        )),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(
                  child: Text("Loading..."),
                ),
              );
            } else
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: ListTile(
                      title: Text(snapshot.data[index].name),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  UserDetail(user: snapshot.data[index])));
                    },
                  );
                },
              );
          },
        ),
      ),
    );
  }
}

class User {
  final String message;
  final String userId;
  final String name;
  final String email;
  final String userType;
  final String address;
  final String phone;
  final String gender;
  final String status;
  final bool validity;

  User(this.message, this.userId, this.name, this.email, this.userType,
      this.address, this.phone, this.gender, this.status, this.validity);
}
