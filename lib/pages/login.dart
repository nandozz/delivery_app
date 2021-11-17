import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constant.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kHeaderColor,
                fontSize: kHeaderSize,
                fontWeight: kHeaderWeight,
              ),
            ),
            SizedBox(
              height: 55,
            ),
            SvgPicture.asset("assets/Login.svg"),
            Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                  decoration: InputDecoration(
                    labelText: "username",
                    labelStyle: TextStyle(color: kDarkYellow),
                    prefixIcon: Icon(
                      Icons.person,
                      color: kDarkYellow,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                  decoration: InputDecoration(
                    labelText: "phone number",
                    labelStyle: TextStyle(color: kDarkYellow),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: kDarkYellow,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                child: Text("Login"),
                onPressed: () {
                  Get.toNamed('/catalog');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
