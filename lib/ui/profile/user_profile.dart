import 'package:flutter/material.dart';
import 'package:github_app/models/user.dart';

class UserProfile extends StatelessWidget {
  final UserModel userModel;

  UserProfile(this.userModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Column(
            children: <Widget>[
              _gradientBox(),
              _whiteBox(),
            ],
          ),
          SizedBox.expand(
            child: Card(
              margin: EdgeInsets.fromLTRB(16, 132, 16, 16),
              child: _userInfo(),
            ),
          )
        ],
      ),
    );
  }

  Widget _userInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 24),
          width: 150.0,
          height: 150.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  'https://homepages.cae.wisc.edu/~ece533/images/girl.png',
                ),
              )),
        ),
        Container(
          margin: EdgeInsets.only(top: 12),
          child: Text(
            'User Name Here',
            style: TextStyle(fontSize: 24),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            'User Location Here',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ),
        Container(
          child: Card(
            elevation: 2,
            child: Column(
              children: <Widget>[
                Text(
                  'Website',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _gradientBox() {
    return Expanded(
      flex: 2,
      child: SizedBox.expand(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.purple[800],
            Colors.purple[700],
            Colors.purple[600],
            Colors.purple[400],
          ])),
        ),
      ),
    );
  }

  Widget _whiteBox() {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
      ),
    );
  }
}
