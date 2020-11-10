import 'package:flutter/material.dart';
import 'package:get_post/User.dart';

class UserDetail extends StatelessWidget {
  final User user;

  UserDetail({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding:
            const EdgeInsets.only(left: 5, top: 5, right: 60, bottom: 5),
            child: Text(
              'User',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "message: " + user.message,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 5),
            child: Text(
              "User Id: " + user.userId,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 5),
            child: Text(
              "User Name: " + user.name,
              style: TextStyle(
                fontSize: 16,
                //fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 5),
            child: Text(
              "Email: " + user.email,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 5),
            child: Text(
              "UserType: " + user.userType,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 5),
            child: Text(
              "Address: " + user.address,
              style: TextStyle(
                fontSize: 16,
                //fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 5),
            child: Text(
              "Phone: " + user.phone,
              style: TextStyle(
                fontSize: 16,
                //fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 5),
            child: Text(
              "Gender: " + user.gender,
              style: TextStyle(
                fontSize: 16,
                //fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 5),
            child: Text(
              "Status: " + user.status,
              style: TextStyle(
                fontSize: 16,
                //fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),

        ],
      ),
    );
  }
}