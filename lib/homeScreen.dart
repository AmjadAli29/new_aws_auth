import 'dart:html';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';

class homeScreen extends StatefulWidget {
  final FirebaseUser user;
  homeScreen({this.user});

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var _tokenid;

  getid() {
    widget.user.getIdToken().then((token) {
      //assert(token != null);
      setState(() {
        _tokenid = token.token;
      });
      print('' + _tokenid);
    });
  }

  sendOpenId(String idtoken) {
    // Amplify.addPlugin(AmplifyAuthCognito(Amplify.Auth.signInWithWebUI(provider: _tokenid)));
    // var client = Amplify.Auth.addPlugin("awscloudformation").
    // var mobileClient = Amplify.Auth.signInWithWebUI(provider: _tokenid);

    var client = Amplify.Auth.signInWithWebUI(provider: _tokenid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "You are logged in succesfully",
              style: TextStyle(color: Colors.lightBlue, fontSize: 32),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "token id is: $_tokenid",
              style: TextStyle(color: Colors.green),
            ),
            SizedBox(
              height: 16,
            ),
            RaisedButton(onPressed: getid, child: Text("ok"))
          ],
        ),
      ),
    );
  }
}
