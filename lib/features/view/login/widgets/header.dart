import 'package:flutter/material.dart';

import '../profile.dart';

class Header extends StatelessWidget {
  final Profile profile;
  const Header({
    Key key,
    this.profile,
  }) : super(key: key);

  const Header.tutor({
    Key key,
    this.profile = Profile.tutor,
  }) : super(key: key);

  const Header.guardian({
    Key key,
    this.profile = Profile.guardian,
  }) : super(key: key);

  const Header.student({
    Key key,
    this.profile = Profile.student,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 300,
        padding: EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90),
              bottomRight: Radius.circular(90),
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 40, spreadRadius: 10, color: Colors.grey[200])
            ]),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 150,
            width: 150,
            child: Image.asset(
              profileAvatar(profile),
              fit: BoxFit.contain,
            ),
          ),
        ));
  }

  String profileAvatar(Profile profile) {
    switch (profile) {
      case Profile.student:
        return "assets/images/boy.png";
      case Profile.guardian:
        return "assets/images/guardian.png";
      case Profile.tutor:
        return "assets/images/tutor.png";

      default:
        return "assets/images/boy.png";
    }
  }
}
